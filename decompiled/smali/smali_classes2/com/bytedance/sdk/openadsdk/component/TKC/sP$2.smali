.class Lcom/bytedance/sdk/openadsdk/component/TKC/sP$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/TKC/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/TKC/sP;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/component/TKC/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/component/TKC/sP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/TKC/sP;->Sj:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
