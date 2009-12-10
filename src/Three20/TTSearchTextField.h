//
// Copyright 2009 Facebook
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

#import "Three20/TTTableViewDataSource.h"

@protocol TTTableViewDataSource;
@class TTSearchTextFieldInternal, TTView;

@interface TTSearchTextField : UITextField <UITableViewDelegate> {
  id<TTTableViewDataSource> _dataSource;
  TTSearchTextFieldInternal* _internal;
  UITableView* _tableView;
  TTView* _shadowView;
  UIButton* _screenView;
  UINavigationItem* _previousNavigationItem;
  UIBarButtonItem* _previousRightBarButtonItem;
  NSTimer* _searchTimer;
  CGFloat _rowHeight;
  BOOL _searchesAutomatically;
  BOOL _showsDoneButton;
  BOOL _showsDarkScreen;
}

@property(nonatomic,retain) id<TTTableViewDataSource> dataSource;
@property(nonatomic,readonly) UITableView* tableView;
@property(nonatomic) CGFloat rowHeight;
@property(nonatomic,readonly) BOOL hasText;
@property(nonatomic) BOOL searchesAutomatically;
@property(nonatomic) BOOL showsDoneButton;
@property(nonatomic) BOOL showsDarkScreen;

- (void)search;

- (void)showSearchResults:(BOOL)show;

- (UIView*)superviewForSearchResults;

- (CGRect)rectForSearchResults:(BOOL)withKeyboard;

- (BOOL)shouldUpdate:(BOOL)emptyText;

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@protocol TTSearchTextFieldDelegate <UITextFieldDelegate>

- (void)textField:(TTSearchTextField*)textField didSelectObject:(id)object;

@end

