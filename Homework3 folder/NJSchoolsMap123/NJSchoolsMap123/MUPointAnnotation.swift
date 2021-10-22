//
//  MUPointAnnotation.swift
//  NJSchoolsMap123
//
//  Created by Elias Csipkay on 10/22/21.
//

import UIKit
import MapKit

class MUPointAnnotation: MKPointAnnotation {
    var pinTintColor: UIColor?
    var id:Int = 0
    var type:AnnotationTypes = AnnotationTypes.school
}
