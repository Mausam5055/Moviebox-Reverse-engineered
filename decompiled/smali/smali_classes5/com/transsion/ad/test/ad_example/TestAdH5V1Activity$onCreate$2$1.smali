.class final Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.transsion.ad.test.ad_example.TestAdH5V1Activity$onCreate$2$1"
    f = "TestAdH5V1Activity.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;

    invoke-direct {p1, v0, p2}, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;-><init>(Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v3, Loi/a;->a:Loi/a;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v4, "SplashH5"

    const-string v5, "fetchH5LinkIfH5Ad start"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Loi/a;->g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;

    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;->X(Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;)Lcom/transsion/ad/bidding/splash/b;

    move-result-object p1

    const-string v1, "splashManager"

    const/4 v3, 0x0

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v3

    :cond_2
    const-string v4, "MBInterstitialTestId"

    invoke-virtual {p1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;

    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;->X(Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;)Lcom/transsion/ad/bidding/splash/b;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v3

    :cond_3
    invoke-virtual {p1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->M0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;

    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;->X(Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;)Lcom/transsion/ad/bidding/splash/b;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v3

    :cond_4
    iget-object v4, p0, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;

    invoke-virtual {p1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->this$0:Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;

    invoke-static {p1}, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;->X(Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;)Lcom/transsion/ad/bidding/splash/b;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, p1

    :goto_0
    iput v2, p0, Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$onCreate$2$1;->label:I

    invoke-virtual {v3, p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->X(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/String;

    sget-object v0, Loi/a;->a:Loi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchH5LinkIfH5Ad end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "SplashH5"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/a;->g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->a:Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;

    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->k(Ljava/lang/String;)V

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
