
/***********************************************************************
* Copyright 1998-2020 CERN for the benefit of the EvtGen authors       *
*                                                                      *
* This file is part of EvtGen.                                         *
*                                                                      *
* EvtGen is free software: you can redistribute it and/or modify       *
* it under the terms of the GNU General Public License as published by *
* the Free Software Foundation, either version 3 of the License, or    *
* (at your option) any later version.                                  *
*                                                                      *
* EvtGen is distributed in the hope that it will be useful,            *
* but WITHOUT ANY WARRANTY; without even the implied warranty of       *
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        *
* GNU General Public License for more details.                         *
*                                                                      *
* You should have received a copy of the GNU General Public License    *
* along with EvtGen.  If not, see <https://www.gnu.org/licenses/>.     *
***********************************************************************/

#ifndef EVTBTOSLLFFNEW_HH
#define EVTBTOSLLFFNEW_HH

#include "EvtGenBase/EvtId.hh"

// Description: This is the NEW base class for form factors in b->sll transitions.

class EvtbTosllFFNew {
  public:
    virtual ~EvtbTosllFFNew(){};

    virtual void getScalarFF( EvtId /*parent*/, EvtId /*daught*/, double /*t*/,
                              double& /*fp*/, double& /*f0*/, double& /*ft*/ )
    {
        return;
    }

    virtual void getVectorFF( EvtId /*parent*/, EvtId /*daught*/, double /*t*/,
                              double& /*a1*/, double& /*a2*/, double& /*a0*/,
                              double& /*v*/, double& /*t1*/, double& /*t2*/,
                              double& /*t3*/ )
    {
        return;
    }

    virtual double getQuarkMass( int /*i*/ ) { return 0.0; }
};

#endif
