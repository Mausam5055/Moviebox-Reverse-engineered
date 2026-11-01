.class public Lcom/bytedance/sdk/openadsdk/core/widget/vS;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;


# instance fields
.field private Sj:F

.field private sP:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40100000    # 2.25f

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj:F

    const/16 p1, 0xc

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->sP:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj:F

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->sP:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj()V

    return-void
.end method

.method public static Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private Sj()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/EjP;->Sj()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_close_btn"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->EjP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj:F

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;

    const/16 v1, 0x1c

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;-><init>(Landroid/content/Context;IF)V

    return-object v0
.end method


# virtual methods
.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->sP:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
