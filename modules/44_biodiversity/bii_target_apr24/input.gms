*** |  (C) 2008-2025 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

scalars 
 s44_bii_lower_bound    Lower bound for BII (1)                                 / 0 /
 c44_bii_decrease       Implementation of lower bound for BII (binary)          / 1 /
 s44_target_year        Year in which the BII lower bound is reached  (1)       / 2100 /
 s44_start_year         Start year for interpolation towards BII lower bound (1)    / 2025 /
 s44_cost_bii_missing   Technical costs for missing BII increase (USD17MER per unit of BII)  / 1e+06 /
;


table fm_bii_coeff(bii_class44,potnatveg) Biodiversity Intactness Index coefficients (unitless)
$ondelim
$include "./modules/44_biodiversity/bii_target_apr24/input/f44_bii_coeff.cs3"
$offdelim
;

table f44_biome_area(j,biome44) Area of biome type in each spatial unit (mio. ha)
$ondelim
$include "./modules/44_biodiversity/bii_target_apr24/input/biorealm_biome.cs3"
$offdelim
;

parameters
f44_rr_layer(j) Range-rarity restoration prioritization layer (unitless)
/
$ondelim
$include "./modules/44_biodiversity/bii_target_apr24/input/rr_layer.cs2"
$offdelim
/
