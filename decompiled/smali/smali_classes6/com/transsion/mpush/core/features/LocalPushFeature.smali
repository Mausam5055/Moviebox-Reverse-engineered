.class public final Lcom/transsion/mpush/core/features/LocalPushFeature;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/mpush/api/IPushFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mpush/core/features/LocalPushFeature$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/mpush/core/features/LocalPushFeature$a;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lkotlinx/coroutines/n0;

.field private c:Lcom/transsion/mpush/api/INotificationRenderer;

.field private final d:Lkotlin/Lazy;

.field private volatile e:Ljava/util/List;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mpush/core/features/LocalPushFeature$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mpush/core/features/LocalPushFeature$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mpush/core/features/LocalPushFeature;->g:Lcom/transsion/mpush/core/features/LocalPushFeature$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->b:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/mpush/core/renderer/s;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/s;-><init>()V

    iput-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    new-instance v0, Lcom/transsion/mpush/core/features/a;

    invoke-direct {v0}, Lcom/transsion/mpush/core/features/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->d:Lkotlin/Lazy;

    iput-boolean v1, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->f:Z

    return-void
.end method

.method public static synthetic a()Lcom/transsion/mpush/core/net/PushNetworkApi;
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/features/LocalPushFeature;->i()Lcom/transsion/mpush/core/net/PushNetworkApi;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/mpush/core/features/LocalPushFeature;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/mpush/core/features/LocalPushFeature;->g(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/mpush/core/features/LocalPushFeature;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/mpush/core/features/LocalPushFeature;->m(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/mpush/core/features/LocalPushFeature;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/mpush/core/features/LocalPushFeature;->n(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final e()Lcom/transsion/mpush/core/net/PushNetworkApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/core/net/PushNetworkApi;

    return-object v0
.end method

.method private final f()Z
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final g(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;

    iget v1, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;-><init>(Lcom/transsion/mpush/core/features/LocalPushFeature;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->label:I

    const-string v3, "context"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->I$0:I

    iget-object v0, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->I$0:I

    iget-object v2, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lmn/a;

    iget-object v5, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p2, v2

    move-object v2, v5

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lln/a;->a:Lln/a;

    invoke-virtual {p2}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getPresetAssetPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    sget-object v7, Llg/a;->a:Llg/a$a;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "M_PUSH_SDK"

    const-string v9, "\u3010\u672c\u5730\u63a8\u9001\u3011\u672a\u8bbe\u7f6e\u9884\u7f6e\u6570\u636e\u8def\u5f84\uff0c\u8df3\u8fc7\u9884\u7f6e\u6570\u636e\u52a0\u8f7d"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    iget-object v2, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->e:Ljava/util/List;

    if-nez v2, :cond_5

    invoke-direct {p0, p2}, Lcom/transsion/mpush/core/features/LocalPushFeature;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->e:Ljava/util/List;

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object v7, Llg/a;->a:Llg/a$a;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "M_PUSH_SDK"

    const-string v9, "\u3010\u672c\u5730\u63a8\u9001\u3011\u9884\u7f6e\u6570\u636e\u4e3a\u7a7a\uff0c\u8df3\u8fc7\u5c55\u793a"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    sget-object p2, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    iget-object v7, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v7, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v7, v6

    :cond_7
    invoke-virtual {p2, v7}, Lcom/transsion/mpush/core/db/PushDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/mpush/core/db/PushDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/mpush/core/db/PushDatabase;->j0()Lmn/a;

    move-result-object p2

    iput-object v2, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->I$0:I

    iput v5, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->label:I

    invoke-interface {p2, v0}, Lmn/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    return-object v1

    :cond_8
    :goto_1
    iput-object v2, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->I$0:I

    iput v4, v0, Lcom/transsion/mpush/core/features/LocalPushFeature$loadPresetData$1;->label:I

    invoke-interface {p2, v2, v0}, Lmn/a;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    move-object v0, v2

    :goto_2
    sget-object p2, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move-object v6, v1

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v6, v1, v2}, Lcom/transsion/mpush/core/utils/PushPreference;->x(Landroid/content/Context;J)V

    sget-object v7, Llg/a;->a:Llg/a$a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010\u672c\u5730\u63a8\u9001\u3011\u4f7f\u7528\u9884\u7f6e\u6570\u636e\uff0c\u5171 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u6761"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "M_PUSH_SDK"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/transsion/mpush/core/features/LocalPushFeature;->l(Ljava/util/List;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final h(Lcom/transsion/mpush/core/config/PushConfig;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/transsion/mpush/core/utils/PushPreference;->a(Landroid/content/Context;)Lcom/transsion/mpush/core/config/PushConfig;

    move-result-object p1

    :cond_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/mpush/core/config/PushConfig;->getStartTime()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/mpush/core/config/PushConfig;->getEndTime()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/mpush/core/config/PushConfig;->getPushGap()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u672c\u5730\u63a8\u9001\u3011\u7f51\u7edc\u62c9\u53d6\u6210\u529f\uff0c\u5f53\u524d\u914d\u7f6e\u65f6\u95f4\uff1astartTime="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cendTime="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cpushGap="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final i()Lcom/transsion/mpush/core/net/PushNetworkApi;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/mpush/core/net/PushNetworkApi;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/core/net/PushNetworkApi;

    return-object v0
.end method

.method private final j(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "context"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "open(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v0, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v0, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->e(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/transsion/mpush/core/features/LocalPushFeature$parsePresetFromAsset$type$1;

    invoke-direct {v0}, Lcom/transsion/mpush/core/features/LocalPushFeature$parsePresetFromAsset$type$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkPullMsgResp;->getItems()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v5, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v5, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v2

    :cond_2
    invoke-virtual {v4, v5}, Lcom/transsion/mpush/core/utils/PushPreference;->a(Landroid/content/Context;)Lcom/transsion/mpush/core/config/PushConfig;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkPullMsgResp;->getConfig()Lcom/transsion/mpush/core/config/PushConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v5, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    invoke-virtual {v4, v2, v0}, Lcom/transsion/mpush/core/utils/PushPreference;->o(Landroid/content/Context;Lcom/transsion/mpush/core/config/PushConfig;)V

    :cond_4
    sget-object v0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->a:Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v3

    :cond_5
    invoke-virtual {v0, v3}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_6
    check-cast v6, Lcom/transsion/mpush/api/LocalPushMessage;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/transsion/mpush/api/LocalPushMessage;->setBuiltIn(Z)V

    sget-object v8, Lcom/transsion/mpush/core/config/PushMsgType;->LOCAL_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-virtual {v8}, Lcom/transsion/mpush/core/config/PushMsgType;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/transsion/mpush/api/LocalPushMessage;->setType(Ljava/lang/String;)V

    int-to-long v8, v5

    sub-long v8, v1, v8

    invoke-virtual {v6, v8, v9}, Lcom/transsion/mpush/api/LocalPushMessage;->setReceiveTime(J)V

    invoke-virtual {v6}, Lcom/transsion/mpush/api/LocalPushMessage;->getMsgStatus()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v6, v4}, Lcom/transsion/mpush/api/LocalPushMessage;->setMsgStatus(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_7
    move v5, v7

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u672c\u5730\u63a8\u9001\u3011\u89e3\u6790\u9884\u7f6e\u6570\u636e\u5f02\u5e38\uff0c\u8def\u5f84\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u5f02\u5e38\uff1a"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private final k(Ljava/util/List;)V
    .locals 5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v0}, Lcom/transsion/mpush/api/LocalPushMessage;->getBuiltIn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mpush/api/LocalPushMessage;->getImageArray()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lln/a;->a:Lln/a;

    invoke-virtual {v1}, Lln/a;->f()Lcom/transsion/mpush/api/IPushImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    new-instance v4, Lcom/transsion/mpush/core/features/LocalPushFeature$b;

    invoke-direct {v4, v0}, Lcom/transsion/mpush/core/features/LocalPushFeature$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/transsion/mpush/api/IPushImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcom/transsion/mpush/api/IPushImageLoader$Callback;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final l(Ljava/util/List;I)V
    .locals 4

    sget-object v0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->a:Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "context"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->h(Landroid/content/Context;Ljava/util/List;)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, p2}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->i(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/features/LocalPushFeature;->p(Lcom/transsion/mpush/api/LocalPushMessage;)V

    :cond_3
    return-void
.end method

.method private final m(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;

    iget v4, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;

    invoke-direct {v3, v0, v2}, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;-><init>(Lcom/transsion/mpush/core/features/LocalPushFeature;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "context"

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v6, :cond_2

    if-ne v5, v9, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget v1, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;->I$0:I

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v11, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010\u672c\u5730\u63a8\u9001\u3011\u5f00\u59cb\u5904\u7406\u89e6\u53d1\uff0c\u89e6\u53d1\u6e90\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "M_PUSH_SDK"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    iget-object v5, v0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v5, :cond_5

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v7

    :cond_5
    invoke-virtual {v2, v5}, Lcom/transsion/mpush/core/db/PushDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/mpush/core/db/PushDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/mpush/core/db/PushDatabase;->j0()Lmn/a;

    move-result-object v2

    iput v1, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;->I$0:I

    iput v10, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;->label:I

    invoke-interface {v2, v3}, Lmn/a;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    return-object v4

    :cond_6
    :goto_1
    check-cast v2, Ljava/util/List;

    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u3010\u672c\u5730\u63a8\u9001\u3011\u4ece\u672c\u5730\u6570\u636e\u5e93\u67e5\u8be2\u5230 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " \u6761\u6d88\u606f"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "M_PUSH_SDK"

    const/4 v14, 0x0

    move-object v11, v5

    invoke-static/range {v11 .. v16}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    move-object v11, v2

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-direct {v0, v2, v1}, Lcom/transsion/mpush/core/features/LocalPushFeature;->l(Ljava/util/List;I)V

    goto :goto_2

    :cond_7
    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "M_PUSH_SDK"

    const-string v13, "\u3010\u672c\u5730\u63a8\u9001\u3011\u672c\u5730\u6570\u636e\u5e93\u65e0\u6d88\u606f\uff0c\u51c6\u5907\u7f51\u7edc\u62c9\u53d6"

    const/4 v14, 0x0

    move-object v11, v5

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_2
    if-eqz v1, :cond_8

    if-eq v1, v10, :cond_8

    if-eq v1, v9, :cond_8

    const/4 v10, 0x4

    if-eq v1, v10, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u672c\u5730\u63a8\u9001\u3011\u89e6\u53d1\u6e90\u4e0d\u9700\u8981\u7f51\u7edc\u62c9\u53d6\uff0c\u89e6\u53d1\u6e90\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "M_PUSH_SDK"

    const/4 v14, 0x0

    move-object v11, v5

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    sget-object v10, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v11, v0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v11, :cond_9

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v11, v7

    :cond_9
    invoke-virtual {v10, v11}, Lcom/transsion/mpush/core/utils/PushPreference;->n(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v2}, Lcom/transsion/mpush/api/LocalPushMessage;->getBuiltIn()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/transsion/mpush/core/features/LocalPushFeature;->f()Z

    move-result v2

    if-eqz v2, :cond_c

    iput v9, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;->label:I

    invoke-direct {v0, v1, v3}, Lcom/transsion/mpush/core/features/LocalPushFeature;->n(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_b

    return-object v4

    :cond_b
    :goto_3
    sget-object v5, Llg/a;->a:Llg/a$a;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "M_PUSH_SDK"

    const-string v7, "\u3010\u672c\u5730\u63a8\u9001\u3011\u9884\u7f6e\u6570\u636e\uff0c\u7f51\u7edc\u5df2\u7ecf\u6062\u590d\uff0c\u91cd\u65b0\u83b7\u53d6\u6570\u636e"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_c
    :goto_4
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v9, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v10, v0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v10, :cond_e

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    move-object v7, v10

    :goto_6
    invoke-virtual {v9, v7}, Lcom/transsion/mpush/core/utils/PushPreference;->n(Landroid/content/Context;)Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u3010\u672c\u5730\u63a8\u9001\u3011\u89e6\u53d1\u7f51\u7edc\u62c9\u53d6\uff0c\u672c\u5730\u6d88\u606f\u6570\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u4eca\u65e5\u5df2\u62c9\u53d6\uff1a"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "M_PUSH_SDK"

    const/4 v14, 0x0

    move-object v11, v5

    invoke-static/range {v11 .. v16}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iput v6, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$processTrigger$1;->label:I

    invoke-direct {v0, v1, v3}, Lcom/transsion/mpush/core/features/LocalPushFeature;->n(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_f

    return-object v4

    :cond_f
    :goto_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method

.method private final n(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;

    iget v4, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;

    invoke-direct {v3, v1, v2}, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;-><init>(Lcom/transsion/mpush/core/features/LocalPushFeature;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v10

    iget v4, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->label:I

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v12, :cond_2

    if-ne v4, v11, :cond_1

    iget v0, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->I$0:I

    iget-object v3, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->I$0:I

    iget-object v4, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lmn/a;

    iget-object v5, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v5

    goto/16 :goto_7

    :cond_3
    iget v0, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->I$0:I

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "M_PUSH_SDK"

    const-string v16, "\u3010\u672c\u5730\u63a8\u9001\u3011\u5f00\u59cb\u7f51\u7edc\u62c9\u53d6\u6d88\u606f"

    const/16 v17, 0x0

    move-object v14, v2

    invoke-static/range {v14 .. v19}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/mpush/core/features/LocalPushFeature;->o()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/transsion/mpush/core/features/LocalPushFeature;->f()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u3010\u672c\u5730\u63a8\u9001\u3011\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u5c1d\u8bd5\u4f7f\u7528\u9884\u7f6e\u6570\u636e"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "M_PUSH_SDK"

    const/16 v17, 0x0

    move-object v14, v2

    invoke-static/range {v14 .. v19}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iput v6, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->label:I

    invoke-direct {v1, v0, v3}, Lcom/transsion/mpush/core/features/LocalPushFeature;->g(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_7

    return-object v10

    :cond_7
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_8
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/transsion/mpush/core/features/LocalPushFeature;->e()Lcom/transsion/mpush/core/net/PushNetworkApi;

    move-result-object v4

    sget-object v2, Lln/a;->a:Lln/a;

    invoke-virtual {v2}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getApiPathPrefix()Ljava/lang/String;

    move-result-object v2

    iput v0, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->I$0:I

    iput v5, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->label:I

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v5, v2

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lcom/transsion/mpush/core/net/PushNetworkApi$DefaultImpls;->getLocalNotifications$default(Lcom/transsion/mpush/core/net/PushNetworkApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_9

    return-object v10

    :cond_9
    :goto_2
    check-cast v2, Lcom/transsion/mpush/core/net/SdkBaseDto;

    sget-object v14, Llg/a;->a:Llg/a$a;

    const-string v5, "M_PUSH_SDK"

    invoke-virtual {v2}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getCode()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u3010\u672c\u5730\u63a8\u9001\u3011\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\uff0c\u54cd\u5e94\u7801\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v14

    invoke-static/range {v4 .. v9}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v2}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/mpush/core/net/SdkPullMsgResp;->getConfig()Lcom/transsion/mpush/core/config/PushConfig;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    const-string v15, "context"

    if-eqz v4, :cond_c

    :try_start_4
    sget-object v5, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v6, v1, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v6, :cond_b

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_b
    invoke-virtual {v5, v6, v4}, Lcom/transsion/mpush/core/utils/PushPreference;->o(Landroid/content/Context;Lcom/transsion/mpush/core/config/PushConfig;)V

    :cond_c
    invoke-direct {v1, v4}, Lcom/transsion/mpush/core/features/LocalPushFeature;->h(Lcom/transsion/mpush/core/config/PushConfig;)V

    sget-object v4, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v5, v1, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v5, :cond_d

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_d
    invoke-virtual {v2}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/transsion/mpush/core/net/SdkPullMsgResp;->getSeekingItems()Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v4, v5, v6}, Lcom/transsion/mpush/core/utils/PushPreference;->s(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/mpush/core/net/SdkPullMsgResp;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/transsion/mpush/core/net/SdkPullMsgResp;->getItems()Ljava/util/List;

    move-result-object v2

    goto :goto_5

    :cond_f
    const/4 v2, 0x0

    :goto_5
    iget-object v5, v1, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v5, :cond_10

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/transsion/mpush/core/utils/PushPreference;->x(Landroid/content/Context;J)V

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_18

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_9

    :cond_11
    const-string v5, "M_PUSH_SDK"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u3010\u672c\u5730\u63a8\u9001\u3011\u7f51\u7edc\u62c9\u53d6\u6210\u529f\uff0c\u83b7\u53d6 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u6761\u6d88\u606f"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v14

    invoke-static/range {v4 .. v9}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v4, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->a:Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;

    invoke-virtual {v4, v2}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v14, v8, 0x1

    if-gez v8, :cond_12

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_12
    check-cast v9, Lcom/transsion/mpush/api/LocalPushMessage;

    move/from16 p1, v14

    int-to-long v13, v8

    sub-long v13, v4, v13

    invoke-virtual {v9, v13, v14}, Lcom/transsion/mpush/api/LocalPushMessage;->setReceiveTime(J)V

    invoke-virtual {v9, v7}, Lcom/transsion/mpush/api/LocalPushMessage;->setMsgStatus(I)V

    sget-object v8, Lcom/transsion/mpush/core/config/PushMsgType;->LOCAL_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-virtual {v8}, Lcom/transsion/mpush/core/config/PushMsgType;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/transsion/mpush/api/LocalPushMessage;->setType(Ljava/lang/String;)V

    sget-object v8, Lln/b;->a:Lln/b;

    iget-object v13, v1, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v13, :cond_13

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_13
    invoke-virtual {v8, v13, v9}, Lln/b;->j(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    move/from16 v8, p1

    goto :goto_6

    :cond_14
    sget-object v4, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    iget-object v5, v1, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v5, :cond_15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_15
    invoke-virtual {v4, v5}, Lcom/transsion/mpush/core/db/PushDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/mpush/core/db/PushDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/mpush/core/db/PushDatabase;->j0()Lmn/a;

    move-result-object v4

    iput-object v2, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->L$0:Ljava/lang/Object;

    iput-object v4, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->L$1:Ljava/lang/Object;

    iput v0, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->I$0:I

    iput v12, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->label:I

    invoke-interface {v4, v3}, Lmn/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v10, :cond_16

    return-object v10

    :cond_16
    :goto_7
    iput-object v2, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->L$1:Ljava/lang/Object;

    iput v0, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->I$0:I

    iput v11, v3, Lcom/transsion/mpush/core/features/LocalPushFeature$pullFromNetwork$1;->label:I

    invoke-interface {v4, v2, v3}, Lmn/a;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_17

    return-object v10

    :cond_17
    move-object v3, v2

    :goto_8
    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v5, "M_PUSH_SDK"

    const-string v2, "\u3010\u672c\u5730\u63a8\u9001\u3011\u6d88\u606f\u5df2\u4fdd\u5b58\u5230\u6570\u636e\u5e93\uff0c\u5f00\u59cb\u5904\u7406"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {v1, v3, v0}, Lcom/transsion/mpush/core/features/LocalPushFeature;->l(Ljava/util/List;I)V

    invoke-direct {v1, v3}, Lcom/transsion/mpush/core/features/LocalPushFeature;->k(Ljava/util/List;)V

    goto :goto_b

    :cond_18
    :goto_9
    const-string v5, "M_PUSH_SDK"

    const-string v6, "\u3010\u672c\u5730\u63a8\u9001\u3011\u7f51\u7edc\u62c9\u53d6\u6210\u529f\uff0c\u4f46\u6d88\u606f\u5217\u8868\u4e3a\u7a7a"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v14

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_b

    :cond_19
    const-string v5, "M_PUSH_SDK"

    invoke-virtual {v2}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getMsg()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u672c\u5730\u63a8\u9001\u3011\u7f51\u7edc\u62c9\u53d6\u5931\u8d25\uff0c\u54cd\u5e94\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v14

    invoke-static/range {v4 .. v9}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_b

    :goto_a
    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u672c\u5730\u63a8\u9001\u3011\u7f51\u7edc\u62c9\u53d6\u5f02\u5e38\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "M_PUSH_SDK"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final o()Z
    .locals 8

    sget-object v6, Lcom/transsion/mpush/core/utils/b;->a:Lcom/transsion/mpush/core/utils/b;

    iget-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    const-string v1, "context"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    sget-object v0, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v4, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v4, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v0, v4}, Lcom/transsion/mpush/core/utils/PushPreference;->a(Landroid/content/Context;)Lcom/transsion/mpush/core/config/PushConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/mpush/core/config/PushConfig;->getStartTime()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_2
    const/16 v4, 0x3c

    const/16 v5, 0x1e

    const/16 v7, 0x1e0

    move-object v0, v6

    move-object v1, v3

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/mpush/core/utils/b;->d(Landroid/content/Context;Ljava/lang/String;III)Lcom/transsion/mpush/core/utils/b$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mpush/core/utils/b$d;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/mpush/core/utils/b$d;->b()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/transsion/mpush/core/utils/b;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/mpush/core/utils/b$d;->c()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/mpush/core/utils/b$d;->a()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/transsion/mpush/core/utils/b;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/mpush/core/utils/b$d;->e()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/transsion/mpush/core/utils/b;->u(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u3010\u672c\u5730\u63a8\u9001\u3011\u672a\u5230\u8fbe\u8bf7\u6c42\u65f6\u95f4\uff0c\u8df3\u8fc7\u7f51\u7edc\u62c9\u53d6\uff0c\u5f53\u524d\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u6563\u5217\u504f\u79fb\uff1a"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s\uff08\u7a97\u53e3\uff1a-3600s~+1800s\uff09\uff0c\u5b9e\u9645\u8bf7\u6c42\u65f6\u95f4\uff1a"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cseed\u6765\u6e90\uff1a"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method private final p(Lcom/transsion/mpush/api/LocalPushMessage;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->f:Z

    if-nez v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010\u672c\u5730\u63a8\u9001\u3011\u53d1\u9001\u5904\u7406\u5f00\u5173\u5173\u95ed\uff0c\u8df3\u8fc7\u5c55\u793a\uff0cmsgId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v0, v1, p1}, Lcom/transsion/mpush/api/INotificationRenderer;->show(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V

    return-void
.end method

.method private final q()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->c:Lcom/transsion/mpush/api/INotificationRenderer;

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

    iget-object v1, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

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

    const-string v3, "\u3010\u672c\u5730\u63a8\u9001\u3011\u9884\u521b\u5efa\u901a\u77e5\u6e20\u9053\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->b:Lkotlinx/coroutines/n0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/mpush/core/features/LocalPushFeature;->q()V

    return-void
.end method

.method public onMessageReceive(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/api/IPushFeature$DefaultImpls;->onMessageReceive(Lcom/transsion/mpush/api/IPushFeature;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrigger(I)V
    .locals 13

    iget-boolean v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->f:Z

    if-nez v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010\u672c\u5730\u63a8\u9001\u3011\u53d1\u9001\u5904\u7406\u5f00\u5173\u5173\u95ed\uff0c\u5ffd\u7565\u89e6\u53d1\uff0c\u89e6\u53d1\u6e90\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "M_PUSH_SDK"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v7, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010\u672c\u5730\u63a8\u9001\u3011\u6536\u5230\u89e6\u53d1\u4e8b\u4ef6\uff0c\u89e6\u53d1\u6e90\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u5f00\u59cb\u5904\u7406"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "M_PUSH_SDK"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->b:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/mpush/core/features/LocalPushFeature$onTrigger$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/mpush/core/features/LocalPushFeature$onTrigger$1;-><init>(Lcom/transsion/mpush/core/features/LocalPushFeature;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public refreshMessage(Ljava/lang/Object;)Z
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/mpush/core/features/LocalPushFeature;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "M_PUSH_SDK"

    const-string v4, "\u3010\u672c\u5730\u63a8\u9001\u3011\u53d1\u9001\u5904\u7406\u5f00\u5173\u5173\u95ed\uff0c\u5ffd\u7565\u5237\u65b0\u6d88\u606f"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v1

    :cond_0
    instance-of v0, p1, Lcom/transsion/mpush/api/LocalPushMessage;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/features/LocalPushFeature;->p(Lcom/transsion/mpush/api/LocalPushMessage;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
