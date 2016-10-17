# YouTube
embed YouTube Player
###在项目中嵌入YouTube Player
![1](https://github.com/shibiao/YouTube/blob/master/111.png)
![2](https://github.com/shibiao/YouTube/blob/master/222.png)
####How to use it ?
####Only add these codes on your project:
#####//player param(播放器参数可以参考)https://developers.google.com/youtube/player_parameters


`NSDictionary *playerVars = @{
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
    [self.player loadWithVideoId:@"M7lc1UVf-VE" playerVars:playerVars];//single video `

