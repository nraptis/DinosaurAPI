//
//  PeriodDetails.swift
//  
//
//  Created by Tiger Nixon on 4/7/23.
//

import Foundation
import UIKit

public struct PeriodDetails {
    
    public struct Paragraph {
        public let id: Int
        public let text: String
    }
    
    public let id: Int
    public let image: UIImage
    public let paragraphs: [Paragraph]
    public let dinosaurs: [Dinosaur]
}

extension PeriodDetails: Identifiable {
    
}

extension PeriodDetails: Sendable {
    
}

extension PeriodDetails.Paragraph: Identifiable {
    
}

extension PeriodDetails.Paragraph: Hashable {
    public static func ==(lhs: PeriodDetails.Paragraph, rhs: PeriodDetails.Paragraph) -> Bool {
        lhs.id == rhs.id
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension PeriodDetails.Paragraph: Sendable {
    
}

extension PeriodDetails {
    
    static var tyrannosaurus: Dinosaur {
        let thumb = DinosaurService.loadImage(fileName: "tyrannosaurus_thumb")
        return Dinosaur(id: 0,
                        name: "Tyrannosaurus Rex",
                        meaning: "Tyrant Lizard King",
                        thumb: thumb)
    }
    
    static var triceratops: Dinosaur {
        let thumb = DinosaurService.loadImage(fileName: "triceratops_thumb")
        return Dinosaur(id: 1,
                        name: "Triceratops",
                        meaning: "Three-Horned Face",
                        thumb: thumb)
    }
    
    public static func mock() -> PeriodDetails {
        let image = DinosaurService.loadImage(fileName: "cretacious_image")
        
        let p1 = "The Cretaceous is a geological period that lasted from about 145 to 66 million years ago (Mya). It is the third and final period of the Mesozoic Era, as well as the longest. At around 79 million years, it is the longest geological period of the entire Phanerozoic. The name is derived from the Latin creta, \"chalk\", which is abundant in the latter half of the period. It is usually abbreviated K, for its German translation Kreide."
        
        let p2 = "The Cretaceous was a period with a relatively warm climate, resulting in high eustatic sea levels that created numerous shallow inland seas. These oceans and seas were populated with now-extinct marine reptiles, ammonites, and rudists, while dinosaurs continued to dominate on land. The world was ice free, and forests extended to the poles. During this time, new groups of mammals and birds appeared. During the Early Cretaceous, flowering plants appeared and began to rapidly diversify, becoming the dominant group of plants across the Earth by the end of the Cretaceous, coincident with the decline and extinction of previously widespread gymnosperm groups."
        
        let p3 = "The Cretaceous (along with the Mesozoic) ended with the Cretaceous–Paleogene extinction event, a large mass extinction in which many groups, including non-avian dinosaurs, pterosaurs, and large marine reptiles, died out. The end of the Cretaceous is defined by the abrupt Cretaceous–Paleogene boundary (K–Pg boundary), a geologic signature associated with the mass extinction that lies between the Mesozoic and Cenozoic Eras."
        
        let p4 = "The Cretaceous as a separate period was first defined by Belgian geologist Jean d'Omalius d'Halloy in 1822 as the Terrain Crétacé, using strata in the Paris Basin and named for the extensive beds of chalk (calcium carbonate deposited by the shells of marine invertebrates, principally coccoliths), found in the upper Cretaceous of Western Europe. The name Cretaceous was derived from Latin creta, meaning chalk. The twofold division of the Cretaceous was implemented by Conybeare and Phillips in 1822. Alcide d'Orbigny in 1840 divided the French Cretaceous into five étages (stages): the Neocomian, Aptian, Albian, Turonian, and Senonian, later adding the Urgonian between Neocomian and Aptian and the Cenomanian between the Albian and Turonian."
        
        var paragraphs = [PeriodDetails.Paragraph]()
        
        paragraphs.append(PeriodDetails.Paragraph(id: 0, text: p1))
        paragraphs.append(PeriodDetails.Paragraph(id: 1, text: p2))
        paragraphs.append(PeriodDetails.Paragraph(id: 2, text: p3))
        paragraphs.append(PeriodDetails.Paragraph(id: 3, text: p4))
        
        return PeriodDetails(id: 2,
                             image: image,
                             paragraphs: paragraphs,
                             dinosaurs: [tyrannosaurus, triceratops])
    }
}
