.class public final Lcom/transsion/push/feature/tpush/FcmPushInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/mpush/api/IFcmMessageInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/feature/tpush/FcmPushInterceptor$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/push/feature/tpush/FcmPushInterceptor$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->c:Lcom/transsion/push/feature/tpush/FcmPushInterceptor$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/push/feature/tpush/a;

    invoke-direct {v0}, Lcom/transsion/push/feature/tpush/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/push/feature/tpush/b;

    invoke-direct {v0}, Lcom/transsion/push/feature/tpush/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/push/feature/sport/SportsNotificationRenderer;
    .locals 1

    invoke-static {}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->j()Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/push/feature/sport/a;
    .locals 1

    invoke-static {}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->g()Lcom/transsion/push/feature/sport/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/push/feature/tpush/FcmPushInterceptor;Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->f(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lcom/transsion/push/feature/sport/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/push/feature/sport/a;

    return-object v0
.end method

.method private final e()Lcom/transsion/push/feature/sport/SportsNotificationRenderer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    return-object v0
.end method

.method private final f(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;

    iget v1, v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;->label:I

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;-><init>(Lcom/transsion/push/feature/tpush/FcmPushInterceptor;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p3, v4, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v4, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;->label:I

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/transsion/mpush/api/LocalPushMessage;

    iget-object p1, v4, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p3, Lcom/transsion/mpush/core/utils/c;->a:Lcom/transsion/mpush/core/utils/c;

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {p3, v1, v3}, Lcom/transsion/mpush/core/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_3

    goto :goto_5

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->d()Lcom/transsion/push/feature/sport/a;

    move-result-object v1

    iput-object p1, v4, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;->L$0:Ljava/lang/Object;

    iput-object p2, v4, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$handleSportsMessage$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/push/feature/sport/a$a;->a(Lcom/transsion/push/feature/sport/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    check-cast p3, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p3}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->e()Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/push/feature/sport/ServerMatchListItemData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer;->J(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/push/feature/sport/ServerMatchListItemData;)V

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->e()Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v7}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer;->J(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/push/feature/sport/ServerMatchListItemData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->e()Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v7}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer;->J(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/push/feature/sport/ServerMatchListItemData;)V

    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static final g()Lcom/transsion/push/feature/sport/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/push/feature/sport/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/push/feature/sport/a;

    return-object v0
.end method

.method private static final j()Lcom/transsion/push/feature/sport/SportsNotificationRenderer;
    .locals 1

    new-instance v0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    invoke-direct {v0}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final h()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/push/feature/tpush/IRefreshConfig;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/push/feature/tpush/IRefreshConfig;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/push/feature/tpush/IRefreshConfig;->a()V

    :cond_0
    return-void
.end method

.method public final i(Z)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$onLogRetrieve$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$onLogRetrieve$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public intercept(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$intercept$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$intercept$1;

    iget v1, v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$intercept$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$intercept$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$intercept$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$intercept$1;-><init>(Lcom/transsion/push/feature/tpush/FcmPushInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$intercept$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$intercept$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-string p3, "clientLogsRetrieve"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p2, p3, v2, v4, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object p1, v5

    :cond_3
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "toLowerCase(...)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const-string p1, "true"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v3}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->i(Z)V

    :cond_5
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p3, "configRefreshPush"

    invoke-static {p2, p3, v2, v4, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->h()V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_7
    const-class p3, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-static {p2, p3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/mpush/api/LocalPushMessage;

    if-nez p2, :cond_8

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_8
    sget-object p3, Lcom/transsion/mpush/core/utils/c;->a:Lcom/transsion/mpush/core/utils/c;

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v4

    const-string v5, "msg_type"

    invoke-virtual {p3, v4, v5}, Lcom/transsion/mpush/core/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SportsLiveEventRemind"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u63a5\u6536\u5230SportsLiveEventRemind\u7684\u901a\u77e5\uff0cdeeplink:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "FcmPushInterceptor"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getDeeplink()Ljava/lang/String;

    move-result-object v2

    const-string v4, "msgId"

    invoke-virtual {p3, v2, v4}, Lcom/transsion/mpush/core/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_9

    const-string p3, ""

    :cond_9
    invoke-virtual {p2, p3}, Lcom/transsion/mpush/api/LocalPushMessage;->setMessageId(Ljava/lang/String;)V

    const-string v2, "fcm_push"

    invoke-virtual {p2, v2}, Lcom/transsion/mpush/api/LocalPushMessage;->setSource(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/mpush/core/config/PushMsgType;->ONLINE_JSON_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-virtual {v2}, Lcom/transsion/mpush/core/config/PushMsgType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/transsion/mpush/api/LocalPushMessage;->setType(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v2

    invoke-static {p3}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_a
    const-wide/16 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4, v5}, Lcom/transsion/push/PushManager;->trackArrive(J)V

    iput v3, v0, Lcom/transsion/push/feature/tpush/FcmPushInterceptor$intercept$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/push/feature/tpush/FcmPushInterceptor;->f(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
