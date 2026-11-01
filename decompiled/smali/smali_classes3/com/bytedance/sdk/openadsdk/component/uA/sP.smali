.class public Lcom/bytedance/sdk/openadsdk/component/uA/sP;
.super Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;


# instance fields
.field private final EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

.field private HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

.field private Jcg:Landroid/widget/FrameLayout;

.field private LD:Lu5/b$b;

.field Sj:Z

.field private final TKC:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

.field private final sP:Lcom/bytedance/sdk/openadsdk/component/Sj;

.field private vS:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/Sj;Lcom/bytedance/sdk/openadsdk/component/vS/sP;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Sj:Z

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/Sj;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/uA/sP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method private TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x11

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Sj:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj;->vS:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Sj:Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Jcg()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Dq()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->uA()D

    move-result-wide v8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v4, v6

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v5, v8

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    const-wide/16 v10, 0x0

    cmpl-double v5, v8, v10

    const/16 v8, 0xa

    const/4 v9, 0x7

    if-eqz v5, :cond_3

    cmpl-double v5, v6, v10

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v5

    if-eq v5, v9, :cond_4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v5

    if-eq v5, v8, :cond_4

    return-void

    :cond_4
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v5

    if-eq v5, v9, :cond_5

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v5

    if-ne v5, v8, :cond_7

    :cond_5
    instance-of v5, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    if-eqz v5, :cond_7

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;->uvD()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_8

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_8
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public EjP()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->HiB()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->sP()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->TKC()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    return v1
.end method

.method public HiB()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->vS:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/vS/Sj;->sP(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->vS:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/vS/Sj;->Sj(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->uA()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Dq()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->TKC()V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Jcg()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->EjP()V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->HiB()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB()V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/sP/sef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    return-void
.end method

.method protected Sj(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v1

    :goto_1
    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->Sj(Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method public TKC()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;->sP()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDynamicShowType()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result v0

    return v0
.end method

.method protected getRenderTimeout()I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Jcg(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)I

    move-result v0

    return v0
.end method

.method public getVideoFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public sP()V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP()V

    return-void
.end method

.method public sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/sP$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/uA/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/uA/sP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExpressVideoListenerProxy(Lu5/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->LD:Lu5/b$b;

    return-void
.end method

.method public setTopListener(Lcom/bytedance/sdk/openadsdk/component/vS/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->vS:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

    return-void
.end method

.method public setVideoManager(Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    return-void
.end method

.method protected vS()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef:Z

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/sP$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/uA/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/uA/sP;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)V

    return-void
.end method
