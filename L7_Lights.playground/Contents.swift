//Lesson 5: Positioning Nodes

import UIKit
import SceneKit
import PlaygroundSupport


let sceneView = SCNView(frame:CGRect(x:0, y:0, width:500, height:500))
let scene = SCNScene()
sceneView.scene = scene
sceneView.backgroundColor = UIColor.lightGray
sceneView.autoenablesDefaultLighting = false

PlaygroundPage.current.liveView = sceneView

let cameraNode = SCNNode()
cameraNode.camera = SCNCamera()
cameraNode.position  = SCNVector3(0, 3, 10)
scene.rootNode.addChildNode(cameraNode)
sceneView.pointOfView = cameraNode

let torus = SCNNode()
torus.position = SCNVector3(0, 3, 0)
torus.geometry = SCNTorus(ringRadius: 1, pipeRadius: 0.5)
torus.geometry?.firstMaterial?.diffuse.contents = UIColor.purple
torus.geometry?.firstMaterial?.specular.contents = UIColor.white
scene.rootNode.addChildNode(torus)

let floor = SCNNode()
floor.position = SCNVector3(x:0, y:0, z:0)
floor.geometry = SCNFloor()
scene.rootNode.addChildNode(floor)

let ambientLightNode = SCNNode()
ambientLightNode.light = SCNLight()
ambientLightNode.light?.type = .ambient
scene.rootNode.addChildNode(ambientLightNode)

let omnidirectionalLightNode = SCNNode()
omnidirectionalLightNode.position = SCNVector3(0, 5, 10)
omnidirectionalLightNode.light = SCNLight()
omnidirectionalLightNode.light?.type = .omni
scene.rootNode.addChildNode(omnidirectionalLightNode)

let spotlightNode = SCNNode()
spotlightNode.position = SCNVector3(0, 10, 0)
spotlightNode.eulerAngles = SCNVector3(-90 * Float(M_PI/180.0), 0, 0)
spotlightNode.light?.type = .spot
scene.rootNode.addChildNode(spotlightNode)

SCNTransaction.begin()
SCNTransaction.animationDuration = CFTimeInterval(exactly: 5.0)!

SCNTransaction.commit()
