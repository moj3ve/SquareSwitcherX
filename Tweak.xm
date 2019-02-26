@interface SBAppSwitcherPageView : UIView
@property (assign,nonatomic) double cornerRadius;
-(void)_updateCornerRadius;
@end

%hook SBAppSwitcherPageView

-(void)_updateCornerRadius {
    %orig;
    self.cornerRadius = 5;
}

%end
