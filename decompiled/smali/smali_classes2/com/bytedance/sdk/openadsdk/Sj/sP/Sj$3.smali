.class Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;
.super Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

.field final synthetic sP:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;->sP:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private Sj(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->Sj:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Ljava/lang/Integer;)Lcom/bytedance/sdk/openadsdk/kF/sP/sP;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/kF/sP/sP;I)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/EjP;->Sj(Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;->sP:Landroid/view/View;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;->Sj(Z)V

    :cond_0
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V

    return-void
.end method
