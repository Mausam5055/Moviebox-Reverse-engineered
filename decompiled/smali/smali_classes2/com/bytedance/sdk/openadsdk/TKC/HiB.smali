.class public Lcom/bytedance/sdk/openadsdk/TKC/HiB;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/bytedance/sdk/openadsdk/TKC/TEQ$TKC;


# static fields
.field public static Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field public static TKC:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field public static sP:Lcom/bytedance/sdk/openadsdk/FilterWord;


# instance fields
.field private final EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

.field private HiB:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field private final Jcg:I

.field private vS:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    const-string v1, "100:1"

    const-string v2, "GOOD"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    const-string v1, "100:2"

    const-string v2, "NOT_BAD"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->sP:Lcom/bytedance/sdk/openadsdk/FilterWord;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    const-string v1, "100:3"

    const-string v2, "BAD"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->TKC:Lcom/bytedance/sdk/openadsdk/FilterWord;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/bytedance/sdk/openadsdk/TKC/TEQ;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->Jcg:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$TKC;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->Sj(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->Sj()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->sP()V

    return-void
.end method

.method private Sj()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->vS:Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v2, "#F8F8F8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    const-string v5, "#FE2C55"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v3, "#12FE2C55"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->vS:Landroid/graphics/drawable/StateListDrawable;

    const v4, 0x10100a1

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->vS:Landroid/graphics/drawable/StateListDrawable;

    new-array v3, v1, [I

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->vS:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private Sj(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->TKC:Lcom/bytedance/sdk/openadsdk/FilterWord;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->HiB:Lcom/bytedance/sdk/openadsdk/FilterWord;

    :goto_0
    return-void

    :cond_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->sP:Lcom/bytedance/sdk/openadsdk/FilterWord;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->HiB:Lcom/bytedance/sdk/openadsdk/FilterWord;

    return-void

    :cond_2
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->HiB:Lcom/bytedance/sdk/openadsdk/FilterWord;

    return-void
.end method

.method private sP()V
    .locals 8

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uA()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uA()Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x41000000    # 8.0f

    goto :goto_1

    :cond_1
    const/high16 v5, 0x40800000    # 4.0f

    :goto_1
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5, v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/TKC/Sj;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/TKC/Sj;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uA()Z

    move-result v4

    const/16 v5, 0x11

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0xc

    :goto_2
    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v7, v7, v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->Jcg:I

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_bad"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\ud83d\ude21"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_not_bad"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\ud83d\ude10"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    const-string v2, "\ud83d\ude0d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "tt_good"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->HiB:Lcom/bytedance/sdk/openadsdk/FilterWord;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->HiB:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    return-void
.end method
