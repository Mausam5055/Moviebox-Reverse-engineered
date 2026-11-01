.class public Lcom/bytedance/sdk/openadsdk/common/aa;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;


# instance fields
.field private EjP:J

.field private HiB:Ljava/lang/Runnable;

.field private Jcg:I

.field protected Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

.field private TKC:I

.field protected sP:Z

.field private vS:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->EjP:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->sP:Z

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Jcg:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/aa;->TKC()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/aa;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->TKC:I

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/aa;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/aa;->sP(I)V

    return-void
.end method

.method private TKC()V
    .locals 1

    const-string v0, "#2E2E2E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private TKC(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Jcg:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Jcg:I

    :cond_0
    return-void
.end method

.method private sP(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/Ym;->Sj(I)V

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->sP:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/aa;->sP()V

    :cond_1
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/aa$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/aa$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/aa;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->HiB:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/aa$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/aa$2;-><init>(Lcom/bytedance/sdk/openadsdk/common/aa;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->HiB:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->HiB:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->EjP:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Sj(I)V
    .locals 2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->TKC:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->TKC:I

    invoke-static {}, Lf6/a;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->TKC:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/aa;->sP(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->vS:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/common/aa$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/common/aa$3;-><init>(Lcom/bytedance/sdk/openadsdk/common/aa;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->vS:Ljava/lang/Runnable;

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->vS:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->EjP:J

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/Ym;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/Ym;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Ym;->Sj()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->IOh()Z

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/common/Ym;->sP()Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_5

    if-eqz v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :try_start_0
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v5

    new-instance v6, Lcom/bytedance/sdk/openadsdk/uA/sP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/bytedance/sdk/openadsdk/utils/wE;

    invoke-direct {v7, v2}, Lcom/bytedance/sdk/openadsdk/utils/wE;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {v6, p1, v4, v7}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/common/Ym;->TKC()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_6

    const-string p1, "Loading"

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/aa;->TKC(I)V

    return-void
.end method

.method public getLoadingStyle()Lcom/bytedance/sdk/openadsdk/common/Ym;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/aa;->TKC(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->HiB:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->HiB:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->TKC:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/common/Ym;->Sj:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Ym;->EjP()V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->HiB:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->vS:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->vS:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/aa;->HiB:Ljava/lang/Runnable;

    return-void
.end method
