.class Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$1;
.super Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Jcg()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/EjP;->Sj(Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method
