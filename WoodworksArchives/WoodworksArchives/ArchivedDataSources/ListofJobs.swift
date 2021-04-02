//
//  ListofJobs.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 8/31/20.
//

import Foundation


struct JobController {
    
    static var sharedJobInstance = JobController()
    
   var listOfJobs: [Job] = [
        
        Job(clientName: "Kompf", builtProduct: "Kitchen and Island", finishColorNameAndCode: "Chem 24 White Low Gloss 117-2420-D5PRS, SW 9170 Acier Clear L-C40777CT-1G", finishGallonUsage: 3, woodSpecies: "Maple and Cherry", installedDate: nil),
        Job(clientName: "MacBuilder - Jensen", builtProduct: "Kitchen", finishColorNameAndCode: "Dove White L-C28060P-1G, Yellow Alder Spray Stain L-C37217S-1G, Almond Alder WB Glaze L-C36980G-1Q", finishGallonUsage: 2, woodSpecies: "Alder", installedDate: Job.pastInstalledDate(month: 01, day: 07, year: 2019)),
        Job(clientName: "JLR", builtProduct: "Office", finishColorNameAndCode: "Natural Chem24 Low Gloss", finishGallonUsage: 1, woodSpecies: "Quarter Sawn White Oak", installedDate: Job.pastInstalledDate(month: 01, day: 21, year: 2019)),
        Job(clientName: "Geni Hiatt - Joellen Forbes", builtProduct: "Kitchen Island and Master Bath", finishColorNameAndCode: "Chatsworth Cream L-C36147P-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 01, day: 24, year: 2019)),
        Job(clientName: "Makeoff", builtProduct: "White Furniture Pieces", finishColorNameAndCode: "Chantilly Lace L-C33571P-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 01, day: 24, year: 2019)),
        Job(clientName: "Glen Klemetson", builtProduct: "Island", finishColorNameAndCode: "Behr Broadway Chemlife Tint L-C38655PT-1G", finishGallonUsage: 1, woodSpecies: "Walnut", installedDate: Job.pastInstalledDate(month: 02, day: 04, year: 2019)),
        Job(clientName: "Warwick", builtProduct: "Mantle", finishColorNameAndCode: "Natural Finish", finishGallonUsage: 1, woodSpecies: "Rustic Cherry", installedDate: Job.pastInstalledDate(month: 02, day: 05, year: 2019)),
        Job(clientName: "Pyne", builtProduct: "Vanity and Johnny", finishColorNameAndCode: "X Bay Blue PPG Glidden Chemlife L-C39025P-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 02, day: 13, year: 2019)),
        Job(clientName: "Bruce - Gunther", builtProduct: "Kitchen", finishColorNameAndCode: "DoveTail Spray Stain L-C28448S-1G, Sherwood Vandyke Brown Glaze", finishGallonUsage: 2, woodSpecies: "Rustic Maple", installedDate: Job.pastInstalledDate(month: 02, day: 20, year: 2019)),
        Job(clientName: "Laurie Nelson", builtProduct: "Mudroom Boxes", finishColorNameAndCode: "Aged Maple Spray Stain L-C36800S-1G, Aged Maple WB Glaze L-C36800G-1Q, Red Block Chemlife L-C37925PT-1G", finishGallonUsage: 2, woodSpecies: "Hard Maple", installedDate: Job.pastInstalledDate(month: 02, day: 25, year: 2019)),
        Job(clientName: "King", builtProduct: "White Kitchen and Blue Island", finishColorNameAndCode: "Behr Ultra Pure White Chemlife L-C37201P-1G, X Behr Blueprint s470-5 Chemlife Tint L-C39101PT-1G", finishGallonUsage: 2, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 03, day: 11, year: 2019)),
        Job(clientName: "Bruce Gunther", builtProduct: "Red Top", finishColorNameAndCode: "Heritage Red Chemlife L-C26925P-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 03, day: 27, year: 2019)),
        Job(clientName: "Buler", builtProduct: "White Kitchen", finishColorNameAndCode: "Chemlife White Low Gloss", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 04, day: 01, year: 2019)),
        Job(clientName: "Pyne - Estrada", builtProduct: "Vanity", finishColorNameAndCode: "Storm Gray Chemlife L-C35920PT-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 04, day: 01, year: 2019)),
        Job(clientName: "James Loorg", builtProduct: "Entertainment Center (E. C.)", finishColorNameAndCode: "Chalk Line Spray Stain L-C21412S-1G", finishGallonUsage: 1, woodSpecies: "Clear Maple", installedDate: Job.pastInstalledDate(month: 04, day: 08, year: 2019)),
        Job(clientName: "Thayne - Warwick", builtProduct: "Kitchen, Island, Master Bath, and Vanities", finishColorNameAndCode: "SW Tricorn Black Chemlife Tint L-C35382PT-1G, Simply White L-C31138P-1G, Dovetail Spray Stain L-C28448S-1G, Sherwin Williams Black Glaze, SW Naval 6244 Chemlife Tint L-C39652PT-1G, Dovetail Chemlife Tint L-C33302PT-1G, Kaffee Chemlife Tint L-C39801PT-1G", finishGallonUsage: 6, woodSpecies: "Rift Sawn Red Oak and Maple", installedDate: Job.pastInstalledDate(month: 04, day: 23, year: 2019)),
        Job(clientName: "Forbes", builtProduct: "Handrail", finishColorNameAndCode: "Dovetail Spraystain L-C28448S-1G, Sherwin Williams Van Dyke Brown Glaze, Black Chemlife L-C05001PT-1G", finishGallonUsage: 2, woodSpecies: "Clear Maple and Maple", installedDate: Job.pastInstalledDate(month: 05, day: 02, year: 2019)),
        //    finish 2019
        Job(clientName: "Van/Carter", builtProduct: "Entertainment Center", finishColorNameAndCode: "XBM OC-45 SWISS COFFEE CHEMLIFE L-C31595P-1G, XBM ASHWOOD MOSS 1484 L-C41422PT-1G", finishGallonUsage: 2, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 01, day: 27, year: 2020)),
        Job(clientName: "Ball", builtProduct: "Kitchen, Laundry, Vanities, Master Bath", finishColorNameAndCode: "Kitchen/Laundry (0C-17 WHITE DOVE L-C28060P-1G), Island/Vanities (PPG1011-4 UFO CLEAR L-C41485PT-5G), Master/Vanities (XSW NAVAL 6244 L-C39652PT-1G)", finishGallonUsage: 7, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 01, day: 30, year: 2020)),
        Job(clientName: "Northrup", builtProduct: "Reface Kitchen", finishColorNameAndCode: "CHANTILLY LACE 2121-70 L-C33571P-5G", finishGallonUsage: 5, woodSpecies: "Reface", installedDate: Job.pastInstalledDate(month: 02, day: 06, year: 2020)),
        Job(clientName: "Penovich", builtProduct: "Vanity", finishColorNameAndCode: "Simply White L-C31138P-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 02, day: 10, year: 2020)),
        Job(clientName: "J2 Nelson", builtProduct: "Kitchen, Laundry, Kitchenette, Vanities", finishColorNameAndCode: "Kitchen (SW 7005 PURE WHITE L-C32161P-5G), Island/Laundry (WROUGHT IRON 2124-10 L-C3128PT-5G), Kitchenette (TRICORN BLACK CVC1086), Vanity (KENDALL CHARCOAL CVC0998), Vanity (ROCKPORT GRAY CVW0050), Oak Vanities/Closet Dresser (BARNWOOD HICKORY L-C34776S-1G, AXALTA CLEAR SATIN AUF5802)", finishGallonUsage: 15, woodSpecies: "Maple and Oak", installedDate: Job.pastInstalledDate(month: 02, day: 14, year: 2020)),
        Job(clientName: "Pyne Lindorff", builtProduct: "Built-in Cabinet", finishColorNameAndCode: "DOVETAIL SPARY STAIN L-C28448S-1G, SHERWOOD VAN DYKE BROWN GLAZE", finishGallonUsage: 2, woodSpecies: "Red Oak", installedDate: Job.pastInstalledDate(month: 02, day: 24, year: 2020)),
        Job(clientName: "Anthony", builtProduct: "Island", finishColorNameAndCode: "CHEMLIFE 24 WHITE LOW GLOSS 117-2420-D5PRS", finishGallonUsage: 2, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 02, day: 24, year: 2020)),
        Job(clientName: "Larsen", builtProduct: "Hickory Cabinets", finishColorNameAndCode: "Doors (ULTRAGAURD CLEAR SATIN AUF5802), Everything Else (CHEM 24 LOW GLOSS)", finishGallonUsage: 3, woodSpecies: "Clear Hickory", installedDate: Job.pastInstalledDate(month: 02, day: 24, year: 2020)),
        Job(clientName: "Sydney Makoff", builtProduct: "Hutch", finishColorNameAndCode: "Inside (BM 1621 LITTLE FALLS CHEMLIFE L-C33503P-1G), Outside (BM OC-43 OVERCAST CHEMLIFE L-C41413P-1G)", finishGallonUsage: 2, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 02, day: 26, year: 2020)),
        Job(clientName: "Guy Madsen", builtProduct: "Vanity and Cabinet Reface", finishColorNameAndCode: "CHEMLIFE 24 WHITE LOW GLOSS 117-2420D5PRS", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 03, day: 13, year: 2020)),
        Job(clientName: "Pyne White", builtProduct: "Frame and Doors", finishColorNameAndCode: "CHEMLIFE 24 WHITE LOW GLOSS 117-2420D5PRS", finishGallonUsage: 2, woodSpecies: "Maple", installedDate: Job.pastInstalledDate(month: 03, day: 13, year: 2020))
        
    ]
}
