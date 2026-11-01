.class Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Sj(Z)Landroid/view/View;
    .locals 8

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    const-string v4, "#F3F7F8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    const-string v4, "tt_ad_closed_background_300_250"

    invoke-static {v2, v4}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    const-string v4, "tt_ad_closed_background_320_50"

    invoke-static {v2, v4}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object v2

    const v3, 0x1f00002b

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    const/high16 v7, 0x429a0000    # 77.0f

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    const/high16 v7, 0x42340000    # 45.0f

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    const v7, 0x4102e148    # 8.18f

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    const-string v6, "tt_ad_is_closed"

    invoke-static {v4, v6}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    :cond_2
    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_2
    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public Sj()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v2, v1

    int-to-double v4, v0

    const-wide v6, 0x407c200000000000L    # 450.0

    mul-double/2addr v4, v6

    const-wide v6, 0x4082c00000000000L    # 600.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj(Z)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->vS(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onAdDismissed()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Z)Z

    return-void
.end method
