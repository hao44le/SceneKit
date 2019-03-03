
//Lesson 4: Colors and Materials
// **this code requires resources folder to work** //

import UIKit
import SceneKit
import PlaygroundSupport

let sceneView = SCNView(frame:CGRect(x:0, y:0, width:500, height:500))
let scene = SCNScene()
sceneView.scene = scene
sceneView.backgroundColor = UIColor.lightGray
sceneView.autoenablesDefaultLighting = true

PlaygroundPage.current.liveView = sceneView

let node = SCNNode()
node.geometry = SCNSphere(radius:1)
node.geometry?.firstMaterial?.diffuse.contents = UIImage(named:"Diffuse.png")
node.geometry?.firstMaterial?.specular.contents = UIImage(named:"Specular.png")
node.geometry?.firstMaterial?.emission.contents = UIImage(named:"Emission.png")
node.geometry?.firstMaterial?.normal.contents = UIImage(named:"Normal.png")
//node.geometry?.firstMaterial?.multiply.contents = UIColor.purpleColor()
node.geometry?.firstMaterial?.transparency = 1
node.geometry?.firstMaterial?.shininess = 10

scene.rootNode.addChildNode(node)

let action = SCNAction.rotate(by: 360 * CGFloat((Double.pi)/180.0), around: SCNVector3(x:0, y:1, z:0), duration:8)
let repeatAction = SCNAction.repeatForever(action)
node.runAction(repeatAction)

