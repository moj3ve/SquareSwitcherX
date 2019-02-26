// Find out what we want to modify
@interface SBAppSwitcherPageView : UIView
@property (assign,nonatomic) double cornerRadius;
-(void)_updateCornerRadius;
@end

// Hook into header
%hook SBAppSwitcherPageView

// Change method _updateCornerRadius
-(void)_updateCornerRadius {
    %orig;
    // Set the corner radius
    self.cornerRadius = 5;
}

// Remember to clean up!
%end
