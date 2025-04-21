//
//  HWCEntry.swift
//  SwiftHWC
//
//  Created by Yuma decaux on 21/4/2025.
//


import Foundation

public struct HWCEntry: Codable, CustomStringConvertible {
    // Planet parameters
    var P_NAME:String?
    var P_DETECTION: String?
    var P_DISCOVERY_FACILITY: String?
    var P_YEAR: Int?
    var P_UPDATE: String?
    
    var P_MASS: Double?
    var P_MASS_ERROR_MIN: Double?
    var P_MASS_ERROR_MAX: Double?
    var P_MASS_LIMIT: Double?
    var P_MASS_ORIGIN: String?
    
    var P_RADIUS: Double?
    var P_RADIUS_ERROR_MIN: Double?
    var P_RADIUS_ERROR_MAX: Double?
    var P_RADIUS_LIMIT: Double?
    
    var P_PERIOD: Double?
    var P_PERIOD_ERROR_MIN: Double?
    var P_PERIOD_ERROR_MAX: Double?
    var P_PERIOD_LIMIT: Double?
    
    var P_SEMI_MAJOR_AXIS: Double?
    var P_SEMI_MAJOR_AXIS_ERROR_MIN: Double?
    var P_SEMI_MAJOR_AXIS_ERROR_MAX: Double?
    var P_SEMI_MAJOR_AXIS_LIMIT: Double?
    
    var P_ECCENTRICITY: Double?
    var P_ECCENTRICITY_ERROR_MIN: Double?
    var P_ECCENTRICITY_ERROR_MAX: Double?
    var P_ECCENTRICITY_LIMIT: Double?
    
    var P_INCLINATION: Double?
    var P_INCLINATION_ERROR_MIN: Double?
    var P_INCLINATION_ERROR_MAX: Double?
    var P_INCLINATION_LIMIT: Double?
    
    var P_OMEGA: Double?
    var P_OMEGA_ERROR_MIN: Double?
    var P_OMEGA_ERROR_MAX: Double?
    var P_OMEGA_LIMIT: Double?
    
    // Host star identifiers and basic astrometry
    var S_NAME: String?
    var S_NAME_HD: String?
    var S_NAME_HIP: String?
    var S_TYPE: String?
    
    var S_RA: Double?
    var S_DEC: Double?
    var S_RA_STR: String?
    var S_DEC_STR: String?
    
    // Photometry & distance
    var S_MAG: Double?
    var S_MAG_ERROR_MIN: Double?
    var S_MAG_ERROR_MAX: Double?
    var S_DISTANCE: Double?
    var S_DISTANCE_ERROR_MIN: Double?
    var S_DISTANCE_ERROR_MAX: Double?
    
    // Stellar properties
    var S_TEMPERATURE: Double?
    var S_TEMPERATURE_ERROR_MIN: Double?
    var S_TEMPERATURE_ERROR_MAX: Double?
    var S_TEMPERATURE_LIMIT: Double?
    
    var S_MASS: Double?
    var S_MASS_ERROR_MIN: Double?
    var S_MASS_ERROR_MAX: Double?
    var S_MASS_LIMIT: Double?
    
    var S_RADIUS: Double?
    var S_RADIUS_ERROR_MIN: Double?
    var S_RADIUS_ERROR_MAX: Double?
    var S_RADIUS_LIMIT: Double?
    
    var S_METALLICITY: Double?
    var S_METALLICITY_ERROR_MIN: Double?
    var S_METALLICITY_ERROR_MAX: Double?
    var S_METALLICITY_LIMIT: Double?
    
    var S_AGE: Double?
    var S_AGE_ERROR_MIN: Double?
    var S_AGE_ERROR_MAX: Double?
    var S_AGE_LIMIT: Double?
    
    var S_LOG_LUM: Double?
    var S_LOG_LUM_ERROR_MIN: Double?
    var S_LOG_LUM_ERROR_MAX: Double?
    var S_LOG_LUM_LIMIT: Double?
    
    var S_LOG_G: Double?
    var S_LOG_G_ERROR_MIN: Double?
    var S_LOG_G_ERROR_MAX: Double?
    var S_LOG_G_LIMIT: Double?
    
    // Derived planetary metrics
    var P_ESCAPE: Double?
    var P_POTENTIAL: Double?
    var P_GRAVITY: Double?
    var P_DENSITY: Double?
    var P_HILL_SPHERE: Double?
    
    var P_DISTANCE: Double?
    var P_PERIASTRON: Double?
    var P_APASTRON: Double?
    var P_DISTANCE_EFF: Double?
    
    var P_FLUX: Double?
    var P_FLUX_MIN: Double?
    var P_FLUX_MAX: Double?
    
    var P_TEMP_EQUIL: Double?
    var P_TEMP_EQUIL_MIN: Double?
    var P_TEMP_EQUIL_MAX: Double?
    
    var P_TEMP_SURF: Double?
    var P_TEMP_SURF_MIN: Double?
    var P_TEMP_SURF_MAX: Double?
    
    var P_TYPE: String?
    
    // Host‐star additional fields
    var S_TYPE_TEMP: String?
    var S_RA_TXT: String?
    var S_DEC_TXT: String?
    var S_LUMINOSITY: Double?
    
    // Habitable‐zone boundaries
    var S_HZ_OPT_MIN: Double?
    var S_HZ_OPT_MAX: Double?
    var S_HZ_CON_MIN: Double?
    var S_HZ_CON_MAX: Double?
    var S_HZ_CON0_MIN: Double?
    var S_HZ_CON0_MAX: Double?
    var S_HZ_CON1_MIN: Double?
    var S_HZ_CON1_MAX: Double?
    
    var S_SNOW_LINE: Double?
    var S_ABIO_ZONE: Double?
    var S_TIDAL_LOCK: Double?
    
    var P_HABZONE_OPT: Double?
    var P_HABZONE_CON: Double?
    var P_TYPE_TEMP: String?
    var P_HABITABLE: Bool?
    var P_ESI: Double?
    
    // Constellation info
    var S_CONSTELLATION: String?
    var S_CONSTELLATION_ABR: String?
    var S_CONSTELLATION_ENG: String?
    
    // A generic description that prints out all field names and values
    public var description: String {
        Mirror(reflecting: self).children
            .compactMap { child in
                guard let label = child.label else { return nil }
                return "\(label): \(child.value)"
            }
            .joined(separator: "\n")
    }
}
