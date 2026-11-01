.class public final Lcom/transsion/mpush/core/features/FcmPushFeature;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/mpush/api/IPushFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mpush/core/features/FcmPushFeature$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/mpush/core/features/FcmPushFeature$a;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lkotlinx/coroutines/n0;

.field private c:Lcom/transsion/mpush/api/INotificationRenderer;

.field private d:Lcom/transsion/mpush/api/IFcmMessageInterceptor;

.field private e:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mpush/core/features/FcmPushFeature$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mpush/core/features/FcmPushFeature$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mpush/core/features/FcmPushFeature;->f:Lcom/transsion/mpush/core/features/FcmPushFeature$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->b:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/mpush/core/renderer/k;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/k;-><init>()V

    iput-object v0, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/mpush/core/features/FcmPushFeature;Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/mpush/core/features/FcmPushFeature;->c(Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;

    iget v5, v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;

    invoke-direct {v4, v1, v3}, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;-><init>(Lcom/transsion/mpush/core/features/FcmPushFeature;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v5

    iget v6, v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;->label:I

    const/4 v7, 0x0

    const-string v8, "context"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v10, :cond_1

    iget-object v0, v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    instance-of v3, v0, Lcom/google/firebase/messaging/RemoteMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    if-eqz v3, :cond_3

    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    move-object v11, v0

    check-cast v11, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {v11}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_4

    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v3, v9

    :goto_1
    if-nez v3, :cond_7

    sget-object v11, Llg/a;->a:Llg/a$a;

    const-string v12, "FcmPushFeature"

    if-eqz v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010FCM\u63a8\u9001\u3011\u6d88\u606f\u89e3\u6790\u5931\u8d25\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u6d88\u606f\u7c7b\u578b\u4e0d\u652f\u6301\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_7
    sget-object v11, Llg/a;->a:Llg/a$a;

    const-string v12, "FcmPushFeature"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u3010FCM\u63a8\u9001\u3011\u6d88\u606f\u89e3\u6790\u6210\u529f\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\uff0cPayload\u957f\u5ea6\uff1a"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/mpush/core/features/FcmPushFeature;->d:Lcom/transsion/mpush/api/IFcmMessageInterceptor;

    if-eqz v0, :cond_b

    iget-object v6, v1, Lcom/transsion/mpush/core/features/FcmPushFeature;->a:Landroid/content/Context;

    if-nez v6, :cond_8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v6, v9

    :cond_8
    iput-object v2, v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;->L$0:Ljava/lang/Object;

    iput-object v3, v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;->L$1:Ljava/lang/Object;

    iput v10, v4, Lcom/transsion/mpush/core/features/FcmPushFeature$handleMessage$1;->label:I

    invoke-interface {v0, v6, v3, v4}, Lcom/transsion/mpush/api/IFcmMessageInterceptor;->intercept(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_9

    return-object v5

    :cond_9
    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v0, v17

    :goto_2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v10, :cond_a

    move-object v3, v0

    move v7, v10

    goto :goto_3

    :cond_a
    move-object v3, v0

    :cond_b
    :goto_3
    if-eqz v7, :cond_c

    sget-object v10, Llg/a;->a:Llg/a$a;

    const-string v11, "FcmPushFeature"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010FCM\u63a8\u9001\u3011\u6d88\u606f\u5df2\u88ab\u62e6\u622a\u5668\u5904\u7406\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u5904\u7406\u7ed3\u675f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_c
    const-class v0, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/api/LocalPushMessage;

    if-nez v0, :cond_d

    sget-object v10, Llg/a;->a:Llg/a$a;

    const-string v11, "FcmPushFeature"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010FCM\u63a8\u9001\u3011\u6d88\u606f\u89e3\u6790\u4e3aLocalPushMessage\u5931\u8d25\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u6d88\u606f\u7ec8\u6b62"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_d
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v3

    invoke-static {v2}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_4

    :cond_e
    const-wide/16 v4, 0x0

    :goto_4
    invoke-virtual {v3, v4, v5}, Lcom/transsion/push/PushManager;->trackArrive(J)V

    invoke-virtual {v0, v2}, Lcom/transsion/mpush/api/LocalPushMessage;->setMessageId(Ljava/lang/String;)V

    const-string v3, "fcm_push"

    invoke-virtual {v0, v3}, Lcom/transsion/mpush/api/LocalPushMessage;->setSource(Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/mpush/core/config/PushMsgType;->ONLINE_JSON_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-virtual {v3}, Lcom/transsion/mpush/core/config/PushMsgType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/mpush/api/LocalPushMessage;->setType(Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/mpush/core/utils/c;->a:Lcom/transsion/mpush/core/utils/c;

    invoke-virtual {v0}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v4

    const-string v5, "msg_type"

    invoke-virtual {v3, v4, v5}, Lcom/transsion/mpush/core/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v11, "FcmPushFeature"

    invoke-virtual {v0}, Lcom/transsion/mpush/api/LocalPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u3010FCM\u63a8\u9001\u3011\u8bc6\u522b\u4e3a\u672c\u5730\u63a8\u9001\u6d88\u606f\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\uff0c\u6d88\u606f\u7c7b\u578b\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u6807\u9898\uff1a"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v10, v4

    invoke-static/range {v10 .. v15}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v11, "FcmPushFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010FCM\u63a8\u9001\u3011\u5f00\u59cb\u5c55\u793a\u901a\u77e5\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v10, v4

    invoke-static/range {v10 .. v15}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v3, v1, Lcom/transsion/mpush/core/features/FcmPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    iget-object v4, v1, Lcom/transsion/mpush/core/features/FcmPushFeature;->a:Landroid/content/Context;

    if-nez v4, :cond_f

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    move-object v9, v4

    :goto_5
    invoke-interface {v3, v9, v0}, Lcom/transsion/mpush/api/INotificationRenderer;->show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :goto_6
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010FCM\u63a8\u9001\u3011\u6d88\u606f\u5904\u7406\u5f02\u5e38\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u5f02\u5e38\uff1a"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "FcmPushFeature"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final e()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    instance-of v1, v0, Lcom/transsion/mpush/core/renderer/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/mpush/core/renderer/i;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_2

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/transsion/mpush/core/renderer/i;->l(Landroid/content/Context;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010FCM\u63a8\u9001\u3011\u9884\u521b\u5efa\u901a\u77e5\u6e20\u9053\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "FcmPushFeature"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final b()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->e:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final d(Lcom/transsion/mpush/api/IFcmMessageInterceptor;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->d:Lcom/transsion/mpush/api/IFcmMessageInterceptor;

    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->b:Lkotlinx/coroutines/n0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/mpush/core/features/FcmPushFeature;->e()V

    return-void
.end method

.method public onMessageReceive(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13

    const-string v0, "msgId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010FCM\u63a8\u9001\u3011\u6536\u5230FCM\u6d88\u606f\uff0c\u6d88\u606fID\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u5f00\u59cb\u5904\u7406"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "FcmPushFeature"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v7, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->b:Lkotlinx/coroutines/n0;

    new-instance v10, Lcom/transsion/mpush/core/features/FcmPushFeature$onMessageReceive$1;

    const/4 v0, 0x0

    invoke-direct {v10, p0, p1, p2, v0}, Lcom/transsion/mpush/core/features/FcmPushFeature$onMessageReceive$1;-><init>(Lcom/transsion/mpush/core/features/FcmPushFeature;Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onTrigger(I)V
    .locals 7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string p1, "\u3010FCM\u63a8\u9001\u3011NETWORK_CONNECTED\uff0c\u6267\u884c token \u6821\u9a8c\u4e0a\u62a5"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "FcmPushFeature"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/mpush/core/fcm/m;->a:Lcom/transsion/mpush/core/fcm/m;

    invoke-virtual {p1}, Lcom/transsion/mpush/core/fcm/m;->h()V

    :cond_0
    return-void
.end method

.method public refreshMessage(Ljava/lang/Object;)Z
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsion/mpush/api/LocalPushMessage;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fcm_push"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/FcmPushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/transsion/mpush/api/INotificationRenderer;->show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
