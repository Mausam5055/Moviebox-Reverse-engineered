.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj([FLcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->c_()V

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
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->HiB()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Fmk()V

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC(Z)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Sj(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->sP()Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p2

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->vS()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/widget/FrameLayout;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dwU:Z

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->wE()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Zq:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC()V

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p2

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p3

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->vS()V

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Fmk()V

    return-void
.end method
