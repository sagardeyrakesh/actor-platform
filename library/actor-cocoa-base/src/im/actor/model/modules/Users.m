//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Users.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/StorageProvider.h"
#include "im/actor/model/api/base/SeqUpdate.h"
#include "im/actor/model/api/rpc/RequestEditName.h"
#include "im/actor/model/api/rpc/RequestEditUserLocalName.h"
#include "im/actor/model/api/rpc/ResponseSeq.h"
#include "im/actor/model/api/updates/UpdateUserLocalNameChanged.h"
#include "im/actor/model/api/updates/UpdateUserNameChanged.h"
#include "im/actor/model/concurrency/Command.h"
#include "im/actor/model/concurrency/CommandCallback.h"
#include "im/actor/model/droidkit/engine/KeyValueEngine.h"
#include "im/actor/model/droidkit/engine/KeyValueStorage.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/Users.h"
#include "im/actor/model/mvvm/MVVMCollection.h"
#include "im/actor/model/network/RpcCallback.h"
#include "im/actor/model/network/RpcException.h"
#include "im/actor/model/network/RpcInternalException.h"
#include "im/actor/model/viewmodel/UserVM.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/lang/Runnable.h"

@interface ImActorModelModulesUsers () {
 @public
  id<DKKeyValueEngine> users_;
  AMMVVMCollection *collection_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers, users_, id<DKKeyValueEngine>)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers, collection_, AMMVVMCollection *)

@interface ImActorModelModulesUsers_$1 : AMMVVMCollection {
 @public
  ImActorModelModulesUsers *this$0_;
}

- (AMUserVM *)createNewWithDKKeyValueItem:(AMUser *)raw;

- (IOSByteArray *)serializeWithDKKeyValueItem:(AMUser *)raw;

- (AMUser *)deserializeWithByteArray:(IOSByteArray *)raw;

- (instancetype)initWithImActorModelModulesUsers:(ImActorModelModulesUsers *)outer$
                           withDKKeyValueStorage:(id<DKKeyValueStorage>)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$1, this$0_, ImActorModelModulesUsers *)

__attribute__((unused)) static void ImActorModelModulesUsers_$1_initWithImActorModelModulesUsers_withDKKeyValueStorage_(ImActorModelModulesUsers_$1 *self, ImActorModelModulesUsers *outer$, id<DKKeyValueStorage> arg$0);

__attribute__((unused)) static ImActorModelModulesUsers_$1 *new_ImActorModelModulesUsers_$1_initWithImActorModelModulesUsers_withDKKeyValueStorage_(ImActorModelModulesUsers *outer$, id<DKKeyValueStorage> arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$1)

@interface ImActorModelModulesUsers_$2 : NSObject < AMCommand > {
 @public
  ImActorModelModulesUsers *this$0_;
  NSString *val$newName_;
}

- (void)startWithCallback:(id<AMCommandCallback>)callback;

- (instancetype)initWithImActorModelModulesUsers:(ImActorModelModulesUsers *)outer$
                                    withNSString:(NSString *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2, this$0_, ImActorModelModulesUsers *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2, val$newName_, NSString *)

__attribute__((unused)) static void ImActorModelModulesUsers_$2_initWithImActorModelModulesUsers_withNSString_(ImActorModelModulesUsers_$2 *self, ImActorModelModulesUsers *outer$, NSString *capture$0);

__attribute__((unused)) static ImActorModelModulesUsers_$2 *new_ImActorModelModulesUsers_$2_initWithImActorModelModulesUsers_withNSString_(ImActorModelModulesUsers *outer$, NSString *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$2)

@interface ImActorModelModulesUsers_$2_$1 : NSObject < AMRpcCallback > {
 @public
  ImActorModelModulesUsers_$2 *this$0_;
  id<AMCommandCallback> val$callback_;
}

- (void)onResult:(APResponseSeq *)response;

- (void)onError:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesUsers_$2:(ImActorModelModulesUsers_$2 *)outer$
                              withAMCommandCallback:(id<AMCommandCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$2_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$1, this$0_, ImActorModelModulesUsers_$2 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$1, val$callback_, id<AMCommandCallback>)

__attribute__((unused)) static void ImActorModelModulesUsers_$2_$1_initWithImActorModelModulesUsers_$2_withAMCommandCallback_(ImActorModelModulesUsers_$2_$1 *self, ImActorModelModulesUsers_$2 *outer$, id<AMCommandCallback> capture$0);

__attribute__((unused)) static ImActorModelModulesUsers_$2_$1 *new_ImActorModelModulesUsers_$2_$1_initWithImActorModelModulesUsers_$2_withAMCommandCallback_(ImActorModelModulesUsers_$2 *outer$, id<AMCommandCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$2_$1)

@interface ImActorModelModulesUsers_$2_$1_$1 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesUsers_$2_$1 *this$0_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesUsers_$2_$1:(ImActorModelModulesUsers_$2_$1 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$2_$1_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$1_$1, this$0_, ImActorModelModulesUsers_$2_$1 *)

__attribute__((unused)) static void ImActorModelModulesUsers_$2_$1_$1_initWithImActorModelModulesUsers_$2_$1_(ImActorModelModulesUsers_$2_$1_$1 *self, ImActorModelModulesUsers_$2_$1 *outer$);

__attribute__((unused)) static ImActorModelModulesUsers_$2_$1_$1 *new_ImActorModelModulesUsers_$2_$1_$1_initWithImActorModelModulesUsers_$2_$1_(ImActorModelModulesUsers_$2_$1 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$2_$1_$1)

@interface ImActorModelModulesUsers_$2_$1_$2 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesUsers_$2_$1 *this$0_;
  AMRpcException *val$e_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesUsers_$2_$1:(ImActorModelModulesUsers_$2_$1 *)outer$
                                    withAMRpcException:(AMRpcException *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$2_$1_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$1_$2, this$0_, ImActorModelModulesUsers_$2_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$2_$1_$2, val$e_, AMRpcException *)

__attribute__((unused)) static void ImActorModelModulesUsers_$2_$1_$2_initWithImActorModelModulesUsers_$2_$1_withAMRpcException_(ImActorModelModulesUsers_$2_$1_$2 *self, ImActorModelModulesUsers_$2_$1 *outer$, AMRpcException *capture$0);

__attribute__((unused)) static ImActorModelModulesUsers_$2_$1_$2 *new_ImActorModelModulesUsers_$2_$1_$2_initWithImActorModelModulesUsers_$2_$1_withAMRpcException_(ImActorModelModulesUsers_$2_$1 *outer$, AMRpcException *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$2_$1_$2)

@interface ImActorModelModulesUsers_$3 : NSObject < AMCommand > {
 @public
  ImActorModelModulesUsers *this$0_;
  jint val$uid_;
  NSString *val$name_;
}

- (void)startWithCallback:(id<AMCommandCallback>)callback;

- (instancetype)initWithImActorModelModulesUsers:(ImActorModelModulesUsers *)outer$
                                         withInt:(jint)capture$0
                                    withNSString:(NSString *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$3)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$3, this$0_, ImActorModelModulesUsers *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$3, val$name_, NSString *)

__attribute__((unused)) static void ImActorModelModulesUsers_$3_initWithImActorModelModulesUsers_withInt_withNSString_(ImActorModelModulesUsers_$3 *self, ImActorModelModulesUsers *outer$, jint capture$0, NSString *capture$1);

__attribute__((unused)) static ImActorModelModulesUsers_$3 *new_ImActorModelModulesUsers_$3_initWithImActorModelModulesUsers_withInt_withNSString_(ImActorModelModulesUsers *outer$, jint capture$0, NSString *capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$3)

@interface ImActorModelModulesUsers_$3_$1 : NSObject < JavaLangRunnable > {
 @public
  id<AMCommandCallback> val$callback_;
}

- (void)run;

- (instancetype)initWithAMCommandCallback:(id<AMCommandCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$3_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$3_$1, val$callback_, id<AMCommandCallback>)

__attribute__((unused)) static void ImActorModelModulesUsers_$3_$1_initWithAMCommandCallback_(ImActorModelModulesUsers_$3_$1 *self, id<AMCommandCallback> capture$0);

__attribute__((unused)) static ImActorModelModulesUsers_$3_$1 *new_ImActorModelModulesUsers_$3_$1_initWithAMCommandCallback_(id<AMCommandCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$3_$1)

@interface ImActorModelModulesUsers_$3_$2 : NSObject < AMRpcCallback > {
 @public
  ImActorModelModulesUsers_$3 *this$0_;
  id<AMCommandCallback> val$callback_;
}

- (void)onResult:(APResponseSeq *)response;

- (void)onError:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesUsers_$3:(ImActorModelModulesUsers_$3 *)outer$
                              withAMCommandCallback:(id<AMCommandCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$3_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$3_$2, this$0_, ImActorModelModulesUsers_$3 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$3_$2, val$callback_, id<AMCommandCallback>)

__attribute__((unused)) static void ImActorModelModulesUsers_$3_$2_initWithImActorModelModulesUsers_$3_withAMCommandCallback_(ImActorModelModulesUsers_$3_$2 *self, ImActorModelModulesUsers_$3 *outer$, id<AMCommandCallback> capture$0);

__attribute__((unused)) static ImActorModelModulesUsers_$3_$2 *new_ImActorModelModulesUsers_$3_$2_initWithImActorModelModulesUsers_$3_withAMCommandCallback_(ImActorModelModulesUsers_$3 *outer$, id<AMCommandCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$3_$2)

@interface ImActorModelModulesUsers_$3_$2_$1 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesUsers_$3_$2 *this$0_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesUsers_$3_$2:(ImActorModelModulesUsers_$3_$2 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$3_$2_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$3_$2_$1, this$0_, ImActorModelModulesUsers_$3_$2 *)

__attribute__((unused)) static void ImActorModelModulesUsers_$3_$2_$1_initWithImActorModelModulesUsers_$3_$2_(ImActorModelModulesUsers_$3_$2_$1 *self, ImActorModelModulesUsers_$3_$2 *outer$);

__attribute__((unused)) static ImActorModelModulesUsers_$3_$2_$1 *new_ImActorModelModulesUsers_$3_$2_$1_initWithImActorModelModulesUsers_$3_$2_(ImActorModelModulesUsers_$3_$2 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$3_$2_$1)

@interface ImActorModelModulesUsers_$3_$2_$2 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesUsers_$3_$2 *this$0_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesUsers_$3_$2:(ImActorModelModulesUsers_$3_$2 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers_$3_$2_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesUsers_$3_$2_$2, this$0_, ImActorModelModulesUsers_$3_$2 *)

__attribute__((unused)) static void ImActorModelModulesUsers_$3_$2_$2_initWithImActorModelModulesUsers_$3_$2_(ImActorModelModulesUsers_$3_$2_$2 *self, ImActorModelModulesUsers_$3_$2 *outer$);

__attribute__((unused)) static ImActorModelModulesUsers_$3_$2_$2 *new_ImActorModelModulesUsers_$3_$2_$2_initWithImActorModelModulesUsers_$3_$2_(ImActorModelModulesUsers_$3_$2 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers_$3_$2_$2)

@implementation ImActorModelModulesUsers

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  ImActorModelModulesUsers_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

- (AMMVVMCollection *)getUsersCollection {
  return collection_;
}

- (id<DKKeyValueEngine>)getUsers {
  return users_;
}

- (id<AMCommand>)editMyNameWithNSString:(NSString *)newName {
  return new_ImActorModelModulesUsers_$2_initWithImActorModelModulesUsers_withNSString_(self, newName);
}

- (id<AMCommand>)editNameWithInt:(jint)uid
                    withNSString:(NSString *)name {
  return new_ImActorModelModulesUsers_$3_initWithImActorModelModulesUsers_withInt_withNSString_(self, uid, name);
}

- (void)resetModule {
  [((id<DKKeyValueEngine>) nil_chk(users_)) clear];
}

@end

void ImActorModelModulesUsers_initWithImActorModelModulesModules_(ImActorModelModulesUsers *self, ImActorModelModulesModules *messenger) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, messenger);
  self->collection_ = new_ImActorModelModulesUsers_$1_initWithImActorModelModulesUsers_withDKKeyValueStorage_(self, [((id<AMStorageProvider>) nil_chk([((AMConfiguration *) nil_chk([((ImActorModelModulesModules *) nil_chk(messenger)) getConfiguration])) getStorageProvider])) createKeyValueWithName:ImActorModelModulesBaseModule_get_STORAGE_USERS_()]);
  self->users_ = [self->collection_ getEngine];
}

ImActorModelModulesUsers *new_ImActorModelModulesUsers_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesUsers *self = [ImActorModelModulesUsers alloc];
  ImActorModelModulesUsers_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers)

@implementation ImActorModelModulesUsers_$1

- (AMUserVM *)createNewWithDKKeyValueItem:(AMUser *)raw {
  return new_AMUserVM_initWithAMUser_withImActorModelModulesModules_(raw, [this$0_ modules]);
}

- (IOSByteArray *)serializeWithDKKeyValueItem:(AMUser *)raw {
  return [((AMUser *) nil_chk(raw)) toByteArray];
}

- (AMUser *)deserializeWithByteArray:(IOSByteArray *)raw {
  @try {
    return new_AMUser_initWithByteArray_(raw);
  }
  @catch (JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    return nil;
  }
}

- (instancetype)initWithImActorModelModulesUsers:(ImActorModelModulesUsers *)outer$
                           withDKKeyValueStorage:(id<DKKeyValueStorage>)arg$0 {
  ImActorModelModulesUsers_$1_initWithImActorModelModulesUsers_withDKKeyValueStorage_(self, outer$, arg$0);
  return self;
}

@end

void ImActorModelModulesUsers_$1_initWithImActorModelModulesUsers_withDKKeyValueStorage_(ImActorModelModulesUsers_$1 *self, ImActorModelModulesUsers *outer$, id<DKKeyValueStorage> arg$0) {
  self->this$0_ = outer$;
  (void) AMMVVMCollection_initWithDKKeyValueStorage_(self, arg$0);
}

ImActorModelModulesUsers_$1 *new_ImActorModelModulesUsers_$1_initWithImActorModelModulesUsers_withDKKeyValueStorage_(ImActorModelModulesUsers *outer$, id<DKKeyValueStorage> arg$0) {
  ImActorModelModulesUsers_$1 *self = [ImActorModelModulesUsers_$1 alloc];
  ImActorModelModulesUsers_$1_initWithImActorModelModulesUsers_withDKKeyValueStorage_(self, outer$, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$1)

@implementation ImActorModelModulesUsers_$2

- (void)startWithCallback:(id<AMCommandCallback>)callback {
  [this$0_ requestWithAPRequest:new_APRequestEditName_initWithNSString_(val$newName_) withAMRpcCallback:new_ImActorModelModulesUsers_$2_$1_initWithImActorModelModulesUsers_$2_withAMCommandCallback_(self, callback)];
}

- (instancetype)initWithImActorModelModulesUsers:(ImActorModelModulesUsers *)outer$
                                    withNSString:(NSString *)capture$0 {
  ImActorModelModulesUsers_$2_initWithImActorModelModulesUsers_withNSString_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesUsers_$2_initWithImActorModelModulesUsers_withNSString_(ImActorModelModulesUsers_$2 *self, ImActorModelModulesUsers *outer$, NSString *capture$0) {
  self->this$0_ = outer$;
  self->val$newName_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesUsers_$2 *new_ImActorModelModulesUsers_$2_initWithImActorModelModulesUsers_withNSString_(ImActorModelModulesUsers *outer$, NSString *capture$0) {
  ImActorModelModulesUsers_$2 *self = [ImActorModelModulesUsers_$2 alloc];
  ImActorModelModulesUsers_$2_initWithImActorModelModulesUsers_withNSString_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$2)

@implementation ImActorModelModulesUsers_$2_$1

- (void)onResult:(APResponseSeq *)response {
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onSeqUpdateReceivedWithInt:[((APResponseSeq *) nil_chk(response)) getSeq] withByteArray:[response getState] withAPUpdate:new_APUpdateUserNameChanged_initWithInt_withNSString_([this$0_->this$0_ myUid], this$0_->val$newName_)];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesUsers_$2_$1_$1_initWithImActorModelModulesUsers_$2_$1_(self)];
}

- (void)onError:(AMRpcException *)e {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesUsers_$2_$1_$2_initWithImActorModelModulesUsers_$2_$1_withAMRpcException_(self, e)];
}

- (instancetype)initWithImActorModelModulesUsers_$2:(ImActorModelModulesUsers_$2 *)outer$
                              withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  ImActorModelModulesUsers_$2_$1_initWithImActorModelModulesUsers_$2_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesUsers_$2_$1_initWithImActorModelModulesUsers_$2_withAMCommandCallback_(ImActorModelModulesUsers_$2_$1 *self, ImActorModelModulesUsers_$2 *outer$, id<AMCommandCallback> capture$0) {
  self->this$0_ = outer$;
  self->val$callback_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesUsers_$2_$1 *new_ImActorModelModulesUsers_$2_$1_initWithImActorModelModulesUsers_$2_withAMCommandCallback_(ImActorModelModulesUsers_$2 *outer$, id<AMCommandCallback> capture$0) {
  ImActorModelModulesUsers_$2_$1 *self = [ImActorModelModulesUsers_$2_$1 alloc];
  ImActorModelModulesUsers_$2_$1_initWithImActorModelModulesUsers_$2_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$2_$1)

@implementation ImActorModelModulesUsers_$2_$1_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResult:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesUsers_$2_$1:(ImActorModelModulesUsers_$2_$1 *)outer$ {
  ImActorModelModulesUsers_$2_$1_$1_initWithImActorModelModulesUsers_$2_$1_(self, outer$);
  return self;
}

@end

void ImActorModelModulesUsers_$2_$1_$1_initWithImActorModelModulesUsers_$2_$1_(ImActorModelModulesUsers_$2_$1_$1 *self, ImActorModelModulesUsers_$2_$1 *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesUsers_$2_$1_$1 *new_ImActorModelModulesUsers_$2_$1_$1_initWithImActorModelModulesUsers_$2_$1_(ImActorModelModulesUsers_$2_$1 *outer$) {
  ImActorModelModulesUsers_$2_$1_$1 *self = [ImActorModelModulesUsers_$2_$1_$1 alloc];
  ImActorModelModulesUsers_$2_$1_$1_initWithImActorModelModulesUsers_$2_$1_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$2_$1_$1)

@implementation ImActorModelModulesUsers_$2_$1_$2

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onError:val$e_];
}

- (instancetype)initWithImActorModelModulesUsers_$2_$1:(ImActorModelModulesUsers_$2_$1 *)outer$
                                    withAMRpcException:(AMRpcException *)capture$0 {
  ImActorModelModulesUsers_$2_$1_$2_initWithImActorModelModulesUsers_$2_$1_withAMRpcException_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesUsers_$2_$1_$2_initWithImActorModelModulesUsers_$2_$1_withAMRpcException_(ImActorModelModulesUsers_$2_$1_$2 *self, ImActorModelModulesUsers_$2_$1 *outer$, AMRpcException *capture$0) {
  self->this$0_ = outer$;
  self->val$e_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesUsers_$2_$1_$2 *new_ImActorModelModulesUsers_$2_$1_$2_initWithImActorModelModulesUsers_$2_$1_withAMRpcException_(ImActorModelModulesUsers_$2_$1 *outer$, AMRpcException *capture$0) {
  ImActorModelModulesUsers_$2_$1_$2 *self = [ImActorModelModulesUsers_$2_$1_$2 alloc];
  ImActorModelModulesUsers_$2_$1_$2_initWithImActorModelModulesUsers_$2_$1_withAMRpcException_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$2_$1_$2)

@implementation ImActorModelModulesUsers_$3

- (void)startWithCallback:(id<AMCommandCallback>)callback {
  AMUser *user = [((id<DKKeyValueEngine>) nil_chk([this$0_ getUsers])) getValueWithKey:val$uid_];
  if (user == nil) {
    [this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesUsers_$3_$1_initWithAMCommandCallback_(callback)];
    return;
  }
  [this$0_ requestWithAPRequest:new_APRequestEditUserLocalName_initWithInt_withLong_withNSString_([((AMUser *) nil_chk(user)) getUid], [user getAccessHash], val$name_) withAMRpcCallback:new_ImActorModelModulesUsers_$3_$2_initWithImActorModelModulesUsers_$3_withAMCommandCallback_(self, callback)];
}

- (instancetype)initWithImActorModelModulesUsers:(ImActorModelModulesUsers *)outer$
                                         withInt:(jint)capture$0
                                    withNSString:(NSString *)capture$1 {
  ImActorModelModulesUsers_$3_initWithImActorModelModulesUsers_withInt_withNSString_(self, outer$, capture$0, capture$1);
  return self;
}

@end

void ImActorModelModulesUsers_$3_initWithImActorModelModulesUsers_withInt_withNSString_(ImActorModelModulesUsers_$3 *self, ImActorModelModulesUsers *outer$, jint capture$0, NSString *capture$1) {
  self->this$0_ = outer$;
  self->val$uid_ = capture$0;
  self->val$name_ = capture$1;
  (void) NSObject_init(self);
}

ImActorModelModulesUsers_$3 *new_ImActorModelModulesUsers_$3_initWithImActorModelModulesUsers_withInt_withNSString_(ImActorModelModulesUsers *outer$, jint capture$0, NSString *capture$1) {
  ImActorModelModulesUsers_$3 *self = [ImActorModelModulesUsers_$3 alloc];
  ImActorModelModulesUsers_$3_initWithImActorModelModulesUsers_withInt_withNSString_(self, outer$, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$3)

@implementation ImActorModelModulesUsers_$3_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk(val$callback_)) onError:new_AMRpcInternalException_init()];
}

- (instancetype)initWithAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  ImActorModelModulesUsers_$3_$1_initWithAMCommandCallback_(self, capture$0);
  return self;
}

@end

void ImActorModelModulesUsers_$3_$1_initWithAMCommandCallback_(ImActorModelModulesUsers_$3_$1 *self, id<AMCommandCallback> capture$0) {
  self->val$callback_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesUsers_$3_$1 *new_ImActorModelModulesUsers_$3_$1_initWithAMCommandCallback_(id<AMCommandCallback> capture$0) {
  ImActorModelModulesUsers_$3_$1 *self = [ImActorModelModulesUsers_$3_$1 alloc];
  ImActorModelModulesUsers_$3_$1_initWithAMCommandCallback_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$3_$1)

@implementation ImActorModelModulesUsers_$3_$2

- (void)onResult:(APResponseSeq *)response {
  ImActorModelApiBaseSeqUpdate *update = new_ImActorModelApiBaseSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_([((APResponseSeq *) nil_chk(response)) getSeq], [response getState], APUpdateUserLocalNameChanged_HEADER, [new_APUpdateUserLocalNameChanged_initWithInt_withNSString_(this$0_->val$uid_, this$0_->val$name_) toByteArray]);
  [((ImActorModelModulesUpdates *) nil_chk([this$0_->this$0_ updates])) onUpdateReceivedWithId:update];
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesUsers_$3_$2_$1_initWithImActorModelModulesUsers_$3_$2_(self)];
}

- (void)onError:(AMRpcException *)e {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesUsers_$3_$2_$2_initWithImActorModelModulesUsers_$3_$2_(self)];
}

- (instancetype)initWithImActorModelModulesUsers_$3:(ImActorModelModulesUsers_$3 *)outer$
                              withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  ImActorModelModulesUsers_$3_$2_initWithImActorModelModulesUsers_$3_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesUsers_$3_$2_initWithImActorModelModulesUsers_$3_withAMCommandCallback_(ImActorModelModulesUsers_$3_$2 *self, ImActorModelModulesUsers_$3 *outer$, id<AMCommandCallback> capture$0) {
  self->this$0_ = outer$;
  self->val$callback_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesUsers_$3_$2 *new_ImActorModelModulesUsers_$3_$2_initWithImActorModelModulesUsers_$3_withAMCommandCallback_(ImActorModelModulesUsers_$3 *outer$, id<AMCommandCallback> capture$0) {
  ImActorModelModulesUsers_$3_$2 *self = [ImActorModelModulesUsers_$3_$2 alloc];
  ImActorModelModulesUsers_$3_$2_initWithImActorModelModulesUsers_$3_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$3_$2)

@implementation ImActorModelModulesUsers_$3_$2_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResult:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesUsers_$3_$2:(ImActorModelModulesUsers_$3_$2 *)outer$ {
  ImActorModelModulesUsers_$3_$2_$1_initWithImActorModelModulesUsers_$3_$2_(self, outer$);
  return self;
}

@end

void ImActorModelModulesUsers_$3_$2_$1_initWithImActorModelModulesUsers_$3_$2_(ImActorModelModulesUsers_$3_$2_$1 *self, ImActorModelModulesUsers_$3_$2 *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesUsers_$3_$2_$1 *new_ImActorModelModulesUsers_$3_$2_$1_initWithImActorModelModulesUsers_$3_$2_(ImActorModelModulesUsers_$3_$2 *outer$) {
  ImActorModelModulesUsers_$3_$2_$1 *self = [ImActorModelModulesUsers_$3_$2_$1 alloc];
  ImActorModelModulesUsers_$3_$2_$1_initWithImActorModelModulesUsers_$3_$2_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$3_$2_$1)

@implementation ImActorModelModulesUsers_$3_$2_$2

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onError:new_AMRpcInternalException_init()];
}

- (instancetype)initWithImActorModelModulesUsers_$3_$2:(ImActorModelModulesUsers_$3_$2 *)outer$ {
  ImActorModelModulesUsers_$3_$2_$2_initWithImActorModelModulesUsers_$3_$2_(self, outer$);
  return self;
}

@end

void ImActorModelModulesUsers_$3_$2_$2_initWithImActorModelModulesUsers_$3_$2_(ImActorModelModulesUsers_$3_$2_$2 *self, ImActorModelModulesUsers_$3_$2 *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesUsers_$3_$2_$2 *new_ImActorModelModulesUsers_$3_$2_$2_initWithImActorModelModulesUsers_$3_$2_(ImActorModelModulesUsers_$3_$2 *outer$) {
  ImActorModelModulesUsers_$3_$2_$2 *self = [ImActorModelModulesUsers_$3_$2_$2 alloc];
  ImActorModelModulesUsers_$3_$2_$2_initWithImActorModelModulesUsers_$3_$2_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUsers_$3_$2_$2)
