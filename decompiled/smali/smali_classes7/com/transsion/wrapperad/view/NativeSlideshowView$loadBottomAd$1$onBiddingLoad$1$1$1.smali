.class final Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.wrapperad.view.NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1"
    f = "NativeSlideshowView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field label:I

.field final synthetic this$0:Lcom/transsion/wrapperad/view/NativeSlideshowView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/transsion/wrapperad/view/NativeSlideshowView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/wrapperad/view/NativeSlideshowView;",
            "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->this$0:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    iput-object p3, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;

    iget-object v0, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->this$0:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    iget-object v2, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;-><init>(Landroid/content/Context;Lcom/transsion/wrapperad/view/NativeSlideshowView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcy/b;->a:Lcy/b;

    iget-object v0, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->this$0:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    invoke-static {v1}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getBottomNative$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcy/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->this$0:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    invoke-static {v0}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getVBottom$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->this$0:Lcom/transsion/wrapperad/view/NativeSlideshowView;

    invoke-static {v1}, Lcom/transsion/wrapperad/view/NativeSlideshowView;->access$getBottomNative$p(Lcom/transsion/wrapperad/view/NativeSlideshowView;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/wrapperad/view/NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
