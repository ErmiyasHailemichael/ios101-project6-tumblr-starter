//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Ermiyas H on 4/1/24.
//

import UIKit
import Nuke


class DetailViewController: UIViewController {
    
    @IBOutlet weak var backdropImageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    var post: Post!
    
    // https://api.tumblr.com/v2/blog/humansofnewyork/posts/photo?api_key=1zT8CiXGXFcQDyMFG7RtcfGLwTdDjFUJnZzKJaWTmgyK4lKGYk
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // display summary
        //        if let post = post {
        //                textView.text = post.summary
        //            } else {
        //
        //                textView.text = "No post available"
        //            }
        
        
        // 
        //        if let post = post {
        //            let captionWithoutHTMLTags = post.caption.trimHTMLTags()
        //            textView.text = captionWithoutHTMLTags
        //        } else {
        //            // fixed after office hr visit
        //            textView.text = "No post available"
        //        }
        //        // Do any additional setup after loading the view.
        //    }
        
        if let post = post {
                    let captionWithoutHTMLTags = post.caption.trimHTMLTags()
                    textView.text = captionWithoutHTMLTags
                    
                    
                    if let photo = post.photos.first {
                        
                        Nuke.loadImage(with: photo.originalSize.url, into: backdropImageView)
                    } else {
                      
                        backdropImageView.image = UIImage(named: "defaultImage")
                    }
                } else {
                    textView.text = "No post available"
                }
            }
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

