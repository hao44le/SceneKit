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

let cameraNode = SCNNode()
cameraNode.camera = SCNCamera()
cameraNode.position = SCNVector3(0, 1, 10)
scene.rootNode.addChildNode(cameraNode)
sceneView.pointOfView = cameraNode

let pyramid = SCNNode()
pyramid.geometry = SCNPyramid(width:1, height:1, length:1)
pyramid.geometry?.firstMaterial?.diffuse.contents = UIColor.purple
pyramid.geometry?.firstMaterial?.specular.contents = UIColor.white
scene.rootNode.addChildNode(pyramid)


let floor = SCNNode()
floor.position = SCNVector3(x:0, y:0, z:0)
floor.geometry = SCNFloor()
scene.rootNode.addChildNode(floor)


SCNTransaction.begin()
SCNTransaction.animationDuration = CFTimeInterval(exactly: 5.0)!

cameraNode.position = SCNVector3(-3, 5, 5)
cameraNode.eulerAngles = SCNVector3(-45 * Float(Double.pi/180.0), -45 * Float(Double.pi/180.0), 0 * Float(Double.pi/180.0))

SCNTransaction.commit()
