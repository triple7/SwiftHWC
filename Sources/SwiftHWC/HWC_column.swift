//
//  HWC.swift
//  SwiftHWC
//
//  Created by Yuma decaux on 21/4/2025.
//


public enum HWC_column: String, Codable {
    case pName                     = "P_NAME"
    case pDetection                = "P_DETECTION"
    case pDiscoveryFacility        = "P_DISCOVERY_FACILITY"
    case pYear                     = "P_YEAR"
    case pUpdate                   = "P_UPDATE"
    case pMass                     = "P_MASS"
    case pMassErrorMin             = "P_MASS_ERROR_MIN"
    case pMassErrorMax             = "P_MASS_ERROR_MAX"
    case pMassLimit                = "P_MASS_LIMIT"
    case pMassOrigin               = "P_MASS_ORIGIN"
    case pRadius                   = "P_RADIUS"
    case pRadiusErrorMin           = "P_RADIUS_ERROR_MIN"
    case pRadiusErrorMax           = "P_RADIUS_ERROR_MAX"
    case pRadiusLimit              = "P_RADIUS_LIMIT"
    case pPeriod                   = "P_PERIOD"
    case pPeriodErrorMin           = "P_PERIOD_ERROR_MIN"
    case pPeriodErrorMax           = "P_PERIOD_ERROR_MAX"
    case pPeriodLimit              = "P_PERIOD_LIMIT"
    case pSemiMajorAxis            = "P_SEMI_MAJOR_AXIS"
    case pSemiMajorAxisErrorMin    = "P_SEMI_MAJOR_AXIS_ERROR_MIN"
    case pSemiMajorAxisErrorMax    = "P_SEMI_MAJOR_AXIS_ERROR_MAX"
    case pSemiMajorAxisLimit       = "P_SEMI_MAJOR_AXIS_LIMIT"
    case pEccentricity             = "P_ECCENTRICITY"
    case pEccentricityErrorMin     = "P_ECCENTRICITY_ERROR_MIN"
    case pEccentricityErrorMax     = "P_ECCENTRICITY_ERROR_MAX"
    case pEccentricityLimit        = "P_ECCENTRICITY_LIMIT"
    case pInclination              = "P_INCLINATION"
    case pInclinationErrorMin      = "P_INCLINATION_ERROR_MIN"
    case pInclinationErrorMax      = "P_INCLINATION_ERROR_MAX"
    case pInclinationLimit         = "P_INCLINATION_LIMIT"
    case pOmega                    = "P_OMEGA"
    case pOmegaErrorMin            = "P_OMEGA_ERROR_MIN"
    case pOmegaErrorMax            = "P_OMEGA_ERROR_MAX"
    case pOmegaLimit               = "P_OMEGA_LIMIT"
    case sName                     = "S_NAME"
    case sNameHD                   = "S_NAME_HD"
    case sNameHIP                  = "S_NAME_HIP"
    case sType                     = "S_TYPE"
    case sRA                       = "S_RA"
    case sDEC                      = "S_DEC"
    case sRAStr                   = "S_RA_STR"
    case sDECStr                  = "S_DEC_STR"
    case sMag                      = "S_MAG"
    case sMagErrorMin              = "S_MAG_ERROR_MIN"
    case sMagErrorMax              = "S_MAG_ERROR_MAX"
    case sDistance                 = "S_DISTANCE"
    case sDistanceErrorMin         = "S_DISTANCE_ERROR_MIN"
    case sDistanceErrorMax         = "S_DISTANCE_ERROR_MAX"
    case sTemperature              = "S_TEMPERATURE"
    case sTemperatureErrorMin      = "S_TEMPERATURE_ERROR_MIN"
    case sTemperatureErrorMax      = "S_TEMPERATURE_ERROR_MAX"
    case sTemperatureLimit         = "S_TEMPERATURE_LIMIT"
    case sMass                     = "S_MASS"
    case sMassErrorMin             = "S_MASS_ERROR_MIN"
    case sMassErrorMax             = "S_MASS_ERROR_MAX"

    var description: String {
        switch self {
        case .pName:
            return "The official name of the exoplanet (e.g., Kepler-186 f)."
        case .pDetection:
            return "Detection method used (e.g., Transit, Radial Velocity)."
        case .pDiscoveryFacility:
            return "Observatory or mission that discovered the planet."
        case .pYear:
            return "Year when the planet was first reported."
        case .pUpdate:
            return "Date of the most recent data update for this planet."
        case .pMass:
            return "Planet mass in Earth masses."
        case .pMassErrorMin:
            return "Lower bound of the planet’s mass uncertainty."
        case .pMassErrorMax:
            return "Upper bound of the planet’s mass uncertainty."
        case .pMassLimit:
            return "Limit flag on planet mass (e.g., <, >)."
        case .pMassOrigin:
            return "Source or method for the mass measurement."
        case .pRadius:
            return "Planet radius in Earth radii."
        case .pRadiusErrorMin:
            return "Lower bound of the planet’s radius uncertainty."
        case .pRadiusErrorMax:
            return "Upper bound of the planet’s radius uncertainty."
        case .pRadiusLimit:
            return "Limit flag on planet radius (e.g., <, >)."
        case .pPeriod:
            return "Orbital period in Earth days."
        case .pPeriodErrorMin:
            return "Lower bound of the period uncertainty."
        case .pPeriodErrorMax:
            return "Upper bound of the period uncertainty."
        case .pPeriodLimit:
            return "Limit flag on orbital period."
        case .pSemiMajorAxis:
            return "Semi‑major axis of orbit in AU."
        case .pSemiMajorAxisErrorMin:
            return "Lower bound of the semi‑major axis uncertainty."
        case .pSemiMajorAxisErrorMax:
            return "Upper bound of the semi‑major axis uncertainty."
        case .pSemiMajorAxisLimit:
            return "Limit flag on semi‑major axis."
        case .pEccentricity:
            return "Orbital eccentricity (0 = circular, 1 = parabolic)."
        case .pEccentricityErrorMin:
            return "Lower bound of eccentricity uncertainty."
        case .pEccentricityErrorMax:
            return "Upper bound of eccentricity uncertainty."
        case .pEccentricityLimit:
            return "Limit flag on eccentricity."
        case .pInclination:
            return "Orbital inclination in degrees."
        case .pInclinationErrorMin:
            return "Lower bound of inclination uncertainty."
        case .pInclinationErrorMax:
            return "Upper bound of inclination uncertainty."
        case .pInclinationLimit:
            return "Limit flag on inclination."
        case .pOmega:
            return "Argument of periastron (ω) in degrees."
        case .pOmegaErrorMin:
            return "Lower bound of ω uncertainty."
        case .pOmegaErrorMax:
            return "Upper bound of ω uncertainty."
        case .pOmegaLimit:
            return "Limit flag on ω."
        case .sName:
            return "Primary identifier of the host star."
        case .sNameHD:
            return "Henry Draper catalog designation."
        case .sNameHIP:
            return "Hipparcos catalog designation."
        case .sType:
            return "Spectral type of the host star (e.g., G2V)."
        case .sRA:
            return "Right Ascension of the star (J2000) in decimal degrees."
        case .sDEC:
            return "Declination of the star (J2000) in decimal degrees."
        case .sRAStr:
            return "Right Ascension as an HH MM SS string."
        case .sDECStr:
            return "Declination as a DD MM SS string."
        case .sMag:
            return "Apparent visual magnitude of the star."
        case .sMagErrorMin:
            return "Lower bound of magnitude uncertainty."
        case .sMagErrorMax:
            return "Upper bound of magnitude uncertainty."
        case .sDistance:
            return "Distance to the star in parsecs."
        case .sDistanceErrorMin:
            return "Lower bound of distance uncertainty."
        case .sDistanceErrorMax:
            return "Upper bound of distance uncertainty."
        case .sTemperature:
            return "Effective temperature of the star in Kelvin."
        case .sTemperatureErrorMin:
            return "Lower bound of temperature uncertainty."
        case .sTemperatureErrorMax:
            return "Upper bound of temperature uncertainty."
        case .sTemperatureLimit:
            return "Limit flag on temperature."
        case .sMass:
            return "Stellar mass in Solar masses."
        case .sMassErrorMin:
            return "Lower bound of stellar mass uncertainty."
        case .sMassErrorMax:
            return "Upper bound of stellar mass uncertainty."
        }
    }
}
