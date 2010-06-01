//
// Copyright 2009-2010 Facebook
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "extThree20CSSStyle/TTDefaultCSSStyleSheet.h"

// extThree20CSSStyle
#import "extThree20CSSStyle/TTCSSStyleSheet.h"

// Core
#import "Three20Core/TTCorePreprocessorMacros.h"
#import "Three20Core/TTDebug.h"

NSString* kDefaultCSSPath = @"bundle://extThree20CSSStyle.bundle/stylesheets/default.css";


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@implementation TTDefaultCSSStyleSheet


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)init {
  if (self = [super init]) {
    _styleSheet = [[TTCSSStyleSheet alloc] init];

    BOOL loadedSuccessfully = [_styleSheet loadFromFilename:kDefaultCSSPath];

    TTDASSERT(loadedSuccessfully);
    if (!loadedSuccessfully) {
      // Bail out.
    }
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)dealloc {
  TT_RELEASE_SAFELY(_styleSheet);

  [super dealloc];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark DragRefreshHeader


///////////////////////////////////////////////////////////////////////////////////////////////////
- (UIFont*)tableRefreshHeaderLastUpdatedFont {
  return [_styleSheet fontWithCssSelector: @".dragRefreshHeaderLastUpdated"
                                 forState: UIControlStateNormal];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (UIFont*)tableRefreshHeaderStatusFont {
  return [_styleSheet fontWithCssSelector: @".dragRefreshHeaderStatusFont"
                                 forState: UIControlStateNormal];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (UIColor*)tableRefreshHeaderBackgroundColor {
  return [_styleSheet backgroundColorWithCssSelector: @".dragRefreshHeader"
                                            forState: UIControlStateNormal];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (UIColor*)tableRefreshHeaderTextColor {
  return [_styleSheet colorWithCssSelector: @".dragRefreshHeader"
                                  forState: UIControlStateNormal];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (UIColor*)tableRefreshHeaderTextShadowColor {
  return [_styleSheet textShadowColorWithCssSelector: @".dragRefreshHeader"
                                            forState: UIControlStateNormal];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGSize)tableRefreshHeaderTextShadowOffset {
  return [_styleSheet textShadowOffsetWithCssSelector: @".dragRefreshHeader"
                                             forState: UIControlStateNormal];
}


@end

