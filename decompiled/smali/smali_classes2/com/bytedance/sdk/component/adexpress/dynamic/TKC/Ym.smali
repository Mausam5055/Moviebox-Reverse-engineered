.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/component/adexpress/vS/TEQ;

.field private final sP:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/TEQ;

    invoke-virtual {v0, p4}, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;->setImageLottieTosPath(Ljava/lang/String;)V

    new-instance p4, Landroid/widget/FrameLayout;

    invoke-direct {p4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;->sP:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->aNB()D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-nez v5, :cond_0

    move-wide v0, v6

    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->cX()D

    move-result-wide v8

    cmpl-double v3, v8, v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide v6, v8

    :goto_0
    const-string v3, "22"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x51

    if-eqz v3, :cond_2

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 p3, 0x437a0000    # 250.0f

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    const/4 p5, -0x1

    invoke-direct {p2, p5, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 p3, 0x42f00000    # 120.0f

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    const-string v3, "20"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-direct {p0, p1, p4, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;->Sj(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->ndK()I

    move-result p5

    const/4 v0, 0x0

    if-lez p5, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->ndK()I

    move-result p3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result p3

    if-eqz p3, :cond_4

    move p3, v0

    goto :goto_1

    :cond_4
    const/16 p3, 0x78

    :goto_1
    int-to-float p3, p3

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicWidth()I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x3fd47ae147ae147bL    # 0.32

    mul-double/2addr v2, v4

    mul-double/2addr v2, v0

    double-to-int p1, v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicWidth()I

    move-result p2

    int-to-double p2, p2

    mul-double/2addr p2, v4

    mul-double/2addr p2, v6

    double-to-int p2, p2

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p4, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private Sj(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 9

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p1, v3}, Lcom/bytedance/sdk/component/utils/Yf;->Sj(Landroid/content/Context;F)I

    move-result v4

    neg-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "tt_splash_brush_mask_title"

    invoke-static {p1, v4}, Lcom/bytedance/sdk/component/utils/ib;->sP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x2

    invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v8, 0x7d06fff2

    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p1, v3}, Lcom/bytedance/sdk/component/utils/Yf;->Sj(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v8, v5, v2, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "tt_splash_brush_mask_hint"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/ib;->sP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v6, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/TEQ;->Dq()V

    return-void
.end method

.method public TKC()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;->sP:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->vS()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;->sP:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;->sP:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
