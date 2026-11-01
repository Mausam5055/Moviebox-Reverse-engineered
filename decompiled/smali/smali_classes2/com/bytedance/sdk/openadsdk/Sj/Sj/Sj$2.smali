.class Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    return-void
.end method
