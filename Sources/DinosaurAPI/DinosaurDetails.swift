//
//  DinosaurDetails.swift
//  
//
//  Created by Tiger Nixon on 4/7/23.
//

import Foundation
import UIKit

public struct DinosaurDetails {
    
    public struct Paragraph {
        public let id: Int
        public let text: String
    }
    
    public let id: Int
    public let image: UIImage
    public let paragraphs: [Paragraph]
    public let period: Period
}

extension DinosaurDetails: Identifiable {
    
}

extension DinosaurDetails: Sendable {
    
}

extension DinosaurDetails.Paragraph: Identifiable {
    
}

extension DinosaurDetails.Paragraph: Hashable {
    public static func ==(lhs: DinosaurDetails.Paragraph, rhs: DinosaurDetails.Paragraph) -> Bool {
        lhs.id == rhs.id
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension DinosaurDetails.Paragraph: Sendable {
    
}

extension DinosaurDetails {
    public static func mock() -> DinosaurDetails {
        let image = DinosaurService.loadImage(fileName: "tyrannosaurus_image")
        
        let p1 = "Tyrannosaurus is a genus of large theropod dinosaur. The species Tyrannosaurus rex (rex meaning \"kin\" in Latin), often called T. rex or colloquially T-Rex, is one of the best represented theropods. It lived throughout what is now western North America, on what was then an island continent known as Laramidia. Tyrannosaurus had a much wider range than other tyrannosaurids. Fossils are found in a variety of rock formations dating to the Maastrichtian age of the Upper Cretaceous period, 68 to 66 million years ago. It was the last known member of the tyrannosaurids and among the last non-avian dinosaurs to exist before the Cretaceous–Paleogene extinction event."
        
        let p2 = "Like other tyrannosaurids, Tyrannosaurus was a bipedal carnivore with a massive skull balanced by a long, heavy tail. Relative to its large and powerful hind limbs, the forelimbs of Tyrannosaurus were short but unusually powerful for their size, and they had two clawed digits. The most complete specimen measures up to 12.3–12.4 m (40.4–40.7 ft) in length; however, according to most modern estimates, T. rex could grow to lengths of over 12.4 m (40.7 ft), up to 3.66–3.96 m (12–13 ft) tall at the hips, and 8.87 metric tons (9.78 short tons) in body mass. Although other theropods rivaled or exceeded Tyrannosaurus rex in size, it is still among the largest known land predators and is estimated to have exerted the strongest bite force among all terrestrial animals. By far the largest carnivore in its environment, Tyrannosaurus rex was most likely an apex predator, preying upon hadrosaurs, juvenile armored herbivores like ceratopsians and ankylosaurs, and possibly sauropods. Some experts have suggested the dinosaur was primarily a scavenger. The question of whether Tyrannosaurus was an apex predator or a pure scavenger was among the longest debates in paleontology. Most paleontologists today accept that Tyrannosaurus was both an active predator and a scavenger."
        
        let p3 = "Specimens of Tyrannosaurus rex include some that are nearly complete skeletons. Soft tissue and proteins have been reported in at least one of these specimens. The abundance of fossil material has allowed significant research into many aspects of its biology, including its life history and biomechanics. The feeding habits, physiology, and potential speed of Tyrannosaurus rex are a few subjects of debate. Its taxonomy is also controversial, as some scientists consider Tarbosaurus bataar from Asia to be a second Tyrannosaurus species, while others maintain Tarbosaurus is a separate genus. Several other genera of North American tyrannosaurids have also been synonymized with Tyrannosaurus."
        
        let p4 = "As the archetypal theropod, Tyrannosaurus has been one of the best-known dinosaurs since the early 20th century and has been featured in film, advertising, postal stamps, and many other media."
        
        var paragraphs = [DinosaurDetails.Paragraph]()
        
        paragraphs.append(DinosaurDetails.Paragraph(id: 0, text: p1))
        paragraphs.append(DinosaurDetails.Paragraph(id: 1, text: p2))
        paragraphs.append(DinosaurDetails.Paragraph(id: 2, text: p3))
        paragraphs.append(DinosaurDetails.Paragraph(id: 3, text: p4))
        
        let era = Era(id: 0, name: "Mesozoic")
        let cretaciousPeriod = Period(id: 2, name: "Cretacious Period", timeSpan: "145.0 to 66.0 MYA", era: era)
        
        return DinosaurDetails(id: 0, image: image, paragraphs: paragraphs, period: cretaciousPeriod)
    }
}
