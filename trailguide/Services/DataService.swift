//
//  DataService.swift
//  trailguide
//
//  Created by Daniel Bonehill on 17/03/2018.
//  Copyright © 2018 Daniel Bonehill. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "HIKING", image: "hikingBG.png"),
        Category(title: "CAMPING", image: "campingBG.png"),
        Category(title: "DIVING", image: "divingBG.png"),
        Category(title: "RV LIFE", image: "rvBG.png"),
        Category(title: "FISHING", image: "fishingBG.png"),
        Category(title: "BACKPACKS", image: "backpackingBG.png")
    ]
    
    private let hikingIetms = [
        Item(title: "WALKING BOOTS", image: "walking boots.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "hiking"),
        Item(title: "BACKPACK", image: "backpack.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "hiking"),
        Item(title: "WHISTLE", image: "whistle.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "hiking"),
        Item(title: "TORCH", image: "torch.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "hiking"),
        Item(title: "ENGERGY BAR", image: "energy bar.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "hiking"),
        Item(title: "MULTIFUNCTIONAL WATCH", image: "multifunctional watch.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "hiking"),
        Item(title: "WATERPROOF TROUSERS", image: "waterproof trousers.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "hiking"),
        Item(title: "RAINCOAT", image: "raincoat.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "hiking")
    ]
    
    private let campingItems = [
        Item(title: "SLEEPING BAG", image: "sleepingBag.png", description: "A sleeping bag is a camping essential. It provides a warm and semi-comfortable place to sleep when camping. Some sleeping bags are rated for temperatures below 0˚ F! We reccomend the SnugSleeper SubZero bag for camping anywhere you think you might be cold.", category: "camping"),
        Item(title: "CAMPING STOVE", image: "campingStove.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "camping"),
        Item(title: "POP UP TENT", image: "pupTent.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "camping"),
        Item(title: "FOOD COOLER", image: "foodCooler", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "camping"),
        Item(title: "PARACORD BRACELET", image: "paracordBracelet.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "camping"),
        Item(title: "TACTICAL KNIFE", image: "tacticalKnife.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "camping")
    ]
    
    private let divingItems = [
        Item(title: "MASK & SNORKEL", image: "snorkel.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "diving"),
        Item(title: "WETSUIT", image: "wetsuit.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "diving"),
        Item(title: "FINS", image: "fins.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "diving"),
        Item(title: "REGULATOR", image: "regulator.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "diving"),
        Item(title: "BCD", image: "bcd.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "diving"),
        Item(title: "DPV", image: "dpv.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "diving"),
        Item(title: "DIVE COMPUTER", image: "dive computer.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "diving"),
        Item(title: "CYLINDER", image: "cylinder.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "diving")
    ]
    
    private let rvItems = [
        Item(title: "MULTITOOL", image: "multitool.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "rv"),
        Item(title: "DISHES", image: "dishes.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "rv"),
        Item(title: "TRASH BAGS", image: "trash bags.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "rv"),
        Item(title: "FIRST AID KIT", image: "first aid kit.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "rv"),
        Item(title: "FLASHLIGHT", image: "torch.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "rv"),
        Item(title: "LAWN CHAIRS", image: "lawn chair.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "rv"),
        Item(title: "BEDDING", image: "bedding.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "rv"),
        Item(title: "DOORMAT", image: "doormat.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "rv")
    ]
    
    private let fishingItems = [
        Item(title: "FISHING ROD", image: "rod.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "fishing"),
        Item(title: "DAY TENT", image: "day tent.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "fishing"),
        Item(title: "RAIN COAT", image: "raincoat.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "fishing"),
        Item(title: "BAIT", image: "bait.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "fishing"),
        Item(title: "SPARE HOOKS", image: "hook.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "fishing"),
        Item(title: "CHAIR", image: "chair.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "fishing")
    ]
    
    private let backpackingItems = [
        Item(title: "BACKPACK", image: "backpack.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "backpacking"),
        Item(title: "WALKING BOOTS", image: "walking boots.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "backpacking"),
        Item(title: "SPARE CLOTHES", image: "spare clothes.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "backpacking"),
        Item(title: "RAIN COAT", image: "raincoat.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "backpacking"),
        Item(title: "WATERPROOF TROUSERS", image: "waterproof trousers.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "backpacking"),
        Item(title: "GPS", image: "gps.png", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat rhoncus bibendum. Integer eu arcu ut lacus rutrum vehicula et vel augue. Phasellus vitae ipsum nec libero ornare commodo sit amet iaculis nulla. Cras id fermentum metus. Nulla facilisi. Aenean ultrices nulla tellus, vitae egestas sem varius ac. Vestibulum tristique sapien quis leo tempor, at aliquet lorem suscipit.", category: "backpacking")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getItems(forCategory title: String) -> [Item] {
        switch title {
        case "HIKING":
            return getHikingItems()
        case "CAMPING":
            return getCampingItems()
        case "DIVING":
            return getDivingItems()
        case "RV LIFE":
            return getRvItems()
        case "FISHING":
            return getFishingItems()
        case "BACKPACKING":
            return getBackpackingItems()
        default:
            return getHikingItems()
        }
    }
    
    func getHikingItems() -> [Item] {
        return hikingIetms
    }
    
    func getCampingItems() -> [Item] {
        return campingItems
    }
    
    func getDivingItems() -> [Item] {
        return divingItems
    }
    
    func getRvItems() -> [Item] {
        return rvItems
    }
    
    func getFishingItems() -> [Item] {
        return fishingItems
    }
    
    func getBackpackingItems() -> [Item] {
        return backpackingItems
    }
}
