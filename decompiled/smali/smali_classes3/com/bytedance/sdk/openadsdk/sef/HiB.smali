.class public Lcom/bytedance/sdk/openadsdk/sef/HiB;
.super Lcom/bytedance/sdk/openadsdk/sef/TEQ;


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/sef/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/sef/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected Sj(Landroid/content/Context;)V
    .locals 5

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setPadding(IIII)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->HiB(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->zwV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Xqg:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sef/TEQ;->Dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x50

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget p1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->oWa:I

    invoke-virtual {v4, p1}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/4 v1, 0x2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p1, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getTtBuDescTV()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Dq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-object v0
.end method

.method public getTtBuImg()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sef/HiB;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    return-object v0
.end method
