//
//  ViewController.m
//  YouTube
//
//  Created by sycf_ios on 2016/10/17.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

#import "ViewController.h"
#import <YTPlayerView.h>
@interface ViewController ()<YTPlayerViewDelegate>
@property (weak, nonatomic) IBOutlet YTPlayerView *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *playerVars = @{
                                 //player param(播放器参数可以参考)https://developers.google.com/youtube/player_parameters
                                 @"controls" : @2,
                                 @"playsinline" : @1,
                                 @"autohide" : @1,
                                 @"showinfo" : @0,
                                 @"modestbranding" : @1,
                                 @"fs":@1,//Add fullscreen button or not (有全屏按钮或者没有)
                                 @"iv_load_policy:":@3 //cancel video title(取消标题 )
                                 };
    
    self.player.delegate=self;
    //    [self.playerView loadWithPlaylistId:@"PLEE58C6029A8A6ADE" playerVars:playerVars];//playlist
    [self.player loadWithVideoId:@"M7lc1UVf-VE" playerVars:playerVars];//single video
}
- (void)playerView:(YTPlayerView *)playerView didChangeToState:(YTPlayerState)state {
    switch (state) {
            
        case kYTPlayerStatePlaying:
            NSLog(@"#####Started playback");
            break;
        case kYTPlayerStatePaused:
            NSLog(@"#####Paused playback");
            break;
        case kYTPlayerStateQueued:
            NSLog(@"#####Paused Queued");
        case kYTPlayerStateBuffering:
            NSLog(@"#####Paused Buffering");
            break;
        case kYTPlayerStateUnstarted:
            NSLog(@"#####Paused Queued");
            break;
        case kYTPlayerStateEnded:
            NSLog(@"#####Paused Ended");
            break;
        case kYTPlayerStateUnknown:
            NSLog(@"#####Paused Unknown");
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
