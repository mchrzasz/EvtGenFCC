
set(HEPMC2_ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../external/HepMC" CACHE STRING "Location of HepMC 2 installation")
set(PYTHIA8_ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../external/pythia$ENV{PYTHIAVER}" CACHE STRING "Location of Pythia8 installation")
set(PHOTOSPP_ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../external/PHOTOS" CACHE STRING "Location of Photos++ installation")
set(TAUOLAPP_ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../external/TAUOLA" CACHE STRING "Location of Tauola++ installation")

find_package(HepMC2 REQUIRED)
if(${EVTGEN_PYTHIA})
    find_package(Pythia8 REQUIRED)
endif()
if(${EVTGEN_PHOTOS})
    find_package(Photos++ REQUIRED)
endif()
if(${EVTGEN_TAUOLA})
    find_package(Tauola++ REQUIRED)
endif()
