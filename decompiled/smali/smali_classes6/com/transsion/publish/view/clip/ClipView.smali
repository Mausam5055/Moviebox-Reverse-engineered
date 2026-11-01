.class public Lcom/transsion/publish/view/clip/ClipView;
.super Landroid/view/View;


# static fields
.field public static final BORDERDISTANCE:I = 0x0

.field public static final CIRCLE_ZOOM:I = 0x3

.field public static final CIRCULAR:I = 0x0

.field public static final RECTANGULAR:I = 0x1

.field public static TYPE_START:I = 0x0

.field public static mHorizontalPadding:I = 0x10


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field public innerCircle:I

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/view/clip/ClipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/view/clip/ClipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    iput p2, p0, Lcom/transsion/publish/view/clip/ClipView;->innerCircle:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/publish/view/clip/ClipView;->i:Z

    iput-boolean p2, p0, Lcom/transsion/publish/view/clip/ClipView;->j:Z

    iput-boolean p2, p0, Lcom/transsion/publish/view/clip/ClipView;->k:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public cropHeight()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    return v0
.end method

.method public cropWidth()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    return v0
.end method

.method public getInnerCircle()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->innerCircle:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v1, :cond_4

    iget v2, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    if-lez v2, :cond_4

    if-lez v6, :cond_4

    if-lez v7, :cond_4

    iget-boolean v0, p0, Lcom/transsion/publish/view/clip/ClipView;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/publish/view/clip/ClipView;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, v6, v7}, Lmp/b;->a(Landroid/content/Context;IIII)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    const/high16 v5, 0x3f800000    # 1.0f

    move v3, v6

    move v4, v7

    invoke-static/range {v0 .. v5}, Lmp/b;->b(Landroid/content/Context;IIIIF)[I

    move-result-object v0

    :goto_0
    aget v1, v0, v8

    iput v1, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    aget v0, v0, v9

    iput v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    :cond_1
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    sub-int v0, v6, v0

    div-int/lit8 v8, v0, 0x2

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    sub-int v0, v7, v0

    div-int/lit8 v10, v0, 0x2

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$color;->cl31_50_p:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v6

    int-to-float v11, v10

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v3, v6

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    add-int/2addr v0, v10

    int-to-float v2, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v3, v8

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    add-int/2addr v0, v10

    int-to-float v4, v0

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    add-int/2addr v0, v8

    int-to-float v1, v0

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    add-int/2addr v0, v10

    int-to-float v4, v0

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    int-to-float v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput v8, p0, Lcom/transsion/publish/view/clip/ClipView;->e:I

    iput v10, p0, Lcom/transsion/publish/view/clip/ClipView;->f:I

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/transsion/publish/view/clip/ClipView;->g:I

    iget-boolean v1, p0, Lcom/transsion/publish/view/clip/ClipView;->k:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    move v9, v10

    :goto_1
    sub-int/2addr v1, v9

    iput v1, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    :goto_2
    iget-boolean v1, p0, Lcom/transsion/publish/view/clip/ClipView;->j:Z

    if-eqz v1, :cond_6

    int-to-float v1, v8

    int-to-float v2, v10

    int-to-float v3, v0

    int-to-float v4, v10

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->e:I

    int-to-float v1, v0

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    int-to-float v2, v0

    iget v3, p0, Lcom/transsion/publish/view/clip/ClipView;->g:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->e:I

    int-to-float v1, v0

    iget v2, p0, Lcom/transsion/publish/view/clip/ClipView;->f:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/transsion/publish/view/clip/ClipView;->f:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_4
    sget v0, Lcom/transsion/publish/view/clip/ClipView;->TYPE_START:I

    if-nez v0, :cond_5

    div-int/lit8 v0, v6, 0x3

    iput v0, p0, Lcom/transsion/publish/view/clip/ClipView;->innerCircle:I

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    div-int/lit8 v1, v7, 0x2

    int-to-float v2, v1

    sget v3, Lcom/transsion/publish/view/clip/ClipView;->mHorizontalPadding:I

    sub-int v3, v6, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/publish/R$color;->cl31_50_p:I

    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    int-to-float v4, v7

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v3, Lcom/transsion/publish/view/clip/ClipView;->mHorizontalPadding:I

    sub-int/2addr v6, v3

    add-int/2addr v6, v1

    int-to-float v1, v6

    iget-object v3, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$color;->cl31_50_p:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v8, v6

    sub-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v9, v0

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v10, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move v2, v9

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v6

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v6, v6

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v3, v6

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move v2, v10

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    move v1, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public rect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/transsion/publish/view/clip/ClipView;->e:I

    iget v2, p0, Lcom/transsion/publish/view/clip/ClipView;->f:I

    iget v3, p0, Lcom/transsion/publish/view/clip/ClipView;->g:I

    iget v4, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public setFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/publish/view/clip/ClipView;->k:Z

    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/publish/view/clip/ClipView;->j:Z

    return-void
.end method

.method public setSizeNeedChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/publish/view/clip/ClipView;->i:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStart(I)V
    .locals 0

    sput p1, Lcom/transsion/publish/view/clip/ClipView;->TYPE_START:I

    return-void
.end method

.method public setStartWH(II)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    iput p2, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    return-void
.end method
