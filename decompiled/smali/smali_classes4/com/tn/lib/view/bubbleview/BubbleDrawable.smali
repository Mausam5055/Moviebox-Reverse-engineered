.class public Lcom/tn/lib/view/bubbleview/BubbleDrawable;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;,
        Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;,
        Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;,
        Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/BitmapShader;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:Landroid/graphics/Bitmap;

.field private q:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private r:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

.field private s:Z

.field private t:I

.field u:F

.field v:F

.field w:F

.field x:F

.field y:[I


# direct methods
.method private constructor <init>(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->t:I

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->o(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->g:F

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->l(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->h:I

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->m(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->i:F

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->n(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->j:F

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->k(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->f(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->a(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->t:I

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->g(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->j(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->i(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->d(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->o:I

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->c(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->h(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->q:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->e(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->r:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-static {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->b(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    iget v0, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->p:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->u:F

    iget v0, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->v:F

    iget v0, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->w:F

    iget v0, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->x:F

    iget-object p1, p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t:[I

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->y:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;Lcom/tn/lib/view/bubbleview/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;-><init>(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$a;->b:[I

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->r:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d:Landroid/graphics/BitmapShader;

    :cond_2
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->g()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->o:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->u:F

    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->v:F

    iget v6, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->w:F

    iget v7, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->x:F

    iget-object v8, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->y:[I

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->q:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b:Landroid/graphics/Path;

    invoke-direct {p0, v0, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;Landroid/graphics/Path;)V

    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->g:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->t:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->g:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->i:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->j:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->h:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 8

    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v4, v2, v3

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v5

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v5, v2, v4

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v6, v4

    iget v7, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    sub-float/2addr v4, v7

    sub-float/2addr v6, v7

    invoke-direct {v0, v5, v4, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    sub-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    sub-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    sub-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v5, v2, v4

    iget v6, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v1

    sub-float/2addr v2, v6

    invoke-direct {v0, v1, v5, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float v4, v2, v1

    add-float/2addr v2, p1

    invoke-direct {v0, v1, p1, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private c(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 9

    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    :cond_0
    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v4, v2, v3

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v5

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v5, v2, v4

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v6, v4

    invoke-direct {v0, v5, v4, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    add-float v5, v2, v4

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v8, v6, v7

    add-float/2addr v7, v2

    add-float/2addr v7, v4

    invoke-direct {v0, v5, v8, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    add-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    add-float v4, v1, v2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v1, v5

    add-float/2addr v1, v2

    add-float/2addr v5, p1

    invoke-direct {v0, v4, p1, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private d(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v3, v1, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v4, v1, v3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    invoke-direct {v0, v4, v3, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v5, v3, v4

    add-float/2addr v4, v1

    invoke-direct {v0, v1, v5, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float v4, v3, v1

    add-float/2addr v3, p1

    invoke-direct {v0, v1, p1, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private e(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;Landroid/graphics/Path;)V
    .locals 1

    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->h(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->c(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    :goto_0
    return-void
.end method

.method private f(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    sub-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v4, v2, v3

    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    sub-float/2addr v4, v5

    iget v6, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    add-float/2addr v3, v6

    invoke-direct {v0, v4, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v4, v1, v2

    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    sub-float/2addr v4, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v6, v2

    sub-float/2addr v1, v5

    invoke-direct {v0, v4, v2, v1, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v5, v2, v4

    add-float/2addr v4, v1

    invoke-direct {v0, v1, v5, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float v4, v2, v1

    add-float/2addr v2, p1

    invoke-direct {v0, v1, p1, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private g()V
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->d:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private h(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->s:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->k:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->n:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v3, v1, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    add-float v6, v4, v5

    add-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-direct {v0, v3, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v4, v1, v3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    invoke-direct {v0, v4, v3, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    sub-float v5, v3, v4

    add-float/2addr v4, v1

    invoke-direct {v0, v1, v5, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->m:F

    add-float v4, p1, v3

    iget v5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->l:F

    add-float v6, v5, v1

    add-float/2addr v5, p1

    add-float/2addr v5, v3

    invoke-direct {v0, v1, v4, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->t:I

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
