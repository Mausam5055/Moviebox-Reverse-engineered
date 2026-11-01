.class public Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;
.super Ljava/lang/Object;


# instance fields
.field private Sj:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

.field private TKC:Ljava/lang/String;

.field private sP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->Sj:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->sP:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->TKC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerSize()Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->Sj:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    return-object v0
.end method

.method public getSlotId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public setAdxId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->TKC:Ljava/lang/String;

    return-void
.end method

.method public setBannerSize(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->Sj:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    return-void
.end method

.method public setSlotId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->sP:Ljava/lang/String;

    return-void
.end method
