#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "Hello.h"

@interface HelloTest : XCTestCase
@end

@implementation HelloTest

- (void)testHello
{
  Hello *mockedHello = OCMStrictClassMock([Hello class]);
  [OCMExpect([mockedHello hello]) andReturn:@"hi"];

  XCTAssertEqualObjects([mockedHello hello], @"hi");
}

@end
