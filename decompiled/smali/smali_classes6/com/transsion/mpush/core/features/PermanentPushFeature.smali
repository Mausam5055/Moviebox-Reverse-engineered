.class public final Lcom/transsion/mpush/core/features/PermanentPushFeature;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/mpush/api/IPushFeature;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private final c:Lkotlinx/coroutines/n0;

.field private d:Lcom/transsion/mpush/core/renderer/v;

.field private final e:Lkotlin/Lazy;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private g:Lcom/transsion/mpush/core/config/PermanentConfig;

.field private h:Ljava/lang/String;

.field private final i:I

.field private j:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PUSH_SHOW"

    iput-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->c:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/mpush/core/renderer/v;

    invoke-direct {v0}, Lcom/transsion/mpush/core/renderer/v;-><init>()V

    iput-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->d:Lcom/transsion/mpush/core/renderer/v;

    new-instance v0, Lcom/transsion/mpush/core/features/b;

    invoke-direct {v0}, Lcom/transsion/mpush/core/features/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->e:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->i:I

    return-void
.end method

.method public static synthetic a()Lcom/transsion/mpush/core/net/PushNetworkApi;
    .locals 1

    invoke-static {}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->m()Lcom/transsion/mpush/core/net/PushNetworkApi;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/mpush/core/features/PermanentPushFeature;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/mpush/core/features/PermanentPushFeature;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/mpush/core/features/PermanentPushFeature;)I
    .locals 0

    iget p0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->i:I

    return p0
.end method

.method public static final synthetic e(Lcom/transsion/mpush/core/features/PermanentPushFeature;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/mpush/core/features/PermanentPushFeature;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/mpush/core/features/PermanentPushFeature;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->n(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/mpush/core/features/PermanentPushFeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->o()V

    return-void
.end method

.method private final i(Lcom/transsion/mpush/core/config/PermanentConfig;)V
    .locals 10

    invoke-virtual {p1}, Lcom/transsion/mpush/core/config/PermanentConfig;->getInterval()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-object p1, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {p1, v2}, Lcom/transsion/mpush/core/utils/PushPreference;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    cmp-long p1, v6, v0

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->j:Lkotlinx/coroutines/t1;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v3, v0, v3}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->c:Lkotlinx/coroutines/n0;

    new-instance v7, Lcom/transsion/mpush/core/features/PermanentPushFeature$checkRequest$1;

    invoke-direct {v7, p0, v3}, Lcom/transsion/mpush/core/features/PermanentPushFeature$checkRequest$1;-><init>(Lcom/transsion/mpush/core/features/PermanentPushFeature;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->j:Lkotlinx/coroutines/t1;

    :cond_2
    return-void
.end method

.method private final k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;

    iget v3, v2, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;->label:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;

    invoke-direct {v2, v1, v0}, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;-><init>(Lcom/transsion/mpush/core/features/PermanentPushFeature;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v3, v8, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;->label:I

    const-string v11, "1"

    const/4 v12, 0x1

    const-string v13, "context"

    const/4 v14, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v12, :cond_1

    iget-boolean v2, v8, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;->Z$0:Z

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v3, :cond_3

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v14

    :cond_3
    invoke-virtual {v0, v3}, Lcom/transsion/mpush/core/utils/PushPreference;->m(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    :cond_5
    :goto_2
    iput-object v11, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h:Ljava/lang/String;

    :cond_6
    sget-object v0, Lcom/transsion/mpush/core/utils/b;->a:Lcom/transsion/mpush/core/utils/b;

    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v3, :cond_7

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object/from16 v16, v14

    goto :goto_3

    :cond_7
    move-object/from16 v16, v3

    :goto_3
    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->g:Lcom/transsion/mpush/core/config/PermanentConfig;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/mpush/core/config/PermanentConfig;->getStartTime()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_4

    :cond_8
    move-object/from16 v17, v14

    :goto_4
    const/16 v22, 0x20

    const/16 v23, 0x0

    const/16 v18, 0x1e0

    const/16 v19, 0x3c

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v0

    invoke-static/range {v15 .. v23}, Lcom/transsion/mpush/core/utils/b;->c(Lcom/transsion/mpush/core/utils/b;Landroid/content/Context;Ljava/lang/String;IIILjava/util/Calendar;ILjava/lang/Object;)Lcom/transsion/mpush/core/utils/b$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/mpush/core/utils/b$c;->e()Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v15, Llg/a;->a:Llg/a$a;

    iget-object v2, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/transsion/mpush/core/utils/b$c;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/transsion/mpush/core/utils/b;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/mpush/core/utils/b$c;->a()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/transsion/mpush/core/utils/b;->f(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/transsion/mpush/core/utils/b$c;->d()I

    move-result v6

    invoke-virtual {v3}, Lcom/transsion/mpush/core/utils/b$c;->b()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/transsion/mpush/core/utils/b;->f(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/transsion/mpush/core/utils/b$c;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/transsion/mpush/core/utils/b;->u(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u672a\u5230\u8fbe\u8bf7\u6c42\u65f6\u95f4\uff0c\u8df3\u8fc7\u7f51\u7edc\u62c9\u53d6\uff0c\u5f53\u524d\uff1a"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c\u57fa\u51c6\u65f6\u95f4\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c\u6563\u5217\u504f\u79fb\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "min\uff0c\u5b9e\u9645\u8bf7\u6c42\u65f6\u95f4\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0cseed\u6765\u6e90\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v15 .. v20}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_9
    iget-object v0, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h:Ljava/lang/String;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sget-object v15, Llg/a;->a:Llg/a$a;

    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u5f00\u59cb\u7f51\u7edc\u62c9\u53d6\u6570\u636e\uff0c\u9875\u7801\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c\u9996\u9875\u8bf7\u6c42\uff1a"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v15 .. v20}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->l()Lcom/transsion/mpush/core/net/PushNetworkApi;

    move-result-object v3

    sget-object v4, Lln/a;->a:Lln/a;

    invoke-virtual {v4}, Lln/a;->i()Lcom/transsion/mpush/core/config/PushSdkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/mpush/core/config/PushSdkConfig;->getApiPathPrefix()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h:Ljava/lang/String;

    iput-boolean v0, v8, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;->Z$0:Z

    iput v12, v8, Lcom/transsion/mpush/core/features/PermanentPushFeature$fetchPushData$1;->label:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/transsion/mpush/core/net/PushNetworkApi$DefaultImpls;->getPermanentPushData$default(Lcom/transsion/mpush/core/net/PushNetworkApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_a

    return-object v2

    :cond_a
    move v2, v0

    move-object v0, v3

    :goto_5
    check-cast v0, Lcom/transsion/mpush/core/net/SdkBaseDto;

    sget-object v9, Llg/a;->a:Llg/a$a;

    iget-object v4, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getCode()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\uff0c\u54cd\u5e94\u7801\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->getItems()Ljava/util/List;

    move-result-object v10

    move-object v3, v10

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_7

    :cond_b
    iget-object v4, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u7f51\u7edc\u62c9\u53d6\u6210\u529f\uff0c\u83b7\u53d6 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u6761\u6d88\u606f"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object v2, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v3, :cond_c

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v14

    :cond_c
    invoke-virtual {v2, v3}, Lcom/transsion/mpush/core/db/PushDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/mpush/core/db/PushDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/mpush/core/db/PushDatabase;->k0()Lmn/j;

    move-result-object v2

    invoke-interface {v2}, Lmn/j;->clear()V

    iget-object v4, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    const-string v2, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u9996\u9875\u8bf7\u6c42\uff0c\u5df2\u6e05\u7a7a\u65e7\u6570\u636e"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_d
    iget-object v2, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v10, Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/mpush/api/PermanentPushMessage;

    invoke-virtual {v4}, Lcom/transsion/mpush/api/PermanentPushMessage;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_f
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v5, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u53bb\u91cd\u540e\u7f13\u5b58\u6d88\u606f\u6570\uff1a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v3, :cond_10

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v14

    :cond_10
    invoke-virtual {v2, v3}, Lcom/transsion/mpush/core/db/PushDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/mpush/core/db/PushDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/mpush/core/db/PushDatabase;->k0()Lmn/j;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2, v3}, Lmn/j;->b(Ljava/util/List;)V

    goto :goto_8

    :cond_11
    :goto_7
    iget-object v4, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    const-string v5, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u7f51\u7edc\u62c9\u53d6\u6210\u529f\uff0c\u4f46\u6d88\u606f\u5217\u8868\u4e3a\u7a7a"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_8
    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->getCfg()Lcom/transsion/mpush/core/config/PermanentConfig;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/mpush/core/config/PermanentConfig;->setTitle(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->g:Lcom/transsion/mpush/core/config/PermanentConfig;

    sget-object v3, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v4, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v4, :cond_12

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v14

    :cond_12
    invoke-virtual {v3, v4, v2}, Lcom/transsion/mpush/core/utils/PushPreference;->p(Landroid/content/Context;Lcom/transsion/mpush/core/config/PermanentConfig;)V

    :cond_13
    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->getPager()Lcom/transsion/mpush/core/config/PagerConfig;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/transsion/mpush/core/config/PagerConfig;->getNextPage()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_14
    move-object v2, v14

    :goto_9
    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->getPager()Lcom/transsion/mpush/core/config/PagerConfig;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/transsion/mpush/core/config/PagerConfig;->getHasMore()Z

    move-result v0

    if-ne v0, v12, :cond_16

    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_a

    :cond_15
    move-object v11, v2

    :cond_16
    :goto_a
    iput-object v11, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h:Ljava/lang/String;

    sget-object v0, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v2, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v2, :cond_17

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v14

    :cond_17
    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/mpush/core/utils/PushPreference;->q(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v2, :cond_18

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    move-object v14, v2

    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v14, v2, v3}, Lcom/transsion/mpush/core/utils/PushPreference;->y(Landroid/content/Context;J)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->o()V

    goto :goto_d

    :cond_19
    iget-object v4, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/mpush/core/net/SdkBaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u7f51\u7edc\u62c9\u53d6\u5931\u8d25\uff0c\u54cd\u5e94\u7801\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u7f51\u7edc\u62c9\u53d6\u5f02\u5e38\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_1a
    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final l()Lcom/transsion/mpush/core/net/PushNetworkApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mpush/core/net/PushNetworkApi;

    return-object v0
.end method

.method private static final m()Lcom/transsion/mpush/core/net/PushNetworkApi;
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

.method private final n(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u5f00\u59cb\u5904\u7406\u89e6\u53d1\uff0c\u89e6\u53d1\u6e90\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    const/4 v7, 0x0

    const-string v8, "context"

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v7

    :cond_0
    invoke-virtual {p1, v0}, Lcom/transsion/mpush/core/db/PushDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/mpush/core/db/PushDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/mpush/core/db/PushDatabase;->k0()Lmn/j;

    move-result-object p1

    invoke-interface {p1}, Lmn/j;->getAll()Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u4ece\u6570\u636e\u5e93\u52a0\u8f7d "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u6761\u7f13\u5b58\u6d88\u606f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    sget-object p1, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v7, v0

    :goto_0
    invoke-virtual {p1, v7}, Lcom/transsion/mpush/core/utils/PushPreference;->m(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->i:I

    if-lt v0, v1, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v7, v0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :goto_3
    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u68c0\u67e5\u62c9\u53d6\u9700\u6c42\uff0c\u9700\u8981\u62c9\u53d6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u7f13\u5b58\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u4eca\u65e5\u5df2\u62c9\u53d6\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v7, :cond_6

    invoke-direct {p0, p2}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5

    return-object p1

    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    invoke-direct {p0}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->o()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final o()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->g:Lcom/transsion/mpush/core/config/PermanentConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/mpush/core/config/PermanentConfig;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/mpush/core/config/PermanentConfig;-><init>(ZLjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    sget-object v7, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/mpush/core/config/PermanentConfig;->getEnable()Z

    move-result v1

    iget-object v3, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u5f00\u59cb\u5c55\u793a\u5e38\u9a7b\u901a\u77e5\uff0c\u542f\u7528\u72b6\u6001\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u6d88\u606f\u6570\uff1a"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/mpush/core/config/PermanentConfig;->getEnable()Z

    move-result v1

    const/4 v8, 0x0

    const-string v9, "context"

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u5e38\u9a7b\u63a8\u9001\u672a\u542f\u7528\uff0c\u53d6\u6d88\u901a\u77e5"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->d:Lcom/transsion/mpush/core/renderer/v;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v8, v1

    :goto_0
    invoke-virtual {v0, v8}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->t(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->p(Lcom/transsion/mpush/core/config/PermanentConfig;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u672a\u5230\u5c55\u793a\u65f6\u95f4\uff0c\u8df3\u8fc7\u5c55\u793a"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/mpush/core/config/PermanentConfig;->getInterval()I

    move-result v1

    if-lez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->i(Lcom/transsion/mpush/core/config/PermanentConfig;)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u8c03\u7528\u6e32\u67d3\u5668\u5c55\u793a\u901a\u77e5\uff0c\u4f20\u9012 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u6761\u6d88\u606f"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->d:Lcom/transsion/mpush/core/renderer/v;

    iget-object v2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v2, :cond_5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v8, v2

    :goto_1
    iget-object v2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v8, v2, v0}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->J(Landroid/content/Context;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V

    return-void
.end method

.method private final p(Lcom/transsion/mpush/core/config/PermanentConfig;)Z
    .locals 12

    const-string v0, ":"

    invoke-virtual {p1}, Lcom/transsion/mpush/core/config/PermanentConfig;->getStartTime()Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    return p1

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeReady, cur:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",time:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v5, v3, :cond_3

    if-ne v5, v3, :cond_2

    if-lt v4, v1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :catch_0
    :cond_3
    :goto_0
    return p1
.end method

.method private final q()V
    .locals 7

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->d:Lcom/transsion/mpush/core/renderer/v;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->l(Landroid/content/Context;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u9884\u521b\u5efa\u901a\u77e5\u6e20\u9053\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->c:Lkotlinx/coroutines/n0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->q()V

    sget-object v0, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {v0, p1}, Lcom/transsion/mpush/core/utils/PushPreference;->c(Landroid/content/Context;)Lcom/transsion/mpush/core/config/PermanentConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->g:Lcom/transsion/mpush/core/config/PermanentConfig;

    invoke-virtual {v0, p1}, Lcom/transsion/mpush/core/utils/PushPreference;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :cond_0
    iput-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->c:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsion/mpush/core/features/PermanentPushFeature$init$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/mpush/core/features/PermanentPushFeature$init$1;-><init>(Landroid/content/Context;Lcom/transsion/mpush/core/features/PermanentPushFeature;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->c:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;-><init>(Lcom/transsion/mpush/core/features/PermanentPushFeature;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onMessageReceive(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mpush/api/IPushFeature$DefaultImpls;->onMessageReceive(Lcom/transsion/mpush/api/IPushFeature;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrigger(I)V
    .locals 12

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u5e38\u9a7b\u63a8\u9001\u3011\u6536\u5230\u89e6\u53d1\u4e8b\u4ef6\uff0c\u89e6\u53d1\u6e90\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u5f00\u59cb\u5904\u7406"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v6, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->c:Lkotlinx/coroutines/n0;

    new-instance v9, Lcom/transsion/mpush/core/features/PermanentPushFeature$onTrigger$1;

    const/4 v0, 0x0

    invoke-direct {v9, p0, p1, v0}, Lcom/transsion/mpush/core/features/PermanentPushFeature$onTrigger$1;-><init>(Lcom/transsion/mpush/core/features/PermanentPushFeature;ILkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public refreshMessage(Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsion/mpush/api/PermanentPushMessage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/mpush/api/PermanentPushMessage;

    invoke-virtual {v2}, Lcom/transsion/mpush/api/PermanentPushMessage;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/transsion/mpush/api/PermanentPushMessage;

    invoke-virtual {v3}, Lcom/transsion/mpush/api/PermanentPushMessage;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/transsion/mpush/api/PermanentPushMessage;

    const/4 p1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/transsion/mpush/api/PermanentPushMessage;->setRefresh(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->o()V

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
