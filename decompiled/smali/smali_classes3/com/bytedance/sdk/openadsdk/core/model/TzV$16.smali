.class Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(FFLandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;F)F

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Jcg()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sU(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Z)Z

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Landroid/view/MotionEvent;)V

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/common/EjP;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/common/EjP;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Landroid/view/MotionEvent;)V

    :cond_9
    const/4 p1, 0x0

    return p1
.end method
