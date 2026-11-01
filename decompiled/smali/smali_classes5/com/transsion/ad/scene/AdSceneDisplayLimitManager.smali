.class public final Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;

    invoke-direct {v0}, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->a:Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ad/db/MbAdDatabase;->v0()Lcom/transsion/ad/db/scene/AdSceneLimitDao;

    move-result-object v1

    sget-object v0, Lti/p;->a:Lti/p;

    invoke-virtual {v0}, Lti/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/a;->f(Ljava/lang/String;)I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/a;->d(Ljava/lang/String;)I

    move-result v8

    move-object v2, p1

    move-object v9, p2

    invoke-interface/range {v1 .. v9}, Lcom/transsion/ad/db/scene/AdSceneLimitDao;->b(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager$recordDisplay$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager$recordDisplay$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
