//
//  GameViewController.swift
//  SunSystem
//
//  Created by Amanda Grenander on 2019-03-19.
//  Copyright © 2019 Björn Gonzalez. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    var earthNode = SCNNode()
    var jupiterNode = SCNNode()
    var saturnNode = SCNNode()
    var neptuneNode = SCNNode()
    var uranusNode = SCNNode()
    var marsNode = SCNNode()
    var mercuryNode = SCNNode()
    var venusNode = SCNNode()
    var moonNode = SCNNode()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create a new scene
        let scene = SCNScene()
        
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene.rootNode.addChildNode(cameraNode)
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 45)
        
        // create and add a light to the scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        scene.rootNode.addChildNode(lightNode)
        
        // create and add an ambient light to the scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = .ambient
        ambientLightNode.light!.color = UIColor.darkGray
        scene.rootNode.addChildNode(ambientLightNode)
        
        // retrieve the SCNView
        let scnView = self.view as! SCNView
        
        // set the scene to the view
        scnView.scene = scene
        
        // allows the user to manipulate the camera
        scnView.allowsCameraControl = true
        
        // show statistics such as fps and timing information
        scnView.showsStatistics = true
        
        // configure the view
        scnView.backgroundColor = UIColor.black
        
        var planets = [ "mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"  ]
        var rings = [ 1, 2, 3, 4.2, 6, 8, 10, 12 ] ;  //planet orbit distance
        var sizes = [ 0.2, 0.4, 0.5, 0.4, 0.9, 0.7, 0.8, 0.6, 0.8 ]; //planet physical size
        var orbits = [ 1.2, 0.8, 0.5, 0.4, 0.9, 0.7, 0.5, 0.4, 0.3 ]; //planet orbit velocity
        
        var rotations = [ 1.6, 0.9, 1.2, 0.8, 1.3, 0.2, 0.4, 0.8, 0.2 ]; //planet spinning
        
        for index in 0..<rings.count {
            let ring = CGFloat(rings[index]);
            let size = sizes[index] ;
            let planet = planets[index] ;
            let orbit = CGFloat(orbits[index]) ;
            
            let rotation = CGFloat(rotations[index]) ;
            
            let ringGeo = SCNTorus(ringRadius: ring , pipeRadius: 0.03 );
            let ringNode = SCNNode(geometry: ringGeo );
            scene.rootNode.addChildNode(ringNode);
            ringGeo.firstMaterial?.diffuse.contents = UIColor.yellow ;
            
            let planetGeo = SCNSphere(radius: CGFloat(size) );
            let planetNode = SCNNode(geometry: planetGeo );
            ringNode.addChildNode(planetNode);
            planetNode.position = SCNVector3(x: Float(ring) , y: 0, z: 0 );
            
            planetGeo.firstMaterial?.diffuse.contents = UIImage(named: "texture_" + planet + ".jpg");
            ringGeo.firstMaterial?.diffuse.contents = UIImage(named: "texture_" + planet + ".jpg");
            
            ringNode .runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: orbit, z: 0, duration:1)))
            
            planetNode.runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: rotation, z: 0, duration:1)))
            
            
            if index == 2 { // earth moon
                
                let  moonOrbitNode = SCNNode(geometry: SCNTorus(ringRadius: 0.7 , pipeRadius: 0.01 ) );
                planetNode.addChildNode(moonOrbitNode);
                moonOrbitNode.runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 1.2, z: 0, duration:1)));
                
                let moonGeo = SCNSphere(radius: CGFloat(0.2) );
                moonGeo.firstMaterial?.diffuse.contents = UIImage(named: "texture_moon.png" );
                
                moonNode = SCNNode(geometry: moonGeo );
                moonOrbitNode.addChildNode(moonNode);
                moonNode.position = SCNVector3(x:0.7 , y: 0, z: 0 );
                
            }
            if index == 0 {  mercuryNode = planetNode }
            if index == 1 {    venusNode = planetNode }
            if index == 2 {    earthNode = planetNode }
            if index == 3 {     marsNode = planetNode }
            if index == 4 {  jupiterNode = planetNode }
            if index == 5 {   saturnNode = planetNode }
            if index == 6 {   uranusNode = planetNode }
            if index == 7 {  neptuneNode = planetNode }
            
        }
        
        var cameraX = saturnNode.position.x + 5 ;
        var cameraY = saturnNode.position.y - 5 ;
        var cameraZ = saturnNode.position.z + 20 ;
        cameraNode.position = SCNVector3(x: Float(cameraX) , y: Float(cameraY), z: Float(cameraZ) )
        
        cameraNode.constraints = [SCNLookAtConstraint(target: saturnNode)]
    }
    
}


