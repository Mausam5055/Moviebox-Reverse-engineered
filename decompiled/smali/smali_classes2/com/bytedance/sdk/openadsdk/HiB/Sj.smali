.class public Lcom/bytedance/sdk/openadsdk/HiB/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/factory/IADTypeLoaderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBannerAdLoader()Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader<",
            "Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;",
            "Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/HiB/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/HiB/Sj;)V

    return-object v0
.end method

.method public createInterstitialAdLoader()Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader<",
            "Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;",
            "Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdLoadListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/HiB/Sj$5;-><init>(Lcom/bytedance/sdk/openadsdk/HiB/Sj;)V

    return-object v0
.end method

.method public createNativeAdLoader()Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader<",
            "Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;",
            "Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/HiB/Sj;)V

    return-object v0
.end method

.method public createOpenAdLoader()Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader<",
            "Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;",
            "Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/HiB/Sj;)V

    return-object v0
.end method

.method public createRewardAdLoader()Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/api/factory/IADLoader<",
            "Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;",
            "Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/HiB/Sj$4;-><init>(Lcom/bytedance/sdk/openadsdk/HiB/Sj;)V

    return-object v0
.end method
