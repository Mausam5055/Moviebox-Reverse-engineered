.class public final Lei/c;
.super Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Class;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_fullscreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/transsion/ad/bidding/video/BiddingBuyOutVideoAutoFullScreenActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/transsion/ad/bidding/video/BiddingBuyOutBuyOutVideoActivity;

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "video"

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_v"

    return-object v0
.end method
