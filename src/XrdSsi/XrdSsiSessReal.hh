#ifndef __XRDSSISESSREAL_HH__
#define __XRDSSISESSREAL_HH__
/******************************************************************************/
/*                                                                            */
/*                     X r d S s i S e s s R e a l . h h                      */
/*                                                                            */
/* (c) 2013 by the Board of Trustees of the Leland Stanford, Jr., University  */
/*   Produced by Andrew Hanushevsky for Stanford University under contract    */
/*              DE-AC02-76-SFO0515 with the Department of Energy              */
/*                                                                            */
/* This file is part of the XRootD software suite.                            */
/*                                                                            */
/* XRootD is free software: you can redistribute it and/or modify it under    */
/* the terms of the GNU Lesser General Public License as published by the     */
/* Free Software Foundation, either version 3 of the License, or (at your     */
/* option) any later version.                                                 */
/*                                                                            */
/* XRootD is distributed in the hope that it will be useful, but WITHOUT      */
/* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or      */
/* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public       */
/* License for more details.                                                  */
/*                                                                            */
/* You should have received a copy of the GNU Lesser General Public License   */
/* along with XRootD in a file called COPYING.LESSER (LGPL license) and file  */
/* COPYING (GPL license).  If not, see <http://www.gnu.org/licenses/>.        */
/*                                                                            */
/* The copyright holder's institutional names and contributor's names may not */
/* be used to endorse or promote products derived from this software without  */
/* specific prior written permission of the institution or contributor.       */
/******************************************************************************/

#include <string.h>
  
#include "XrdCl/XrdClFile.hh"
#include "XrdSsi/XrdSsiAtomics.hh"
#include "XrdSsi/XrdSsiEvent.hh"
#include "XrdSsi/XrdSsiResponder.hh"
#include "XrdSys/XrdSysPthread.hh"

class XrdSsiServReal;
class XrdSsiTaskReal;

class XrdSsiSessReal : public XrdSsiEvent, public XrdSsiResponder
{
public:

XrdSsiSessReal  *nextSess;

        bool     Execute(XrdSsiRequest *reqP);

        void     Finished(      XrdSsiRequest  &rqstR,
                          const XrdSsiRespInfo &rInfo,
                                bool            cancel=false);

        void     InitSession(XrdSsiServReal *servP,
                             const char     *sName,
                             int             uent,
                             bool            hold);

        void     Lock() {sessMutex.Lock();}

XrdSsiMutex     *MutexP() {return &sessMutex;}

        bool     Provision(XrdSsiRequest *reqP, const char *epURL);

        void     TaskFinished(XrdSsiTaskReal *tP);

        void     UnLock() {sessMutex.UnLock();}

        bool     XeqEvent(XrdCl::XRootDStatus *status,
                          XrdCl::AnyObject   **respP);

                 XrdSsiSessReal(XrdSsiServReal *servP,
                                const char     *sName,
                                int             uent,
                                bool            hold=false)
                               : XrdSsiEvent("SessReal"),
                                 sessMutex(XrdSsiMutex::Recursive),
                                 sessName(0), sessNode(0)
                                 {InitSession(servP, sName, uent, hold);}

                ~XrdSsiSessReal();

XrdCl::File         epFile;

private:
XrdSsiTaskReal  *NewTask(XrdSsiRequest *reqP);
void             RelTask(XrdSsiTaskReal *tP);
void             Shutdown(XrdCl::XRootDStatus &epStatus);
void             Unprovision();

XrdSsiMutex      sessMutex;
XrdSsiServReal  *myService;
XrdSsiTaskReal  *attBase;
XrdSsiTaskReal  *freeTask;
XrdSsiTaskReal  *pendTask;
XrdSsiRequest   *requestP;
char            *sessName;
char            *sessNode;
int16_t          nextTID;
int16_t          alocLeft;
int16_t          numAT;    // Number of active tasks
int16_t          uEnt;     // User index for scaling
bool             isHeld;
bool             inOpen;
bool             doStop;
};
#endif