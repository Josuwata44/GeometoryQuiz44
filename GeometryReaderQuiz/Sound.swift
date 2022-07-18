//
//  Sound.swift
//  GuessTheFlag
//
//  Created by cmStudent on 2022/07/17.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    let amahaDate = NSDataAsset(name: "Yes")!.data
    var amahaPlayer: AVAudioPlayer!
    var Yes = NSDataAsset(name: "no")!.data
    var YesPlayer: AVAudioPlayer!
    
    func No() {
        do {
            amahaPlayer = try AVAudioPlayer(data: amahaDate)
            amahaPlayer.play()
        } catch {
            print("エラーが発生しました！")
        }
    }
    
    func Yae() {
        do {
            YesPlayer = try AVAudioPlayer(data: Yes)
            YesPlayer.play()
        } catch {
            print("エラーが発生しました！")
        }
    }
   
    func stop() {
        amahaPlayer.stop()
    }
    
    func reset() {
        amahaPlayer.currentTime = 0
    }
    func stop2() {
        YesPlayer.stop()
    }
    
    func reset2() {
        YesPlayer.currentTime = 0
    }
    
    
}



    
