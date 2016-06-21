//
//  ViewController.swift
//  DpiTransformer
//
//  Created by huibin on 6/14/16.
//  Copyright © 2016 huibin. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSXMLParserDelegate {
    var mPathValue: String = ""

    @IBOutlet weak var mPathTextField: NSTextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }

    @IBAction func onButtonClick(sender: NSButton) {
        mPathValue = mPathTextField.stringValue

        mPathValue = "/Users/huibin/AndroidProject/Daisy/Daisy/res/values-sw1080dp/dimens.xml";
        checkPath(mPathValue)
    }

    func checkPath(path: String) {
        var isDirectory: ObjCBool = false;
        let fileManger = NSFileManager.defaultManager();
        let exist: Bool = fileManger.fileExistsAtPath(path, isDirectory: &isDirectory);


        if exist {
            if isDirectory {
                print("\"\(path)\" is directory")
            } else {
                parseXml(path)
            }

        } else {
            print("\"\(path)\" is not exist")
        }

    }


    func showDialog() {

    }

    func parseXml(path: String) {
        let url = NSURL(fileURLWithPath: path)

        let xmlParser = NSXMLParser(contentsOfURL: url)

        xmlParser!.delegate = self;
        xmlParser!.parse();

    }

    func parseXmlFromString(string: String) {

//        let data = NSData(string, data)
//        let xmlParser = NSXMLParser();
//
//        xmlParser!.delegate = self;
//        xmlParser!.parse();
    }


    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String:String]) {
        print("start element: \(elementName)")
        print("\(attributeDict)")
        print("uri: \(namespaceURI)")
        print("qualifiedName: \(qName)")
        
    }

    func parser(parser: NSXMLParser, foundCharacters string: String) {
        print("char: \(string)")
    }

    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        print("end elemet: \(elementName)")
        print("uri: \(namespaceURI)")
        print("qualifiedName: \(qName)")
    }

    func parser(parser: NSXMLParser, parseErrorOccurred parseError: NSError) {
        print("\(parseError)")
    }


}

