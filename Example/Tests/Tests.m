//
//  Artsy+UILabelsTests.m
//  Artsy+UILabelsTests
//
//  Created by Orta on 06/20/2014.
//  Copyright (c) 2014 Orta. All rights reserved.
//

#import <Artsy+UILabels/NSNumberFormatter+ARCurrency.h>
#import <Artsy+UILabels/UIView+ARDrawing.h>
#import <Artsy+UILabels/ARLabelSubclasses.h>


SpecBegin(LabelSpecs)

describe(@"currency", ^{
    it(@"gives expected results", ^{
        expect([NSNumberFormatter currencyStringForCents:@1]).to.equal(@"$0");
        expect([NSNumberFormatter currencyStringForCents:@200]).to.equal(@"$2");
        expect([NSNumberFormatter currencyStringForCents:@20000]).to.equal(@"$200");
        expect([NSNumberFormatter currencyStringForCents:@4500000]).to.equal(@"$45,000");

    });
});

describe(@"line drawing", ^{
    __block UIView *sutView;
    beforeEach(^{
        sutView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        sutView.backgroundColor = [UIColor whiteColor];
    });
    
    it(@"draws a standard top border on a view", ^{
        [sutView drawTopDottedBorder];
        expect(sutView).to.haveValidSnapshot();
    });
    
    it(@"draws a standard bottom border on a view", ^{
        [sutView drawBottomDottedBorder];
        expect(sutView).to.haveValidSnapshot();
    });

    it(@"draws a standard bottom & top border on a view", ^{
        [sutView drawDottedBorders];
        expect(sutView).to.haveValidSnapshot();
    });
    
    it(@"supports different solid coloured borders", ^{
        [sutView drawSolidBordersWithColor:UIColor.greenColor];
        expect(sutView).to.haveValidSnapshot();
    });
});

static const CGRect labelFrame = (CGRect){ 0, 0, 200, 32 };

describe(@"label subclasses", ^{
    __block UILabel *label;
    
    it(@"ARLabel looks right", ^{
        label = [[ARLabel alloc] initWithFrame:labelFrame];
        label.text = @"Hello world";
        expect(label).to.haveValidSnapshot();
    });

    describe(@"ARLabelWithChevron", ^{
        it(@"looks right", ^{
            label = [[ARLabelWithChevron alloc] initWithFrame:labelFrame];
            label.text = @"Hello world";
            expect(label).to.haveValidSnapshot();
        });
        
        it(@"can change the y offset of the chevron", ^{
            label = [[ARLabelWithChevron alloc] initWithFrame:labelFrame];
            label.text = @"Hello world";
            ((ARLabelWithChevron *)label).chevronDelta = 10;
            expect(label).to.haveValidSnapshot();
        });
        
        it(@"can hide the chevron", ^{
            label = [[ARLabelWithChevron alloc] initWithFrame:labelFrame];
            label.text = @"Hello world";
            expect(((ARLabelWithChevron *)label).chevronHidden).to.beFalsy();
            ((ARLabelWithChevron *)label).chevronHidden = YES;
            expect(((ARLabelWithChevron *)label).chevronHidden).to.beTruthy();
            expect(label).to.haveValidSnapshot();
        });
    });
    
    it(@"ARSerifLabel looks right", ^{
        label = [[ARSerifLabel alloc] initWithFrame:labelFrame];
        label.text = @"Hello world";
        expect(label).to.haveValidSnapshot();
    });

    it(@"ARSerifLabelWithChevron looks right", ^{
        label = [[ARSerifLabelWithChevron alloc] initWithFrame:labelFrame];
        label.text = @"Hello world";
        expect(label).to.haveValidSnapshot();
    });

    it(@"ARSansSerifLabel looks right", ^{
        label = [[ARSansSerifLabel alloc] initWithFrame:labelFrame];
        label.text = @"Hello world";
        expect(label).to.haveValidSnapshot();
    });

    it(@"ARItalicsSerifLabel looks right", ^{
        label = [[ARItalicsSerifLabel alloc] initWithFrame:labelFrame];
        label.text = @"Hello world";
        expect(label).to.haveValidSnapshot();
    });

    it(@"ARItalicsSerifLabelWithChevron looks right", ^{
        label = [[ARItalicsSerifLabelWithChevron alloc] initWithFrame:labelFrame];
        label.text = @"Hello world";
        expect(label).to.haveValidSnapshot();
    });
    
    it(@"ARSerifLineHeightLabel looks right", ^{
        label = [[ARSerifLineHeightLabel  alloc] initWithLineSpacing:10];
        label.frame = CGRectMake(0, 0, 300, 80);
        label.numberOfLines = 2;
        label.text = @"Hello there, this is some pretty long text ey? Maybe it'll wrap.";
        expect(label).to.haveValidSnapshot();
    });
});


SpecEnd
