.class public Lcom/bytedance/sdk/openadsdk/sef/EjP;
.super Lcom/bytedance/sdk/openadsdk/sef/TEQ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/sef/EjP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/sef/EjP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected Sj(Landroid/content/Context;)V
    .locals 11

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v5, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x40400000    # 3.0f

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->HiB(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    sget v8, Lcom/bytedance/sdk/openadsdk/utils/Zq;->zwV:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->vS(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    sget v8, Lcom/bytedance/sdk/openadsdk/utils/Zq;->dLt:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object v6

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x50

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v8}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;

    invoke-direct {v5, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Jcg(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->QZ:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget v7, Lcom/bytedance/sdk/openadsdk/utils/Zq;->RrR:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->EjP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->nP:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0x15

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
