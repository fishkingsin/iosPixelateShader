#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofDisableArbTex();
    
    image.load("image.png");
    fbo.allocate(ofGetWidth(), ofGetHeight());
    
    shader.load("shaders/pixelate.vert", "shaders/pixelate.frag");
}

//--------------------------------------------------------------
void ofApp::update(){
    fbo.begin();
    ofSetColor(255);
    image.draw(0,0,ofGetWidth(), ofGetHeight());
    fbo.end();
}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(255);
    shader.begin();
    shader.setUniform2f("iResolution", ofGetWidth(), ofGetHeight());
    shader.setUniform1f("iGlobalTime", ofGetElapsedTimef());
    fbo.draw(0,0,ofGetWidth(), ofGetHeight());
    shader.end();
    
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
