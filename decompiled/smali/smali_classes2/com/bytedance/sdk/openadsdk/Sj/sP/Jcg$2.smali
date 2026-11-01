.class Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/Jcg;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdListener;->onAdShowed()V

    :cond_0
    return-void
.end method
