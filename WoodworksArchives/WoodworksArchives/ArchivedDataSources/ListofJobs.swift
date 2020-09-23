//
//  ListofJobs.swift
//  WoodworksArchives
//
//  Created by Michael Brown on 8/31/20.
//

import Foundation

var CurrentJobs: [CurrentJob] = [
    
CurrentJob(clientName: "Kompf", builtProduct: "Kitchen and Island", finishColorNameAndCode: "Chem 24 White Low Gloss 117-2420-D5PRS, SW 9170 Acier Clear L-C40777CT-1G", finishGallonUsage: 3, woodSpecies: "Maple and Cherry", installedSwitch: false)
    
]

var ArchivedJobs: [ArchivedJob] = [

    ArchivedJob(clientName: "MacBuilder - Jensen", builtProduct: "Kitchen", finishColorNameAndCode: "Dove White L-C28060P-1G, Yellow Alder Spray Stain L-C37217S-1G, Almond Alder WB Glaze L-C36980G-1Q", finishGallonUsage: 2, woodSpecies: "Alder", installedDate: "01/07/2019"),
    ArchivedJob(clientName: "JLR", builtProduct: "Office", finishColorNameAndCode: "Natural Chem24 Low Gloss", finishGallonUsage: 1, woodSpecies: "Quarter Sawn White Oak", installedDate: "01/21/2019"),
    ArchivedJob(clientName: "Geni Hiatt - Joellen Forbes", builtProduct: "Kitchen Island and Master Bath", finishColorNameAndCode: "Chatsworth Cream L-C36147P-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: "01/24/2019"),
    ArchivedJob(clientName: "Makeoff", builtProduct: "White Furniture Pieces", finishColorNameAndCode: "Chantilly Lace L-C33571P-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: "01/24/2019"),
    ArchivedJob(clientName: "Glen Klemetson", builtProduct: "Island", finishColorNameAndCode: "Behr Broadway Chemlife Tint L-C38655PT-1G", finishGallonUsage: 1, woodSpecies: "Walnut", installedDate: "02/04/2019"),
    ArchivedJob(clientName: "Warwick", builtProduct: "Mantle", finishColorNameAndCode: "Natural Finish", finishGallonUsage: 1, woodSpecies: "Rustic Cherry", installedDate: "02/05/2019"),
    ArchivedJob(clientName: "Pyne", builtProduct: "Vanity and Johnny", finishColorNameAndCode: "X Bay Blue PPG Glidden Chemlife L-C39025P-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: "02/13/2019"),
    ArchivedJob(clientName: "Bruce - Gunther", builtProduct: "Kitchen", finishColorNameAndCode: "DoveTail Spray Stain L-C28448S-1G, Sherwood Vandyke Brown Glaze", finishGallonUsage: 2, woodSpecies: "Rustic Maple", installedDate: "02/20/2019"),
    ArchivedJob(clientName: "Laurie Nelson", builtProduct: "Mudroom Boxes", finishColorNameAndCode: "Aged Maple Spray Stain L-C36800S-1G, Aged Maple WB Glaze L-C36800G-1Q, Red Block Chemlife L-C37925PT-1G", finishGallonUsage: 2, woodSpecies: "Hard Maple", installedDate: "02/25/2019"),
    ArchivedJob(clientName: "King", builtProduct: "White Kitchen and Blue Island", finishColorNameAndCode: "Behr Ultra Pure White Chemlife L-C37201P-1G, X Behr Blueprint s470-5 Chemlife Tint L-C39101PT-1G", finishGallonUsage: 2, woodSpecies: "Maple", installedDate: "03/11/2019"),
    ArchivedJob(clientName: "Bruce Gunther", builtProduct: "Red Top", finishColorNameAndCode: "Heritage Red Chemlife L-C26925P-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: "03/27/19"),
    ArchivedJob(clientName: "Buler", builtProduct: "White Kitchen", finishColorNameAndCode: "Chemlife White Low Gloss", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: "04/01/2019"),
    ArchivedJob(clientName: "Pyne - Estrada", builtProduct: "Vanity", finishColorNameAndCode: "Storm Gray Chemlife L-C35920PT-1G", finishGallonUsage: 1, woodSpecies: "Maple", installedDate: "04/01/2019"),
    ArchivedJob(clientName: "James Loorg", builtProduct: "Entertainment Center (E. C.)", finishColorNameAndCode: "Chalk Line Spray Stain L-C21412S-1G", finishGallonUsage: 1, woodSpecies: "Clear Maple", installedDate: "04/08/2019"),
    ArchivedJob(clientName: "Thayne - Warwick", builtProduct: "Kitchen, Island, Master Bath, and Vanities", finishColorNameAndCode: "SW Tricorn Black Chemlife Tint L-C35382PT-1G, Simply White L-C31138P-1G, Dovetail Spray Stain L-C28448S-1G, Sherwin Williams Black Glaze, SW Naval 6244 Chemlife Tint L-C39652PT-1G, Dovetail Chemlife Tint L-C33302PT-1G, Kaffee Chemlife Tint L-C39801PT-1G", finishGallonUsage: 6, woodSpecies: "Rift Sawn Red Oak and Maple", installedDate: "04/23/2019"),
    ArchivedJob(clientName: "Forbes", builtProduct: "Handrail", finishColorNameAndCode: "Dovetail Spraystain L-C28448S-1G, Sherwin Williams Van Dyke Brown Glaze, Black Chemlife L-C05001PT-1G", finishGallonUsage: 2, woodSpecies: "Clear Maple and Maple", installedDate: "05/02/2019")

]

var SupplyOrderList = [SupplyOrder]()

var DailyToDoList = [DailyToDo]()
