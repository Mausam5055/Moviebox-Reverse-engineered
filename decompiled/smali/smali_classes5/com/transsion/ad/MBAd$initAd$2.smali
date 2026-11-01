.class final Lcom/transsion/ad/MBAd$initAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/MBAd;->e(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.MBAd$initAd$2"
    f = "MBAd.kt"
    l = {
        0xad,
        0xb9,
        0xd1,
        0xd1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $params:Lcom/transsion/ad/MBAd$a;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/MBAd$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/MBAd$initAd$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/MBAd$initAd$2;->$params:Lcom/transsion/ad/MBAd$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/ad/MBAd$initAd$2;

    iget-object v1, p0, Lcom/transsion/ad/MBAd$initAd$2;->$params:Lcom/transsion/ad/MBAd$a;

    invoke-direct {v0, v1, p2}, Lcom/transsion/ad/MBAd$initAd$2;-><init>(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/MBAd$initAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/MBAd$initAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/MBAd$initAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/MBAd$initAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, " ================= "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v2, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$2:Ljava/lang/Object;

    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    check-cast v3, Loi/a;

    iget-object v4, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v5, p1

    move-object/from16 v17, v0

    :goto_0
    move-object v6, v3

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$2:Ljava/lang/Object;

    check-cast v3, Loi/a;

    iget-object v5, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/r0;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v0

    move-object v4, v5

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_2
    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/ad/MBAd$a;

    iget-object v6, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/n0;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v17, v0

    goto/16 :goto_2

    :cond_3
    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/ad/MBAd$a;

    iget-object v7, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/n0;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v17, v0

    move-object v6, v7

    goto/16 :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/n0;

    iget-object v9, v1, Lcom/transsion/ad/MBAd$initAd$2;->$params:Lcom/transsion/ad/MBAd$a;

    :try_start_4
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v11, Loi/a;->a:Loi/a;

    sget-object v10, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-static {v10}, Lcom/transsion/ad/MBAd;->b(Lcom/transsion/ad/MBAd;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    move-result v13

    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lhi/e;->a:Lhi/e;

    invoke-virtual {v15}, Lhi/e;->a()Z

    move-result v15

    sget-object v16, Lcom/transsion/ad/strategy/s;->a:Lcom/transsion/ad/strategy/s;

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/strategy/s;->c()Z

    move-result v4

    sget-object v16, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    invoke-virtual/range {v16 .. v16}, Lcom/tn/lib/net/dns/or/CacheIpPool;->l()Ljava/lang/String;

    move-result-object v5

    sget-object v16, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/scene/b;->l()Z

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/scene/b;->i()Z

    move-result v8

    sget-object v7, Lcom/transsion/ad/strategy/NationalInformationManager;->a:Lcom/transsion/ad/strategy/NationalInformationManager;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Lcom/transsion/ad/strategy/NationalInformationManager;->e()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v2

    invoke-virtual {v9}, Lcom/transsion/ad/MBAd$a;->m()Ljava/lang/String;

    move-result-object v2

    move-object/from16 p1, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " --> initAd() --> monopoly\u5e7f\u544aSDK \u5f00\u59cb\u521d\u59cb\u5316 \n--> SDK_VERSION = 4.3.3_2 \n--> \u5f53\u524d\u5305\u540d = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " \n--> \u5f53\u524d\u5bbf\u4e3b\u7248\u672c\u53f7 = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " \n--> \u5f53\u524d\u5bbf\u4e3b\u7248\u672c\u540d = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " \n--> \u5f53\u524d\u662f\u5426\u662f\u4f1a\u5458 = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " \n --> \u5f53\u524d\u662f\u5426\u662f\u65b0\u7528\u6237 = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n--> host = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n--> isOpenAd = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n--> adLinkOff = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n--> currentMcc = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n --> AdInitParams = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/strategy/AppManager;->a:Lcom/transsion/ad/strategy/AppManager;

    invoke-virtual {v9}, Lcom/transsion/ad/MBAd$a;->d()Lcom/transsion/ad/strategy/AppManager$AppEnum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/ad/strategy/AppManager;->b(Lcom/transsion/ad/strategy/AppManager$AppEnum;)V

    sget-object v0, Lhi/d;->a:Lhi/d;

    invoke-virtual {v9}, Lcom/transsion/ad/MBAd$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhi/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "getApp(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lcom/transsion/ad/strategy/NationalInformationManager;->h(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v18

    if-ne v0, v2, :cond_5

    return-object v2

    :cond_5
    move-object v6, v3

    move-object v3, v9

    :goto_1
    sget-object v0, Lti/h;->a:Lti/h;

    sget-object v4, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    invoke-virtual {v4}, Lcom/transsion/ad/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lti/h;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/transsion/ad/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lti/h;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/ad/MBAd$a;->h()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v4, Lcom/transsion/ad/MBAd$initAd$2$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/transsion/ad/MBAd$initAd$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v6, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    invoke-static {v0, v4, v1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    return-object v2

    :cond_6
    :goto_2
    move-object v0, v6

    sget-object v4, Lcom/transsion/ad/strategy/AdObserveNetworkState;->a:Lcom/transsion/ad/strategy/AdObserveNetworkState;

    invoke-virtual {v3}, Lcom/transsion/ad/MBAd$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/ad/strategy/AdObserveNetworkState;->f(Ljava/lang/String;)V

    new-instance v7, Lcom/transsion/ad/MBAd$initAd$2$1$sdkHi$1;

    const/4 v4, 0x0

    invoke-direct {v7, v3, v4}, Lcom/transsion/ad/MBAd$initAd$2$1$sdkHi$1;-><init>(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    move-result-object v10

    new-instance v7, Lcom/transsion/ad/MBAd$initAd$2$1$sdkMb$1;

    const/4 v4, 0x0

    invoke-direct {v7, v3, v4}, Lcom/transsion/ad/MBAd$initAd$2$1$sdkMb$1;-><init>(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    move-result-object v0

    sget-object v3, Loi/a;->a:Loi/a;

    sget-object v4, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-static {v4}, Lcom/transsion/ad/MBAd;->b(Lcom/transsion/ad/MBAd;)Ljava/lang/String;

    move-result-object v4

    iput-object v10, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$2:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    invoke-interface {v0, v1}, Lkotlinx/coroutines/r0;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_7

    return-object v2

    :cond_7
    move-object v6, v10

    :goto_3
    iput-object v4, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lcom/transsion/ad/MBAd$initAd$2;->L$2:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v1, Lcom/transsion/ad/MBAd$initAd$2;->label:I

    invoke-interface {v6, v1}, Lkotlinx/coroutines/r0;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_8

    return-object v2

    :cond_8
    move-object v2, v0

    goto/16 :goto_0

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> initAd() --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_5
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/transsion/ad/MBAd;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v4, Loi/a;->a:Loi/a;

    sget-object v2, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-static {v2}, Lcom/transsion/ad/MBAd;->b(Lcom/transsion/ad/MBAd;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> initAd() --> \u521d\u59cb\u5316\u5f02\u5e38\uff0c\u5df2\u91cd\u7f6e\u72b6\u6001\uff0c\u53ef\u91cd\u8bd5 --> it = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
