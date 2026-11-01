.class public final Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity;

    invoke-static {v0}, Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity;->U(Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "interstitialManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    iget-object v2, p0, Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method
