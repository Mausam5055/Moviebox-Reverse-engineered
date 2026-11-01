.class public Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;
.super Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

# interfaces
.implements Lu5/b$a;
.implements Lu5/b$c;


# instance fields
.field EjP:I

.field HiB:Z

.field private JcM:J

.field Jcg:I

.field private LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

.field private Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

.field Sj:I

.field TKC:Z

.field private WMZ:J

.field private fF:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

.field sP:Z

.field vS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->vS:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->fF:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;Z)Z
    .locals 11

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Jcg()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Dq()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->uA()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v4, v8

    if-eqz v10, :cond_0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_1

    :cond_0
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    const/16 v9, 0x9

    if-eq v8, v9, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v0, v0

    invoke-static {v8, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v4, v6

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->aa()F

    move-result v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Fmk()F

    move-result v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sef()F

    move-result v7

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Zq()F

    move-result p1

    invoke-static {v7, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v4, :cond_2

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_2
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->Sj(II)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;Lcom/bytedance/sdk/component/adexpress/sP/sef;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;Z)Z

    move-result p0

    return p0
.end method

.method private TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 6
    .param p1    # Lcom/bytedance/sdk/component/adexpress/sP/sef;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    :cond_1
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;->uvD()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->vS:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj;->vS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->vS:Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JZZ)Z

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TzV;->EjP(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->HiB()V

    :cond_5
    const-string p1, "embeded_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->setShowAdInteractionView(Z)V

    :cond_6
    return-void
.end method

.method private dNu()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->fF:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setShouldCheckNetChange(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdLoadListener(Lu5/b$a;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdInteractionListener(Lu5/b$c;)V

    const-string v0, "embeded_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "open_ad"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    move-result v3

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    :goto_0
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "initVideo"

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TKC(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->EjP()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    return-object p0
.end method

.method private sP(JJ)V
    .locals 5

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    if-ltz v1, :cond_2

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_2

    int-to-long v3, v1

    cmp-long p3, v3, p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU:Ljava/util/HashSet;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    int-to-long p3, p3

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)V

    int-to-long p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setCanInterruptVideoPlay(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU:Ljava/util/HashSet;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setShowAdInteractionView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setShowAdInteractionView(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public EjP()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->EjP()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lu5/b;

    move-result-object v0

    invoke-interface {v0}, Lu5/b;->uvD()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    return v0
.end method

.method EjP(I)V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v2, p1, :cond_1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v2

    if-ne v3, p1, :cond_2

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v4, p1, :cond_4

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    if-ne v4, p1, :cond_6

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    if-nez p1, :cond_7

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    :cond_7
    return-void
.end method

.method public HiB()V
    .locals 0

    return-void
.end method

.method protected Jcg()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->dNu()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getWebView()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getWebView()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)V

    return-void
.end method

.method public Sj()V
    .locals 0

    return-void
.end method

.method public Sj(I)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-eq p1, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JZZ)Z

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lu5/b;

    move-result-object p1

    invoke-interface {p1}, Lu5/b;->EjP()V

    return-void

    :cond_3
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setCanInterruptVideoPlay(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    :cond_4
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JZZ)Z

    return-void
.end method

.method public Sj(II)V
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->WMZ:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->JcM:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->Sj(II)V

    :cond_0
    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ:Ljava/lang/String;

    return-void
.end method

.method public Sj(JJ)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->JcM:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->JcM:J

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->WMZ:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v0

    sub-long v1, p3, p1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;->setTimeUpdate(I)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    sub-long v1, p3, p1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->setTimeUpdate(I)V

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP(JJ)V

    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p2, v0, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setCanInterruptVideoPlay(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->vb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    :cond_3
    :goto_0
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

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setSoundMute(Z)V

    :cond_0
    return-void
.end method

.method public TKC()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->JcM:J

    return-wide v0
.end method

.method public d_()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public g_()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method protected getExpressVideoView()Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    return-object v0
.end method

.method public getVideoAdListener()Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    return-object v0
.end method

.method public getVideoController()Lu5/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lu5/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->fF:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    return-object v0
.end method

.method public h_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    return-void
.end method

.method public i_()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;->onvideoComplate()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->onvideoComplate()V

    :cond_2
    return-void
.end method

.method public sP()V
    .locals 0

    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    return-void
.end method
