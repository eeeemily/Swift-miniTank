//
//  ViewController.swift
//  miniTank
//
//  Created by Zheng, Minghui on 10/8/21.
//

import UIKit
import RealityKit
var tankAnchor: TinyToyTank._TinyToyTank?
class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        tankAnchor=try! TinyToyTank.load_TinyToyTank()
        tankAnchor!.turret?.setParent(tankAnchor!.tank,preservingWorldTransform: true)
        arView.scene.anchors.append(tankAnchor!)
    }
    @IBAction func turretLeftPressed(_ sender: Any) {
        tankAnchor!.notifications.turretLeft.post()
    }
    @IBAction func turretRightPressed(_ sender: Any) {
        tankAnchor!.notifications.turretRight.post()
    }
    @IBAction func canonFirePressed(_ sender: Any) {
        tankAnchor!.notifications.cannonFire.post()
    }
    @IBAction func tankLeftPressed(_ sender: Any) {
        tankAnchor!.notifications.tankLeft.post()
    }
    
    @IBAction func tankForwardPressed(_ sender: Any) {
        tankAnchor!.notifications.tankForward.post()
    }
    @IBAction func tankRightPressed(_ sender: Any) {
        tankAnchor!.notifications.tankRight.post()
    }
}
