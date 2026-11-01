.class public final synthetic Lcom/transsion/home/adapter/trending/provider/o0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/bidding/base/r;

.field public final synthetic b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/o0;->a:Lcom/transsion/ad/bidding/base/r;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/o0;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/o0;->a:Lcom/transsion/ad/bidding/base/r;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/o0;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-static {v0, v1}, Lcom/transsion/home/adapter/trending/provider/q0;->y(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
