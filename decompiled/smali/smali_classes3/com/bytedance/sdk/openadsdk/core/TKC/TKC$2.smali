.class Lcom/bytedance/sdk/openadsdk/core/TKC/TKC$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setSoundMute(Z)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->Sj(FF)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderSuccess(Landroid/view/View;FF)V

    :cond_2
    return-void
.end method
