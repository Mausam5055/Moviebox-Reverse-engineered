.class public final Lei/a;
.super Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Class;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3c1c93e4

    if-eq v1, v2, :cond_4

    const v2, -0x8ac1fb5

    if-eq v1, v2, :cond_2

    const v2, 0x41903371

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "action_dialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutInterstitialActionActivity;

    goto :goto_1

    :cond_2
    const-string v1, "auto_fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class v0, Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutInterstitialAutoFullScreenActivity;

    goto :goto_1

    :cond_4
    const-string v1, "full_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    const-class v0, Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutBuyOutInterstitialHalfScreenActivity;

    goto :goto_1

    :cond_5
    const-class v0, Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutFullScreenInterstitialActivity;

    :goto_1
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "interstitial"

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_int"

    return-object v0
.end method
