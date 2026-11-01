.class public Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private final Dq:Landroid/graphics/RectF;

.field private final EjP:Landroid/graphics/Bitmap;

.field private Fmk:Landroid/graphics/Shader$TileMode;

.field private final HiB:Landroid/graphics/Paint;

.field private final Jcg:I

.field private RiZ:Landroid/content/res/ColorStateList;

.field private final Sj:Landroid/graphics/RectF;

.field private final TEQ:Landroid/graphics/Matrix;

.field private final TKC:Landroid/graphics/RectF;

.field private TzV:F

.field private final Ym:Landroid/graphics/RectF;

.field private Zq:F

.field private aa:Landroid/graphics/Shader$TileMode;

.field private dNu:Z

.field private final sP:Landroid/graphics/RectF;

.field private sU:Landroid/widget/ImageView$ScaleType;

.field private sef:Z

.field private final uA:Landroid/graphics/Paint;

.field private final uvD:[Z

.field private final vS:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Ym:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->aa:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Fmk:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sef:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Zq:F

    const/4 v3, 0x4

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->dNu:Z

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    const/high16 v3, -0x1000000

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->RiZ:Landroid/content/res/ColorStateList;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sU:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->EjP:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->vS:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Jcg:I

    int-to-float v4, v4

    int-to-float p1, p1

    invoke-virtual {v0, v2, v2, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->RiZ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public static Sj(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p0, :cond_4

    instance-of v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/bumptech/glide/load/resource/drawable/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_2
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;-><init>(Landroid/graphics/Bitmap;)V

    :cond_5
    return-object p0
.end method

.method public static Sj(Landroid/graphics/Bitmap;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private Sj()V
    .locals 9

    sget-object v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP$1;->Sj:[I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sU:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->vS:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Jcg:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->vS:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Jcg:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->vS:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Jcg:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    int-to-float v2, v2

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TKC:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    div-float v5, v4, v3

    div-float/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->vS:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Jcg:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v0, v0, v4

    const/4 v4, 0x0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Jcg:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->vS:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->vS:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Jcg:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    :goto_1
    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    div-float v7, v6, v3

    add-float/2addr v4, v7

    add-float/2addr v5, v2

    float-to-int v2, v5

    int-to-float v2, v2

    div-float/2addr v6, v3

    add-float/2addr v2, v6

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    div-float v5, v4, v3

    div-float/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->vS:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Jcg:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sef:Z

    return-void
.end method

.method private Sj(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Zq:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v1

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, v2

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Zq:F

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Ym:Landroid/graphics/RectF;

    add-float v6, v1, v4

    add-float v7, v2, v4

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Ym:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Ym:Landroid/graphics/RectF;

    sub-float v6, v0, v4

    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Ym:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    const/4 v5, 0x2

    aget-boolean v2, v2, v5

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Ym:Landroid/graphics/RectF;

    sub-float v5, v0, v4

    sub-float v6, v3, v4

    invoke-virtual {v2, v5, v6, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Ym:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Ym:Landroid/graphics/RectF;

    sub-float v2, v3, v4

    add-float/2addr v4, v1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Ym:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private static Sj([Z)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static sP(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    const-string p0, "RoundedDrawable"

    const-string v1, "Failed to create bitmap from drawable!"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private sP(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP([Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Zq:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    iget v8, v1, Landroid/graphics/RectF;->left:F

    iget v9, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v1, v8

    iget-object v2, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float v16, v9, v2

    iget v15, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Zq:F

    iget v2, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v17, v2, v3

    iget-object v2, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-nez v2, :cond_2

    sub-float v3, v8, v17

    add-float v5, v8, v15

    iget-object v7, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v9

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v9, v17

    add-float v6, v9, v15

    iget-object v7, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    move v3, v8

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v2, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-nez v2, :cond_3

    sub-float v2, v1, v15

    sub-float v3, v2, v17

    iget-object v7, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v9

    move v5, v1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v9, v17

    add-float v6, v9, v15

    iget-object v7, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v2, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_4

    sub-float v2, v1, v15

    sub-float v11, v2, v17

    add-float v13, v1, v17

    iget-object v2, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v12, v16

    move/from16 v14, v16

    move v9, v15

    move-object v15, v2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v16, v9

    iget-object v7, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v1

    move v5, v1

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    move v9, v15

    :goto_0
    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-nez v1, :cond_5

    sub-float v11, v8, v17

    add-float v13, v8, v9

    iget-object v15, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v12, v16

    move/from16 v14, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v16, v9

    iget-object v7, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v8

    move v5, v8

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private static sP([Z)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public Sj(F)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;
    .locals 1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public Sj(FFFF)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Zq:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid radius value: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Zq:F

    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    cmpl-float p1, p1, v1

    const/4 v2, 0x0

    if-lez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    aput-boolean p1, v0, v2

    cmpl-float p1, p2, v1

    if-lez p1, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    aput-boolean p1, v0, v3

    cmpl-float p1, p3, v1

    if-lez p1, :cond_4

    move p1, v3

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    const/4 p2, 0x2

    aput-boolean p1, v0, p2

    cmpl-float p1, p4, v1

    if-lez p1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    const/4 p1, 0x3

    aput-boolean v3, v0, p1

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiple nonzero corner radii not yet supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Sj(Landroid/content/res/ColorStateList;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->RiZ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public Sj(Landroid/graphics/Shader$TileMode;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->aa:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->aa:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sef:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public Sj(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sU:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sU:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj()V

    :cond_1
    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->dNu:Z

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sef:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->EjP:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->aa:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Fmk:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->aa:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Fmk:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TEQ:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sef:Z

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->dNu:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uvD:[Z

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj([Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Zq:F

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/graphics/Canvas;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->TzV:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Dq:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Jcg:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->vS:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->RiZ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->RiZ:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->uA:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public sP(Landroid/graphics/Shader$TileMode;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Fmk:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Fmk:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sef:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->HiB:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
