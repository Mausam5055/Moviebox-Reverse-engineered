.class public Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;
.super Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;


# instance fields
.field private Zq:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-void
.end method

.method private LD()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;)Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Zq:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;)V

    return-object v0
.end method

.method public HiB()Z
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->LD()Z

    move-result v0

    return v0
.end method

.method public Jcg()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TKC(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->sP(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->HiB(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RrR()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->LD()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->LD()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->LD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->HiB(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->HiB(I)V

    return-void
.end method

.method public Sj(Landroid/widget/FrameLayout;)V
    .locals 8

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Ym:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Zq:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/core/sP/HiB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Zq:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->MuB:F

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TKC:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->EjP:I

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;FIII)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Zq:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->getInteractionStyleRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public Yf()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Zq:Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->getVideoContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public vS()Z
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->LD()Z

    move-result v0

    return v0
.end method
