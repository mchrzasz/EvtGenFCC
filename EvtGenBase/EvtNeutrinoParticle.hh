
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

#ifndef EVTNEUTRINOPARTICLE_HH
#define EVTNEUTRINOPARTICLE_HH

#include "EvtGenBase/EvtDiracSpinor.hh"
#include "EvtGenBase/EvtParticle.hh"
class EvtId;
class EvtVector4R;

class EvtNeutrinoParticle : public EvtParticle {
  public:
    EvtNeutrinoParticle() = default;
    void init( EvtId part_n, const EvtVector4R& p4 ) override;
    EvtDiracSpinor spParentNeutrino() const override;
    EvtDiracSpinor spNeutrino() const override;
    EvtSpinDensity rotateToHelicityBasis() const override;
    EvtSpinDensity rotateToHelicityBasis( double alpha, double beta,
                                          double gamma ) const override;

  private:
    EvtDiracSpinor spinor_rest;
    EvtDiracSpinor spinor_parent;

    EvtNeutrinoParticle( const EvtNeutrinoParticle& n );
    EvtNeutrinoParticle& operator=( const EvtNeutrinoParticle& n );
};
#endif
