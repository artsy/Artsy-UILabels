//
//  ARLabelSubclasses.h
//  Artsy
//
//  Created by Orta Therox on 17/11/2012.
//  Copyright (c) 2012 Artsy. All rights reserved.
//

@interface ARLabel : UILabel
@end

@interface ARLabelWithChevron : ARLabel
@property (nonatomic, assign) CGFloat chevronDelta;
@property (nonatomic, assign) BOOL chevronHidden;
@end

@interface ARSerifLabel : ARLabel
@end

@interface ARSerifLabelWithChevron : ARLabelWithChevron
@end

@interface ARSansSerifLabel : ARLabel
@end

@interface ARSansSerifLabelWithChevron : ARLabelWithChevron
@end

@interface ARItalicsSerifLabel : ARLabel
@end

@interface ARItalicsSerifLabelWithChevron : ARLabelWithChevron
@end

@interface ARTitleWithDateLabel: ARItalicsSerifLabel
- (void)setTitle:(NSString *)artworkTitle date:(NSString *)date;
@end

/// Will convert the text into an attributed string
/// with the correct line height

@interface ARSerifLineHeightLabel : ARSerifLabel

- (instancetype)initWithLineSpacing:(CGFloat)lineHeight;

@property (nonatomic, assign) CGFloat lineHeight;

@end

@interface ARBorderLabel : ARSerifLineHeightLabel
@end
