//Lesson 5: Positioning Nodes

import UIKit
import SceneKit
import PlaygroundSupport


let sceneView = SCNView(frame:CGRect(x:0, y:0, width:500, height:500))
let scene = SCNScene()
sceneView.scene = scene
sceneView.backgroundColor = UIColor.lightGray
sceneView.autoenablesDefaultLighting = true

PlaygroundPage.current.liveView = sceneView

let pyramid = SCNNode()
pyramid.geometry = SCNPyramid(width:1, height:1, length:1)
pyramid.geometry?.firstMaterial?.diffuse.contents = UIColor.purple
pyramid.geometry?.firstMaterial?.specular.contents = UIColor.white
scene.rootNode.addChildNode(pyramid)


let box = SCNNode()
box.position = SCNVector3(x:0, y:-0.5, z:0)
box.geometry = SCNBox(width:1, height:1, length:1, chamferRadius:0)
box.geometry?.firstMaterial?.diffuse.contents = UIColor.purple
pyramid.addChildNode(box)

let floor = SCNNode()
floor.position = SCNVector3(x:0, y:-5, z:0)
floor.geometry = SCNFloor()
scene.rootNode.addChildNode(floor)


SCNTransaction.begin()
SCNTransaction.animationDuration = CFTimeInterval(exactly: 5.0)!

pyramid.position = SCNVector3(x:0, y:1, z:-10)
pyramid.eulerAngles = SCNVector3(x:45 * Float((Double.pi)/180.0), y:45 * Float((Double.pi)/180.0), z:0 * Float((Double.pi)/180.0))

SCNTransaction.commit()
