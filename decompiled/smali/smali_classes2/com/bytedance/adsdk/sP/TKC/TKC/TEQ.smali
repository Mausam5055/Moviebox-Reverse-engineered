.class public Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;
.super Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;


# instance fields
.field private Dq:Landroid/graphics/Path;

.field private TEQ:I

.field private uA:I


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->Dq:Landroid/graphics/Path;

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->uA:I

    iput p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->TEQ:I

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj()F

    move-result p1

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TEQ;->Sj()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->uA:I

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TEQ;->sP()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->TEQ:I

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iget p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->uA:I

    int-to-float p3, p3

    iget v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->TEQ:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->Dq:Landroid/graphics/Path;

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr p1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, p2, p1, p1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_0
    return-void
.end method

.method private static Sj(Landroid/view/View;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->Sj()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->uA:I

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(I)V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->vS()F

    move-result p2

    iget p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->uA:I

    iget v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->TEQ:I

    invoke-static {v0, p3, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->Sj(Landroid/view/View;II)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/TEQ;->Dq:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method
