.class Lcom/bytedance/sdk/openadsdk/component/reward/Jcg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/reward/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Jcg;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Jcg$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Jcg;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Jcg$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Jcg;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
