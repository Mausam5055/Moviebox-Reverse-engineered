.class public Lcom/bytedance/sdk/openadsdk/core/widget/Dq;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;
    }
.end annotation


# static fields
.field private static final Sj:[I


# instance fields
.field private Dq:I

.field private final EjP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Landroid/graphics/Paint;

.field private Jcg:I

.field private final TKC:Landroid/graphics/RectF;

.field private final sP:Landroid/graphics/RectF;

.field private uA:I

.field private final vS:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "#1AFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#4DFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#99FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Sj:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->sP:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->EjP:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->vS:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->HiB:Landroid/graphics/Paint;

    const-string v0, "#D9D9D9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private Sj()V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Dq:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->uA:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->sP:Landroid/graphics/RectF;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->vS:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->uA:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->EjP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;

    iget v3, v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;->TKC:F

    iget v4, v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;->EjP:F

    iget v5, v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;->sP:F

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;->Sj:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    div-int/lit8 p3, p2, 0x2

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    mul-int/lit8 p3, p3, 0x5

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->uA:I

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->sP:Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float p1, p2

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    invoke-virtual {p3, p2, p2, p2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p2, Landroid/graphics/LinearGradient;

    const-string p3, "#90C0FF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const-string p4, "#196BE4"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    filled-new-array {p3, p4}, [I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    move v4, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->vS:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->EjP:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    int-to-float p2, p2

    const/high16 p3, 0x40800000    # 4.0f

    div-float/2addr p2, p3

    sget-object p3, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Sj:[I

    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    aget v1, p3, v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->EjP:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float v6, p1, v5

    invoke-direct {v3, v2, v4, p2, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;-><init>(Landroid/graphics/Paint;FFF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Sj()V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Dq:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    if-le p1, v1, :cond_2

    move p1, v1

    :cond_2
    :goto_0
    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Dq:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Sj()V

    return-void
.end method
