.class public Lcom/bytedance/sdk/openadsdk/sef/sP;
.super Lcom/bytedance/sdk/openadsdk/sef/TEQ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/sef/sP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/sef/sP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected Sj(Landroid/content/Context;)V
    .locals 10

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40000000    # 2.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->HiB(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->zwV:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->vS(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->dLt:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object v4

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x50

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x51

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/bytedance/sdk/openadsdk/utils/Zq;->tY:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Jcg(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    sget v9, Lcom/bytedance/sdk/openadsdk/utils/Zq;->QZ:I

    invoke-virtual {v6, v9}, Landroid/view/View;->setId(I)V

    const/high16 v6, 0x420c0000    # 35.0f

    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x14

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x9

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xf

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/sP;->sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget v9, Lcom/bytedance/sdk/openadsdk/utils/Zq;->RrR:I

    invoke-virtual {v6, v9}, Landroid/view/View;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v6, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v6, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v9, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/sP;->TKC(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget v9, Lcom/bytedance/sdk/openadsdk/utils/Zq;->SP:I

    invoke-virtual {v6, v9}, Landroid/view/View;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {p1, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v9, 0x3

    invoke-virtual {v6, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    const/16 v9, 0x8

    invoke-virtual {v6, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v6, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->EjP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->nP:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected TKC(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->TKC(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method protected sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 2

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x2

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "Pangle"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
