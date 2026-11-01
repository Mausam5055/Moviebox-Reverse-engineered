.class Lcom/bytedance/sdk/openadsdk/component/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/sP;->Sj(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

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
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Sj;->EjP()V

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/sP;->Sj(Lcom/bytedance/sdk/openadsdk/component/sP;)Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->TKC:Z

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/sP;->Sj(Lcom/bytedance/sdk/openadsdk/component/sP;)Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(Landroid/widget/FrameLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/sP;->Sj(Lcom/bytedance/sdk/openadsdk/component/sP;)Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Jcg()Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->setVideoManager(Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Sj;->EjP()V

    return-void

    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/sP;->Sj(Lcom/bytedance/sdk/openadsdk/component/sP;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/sP;->sP(Lcom/bytedance/sdk/openadsdk/component/sP;)Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->EjP:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/sP;->sP(Lcom/bytedance/sdk/openadsdk/component/sP;)Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->EjP:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/sP;->sP(Lcom/bytedance/sdk/openadsdk/component/sP;)Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/TKC;->EjP:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/sP;->Sj(Lcom/bytedance/sdk/openadsdk/component/sP;Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/sP;->TKC(Lcom/bytedance/sdk/openadsdk/component/sP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/sP;->EjP(Lcom/bytedance/sdk/openadsdk/component/sP;)V

    return-void
.end method
