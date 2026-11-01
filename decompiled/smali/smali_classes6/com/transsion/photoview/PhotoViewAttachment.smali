.class public Lcom/transsion/photoview/PhotoViewAttachment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;,
        Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private final h:Landroid/widget/ImageView;

.field private i:Landroid/view/GestureDetector;

.field private j:Lcom/transsion/photoview/b;

.field private k:Lcom/transsion/photoview/n;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/Matrix;

.field private final o:Landroid/graphics/RectF;

.field private final p:[F

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnLongClickListener;

.field private s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

.field private t:I

.field private u:I

.field private v:F

.field private w:Z

.field private x:Landroid/widget/ImageView$ScaleType;

.field private final y:Lcom/transsion/photoview/c;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->a:Landroid/view/animation/Interpolator;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->g:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->o:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->p:[F

    const/4 v1, 0x2

    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    iput-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    new-instance v0, Lcom/transsion/photoview/PhotoViewAttachment$a;

    invoke-direct {v0, p0}, Lcom/transsion/photoview/PhotoViewAttachment$a;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;)V

    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->y:Lcom/transsion/photoview/c;

    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->v:F

    new-instance v1, Lcom/transsion/photoview/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/transsion/photoview/b;-><init>(Landroid/content/Context;Lcom/transsion/photoview/c;)V

    iput-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    invoke-direct {p0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->Q(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/transsion/photoview/n;

    invoke-direct {v0, p1}, Lcom/transsion/photoview/n;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->k:Lcom/transsion/photoview/n;

    return-void
.end method

.method private A()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->V(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private B()Z
    .locals 13

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->E(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/transsion/photoview/PhotoViewAttachment;->H(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v5, v2, v4

    const/4 v6, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-gtz v5, :cond_3

    sget-object v5, Lcom/transsion/photoview/PhotoViewAttachment$d;->a:[I

    iget-object v12, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v5, v5, v12

    if-eq v5, v10, :cond_2

    if-eq v5, v8, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v7

    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v4, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    :goto_1
    iput v10, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    goto :goto_2

    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v2, v11

    if-lez v5, :cond_4

    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    neg-float v4, v2

    goto :goto_2

    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_5

    iput v9, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    sub-float/2addr v4, v2

    goto :goto_2

    :cond_5
    iput v6, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    move v4, v11

    :goto_2
    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/transsion/photoview/PhotoViewAttachment;->I(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v5, v3, v2

    if-gtz v5, :cond_8

    sget-object v1, Lcom/transsion/photoview/PhotoViewAttachment$d;->a:[I

    iget-object v5, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v10, :cond_7

    if-eq v1, v8, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v11, v2

    goto :goto_4

    :cond_6
    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v11, v0

    :goto_4
    iput v10, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    goto :goto_5

    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v11

    if-lez v5, :cond_9

    iput v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    neg-float v11, v3

    goto :goto_5

    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_a

    sub-float v11, v2, v0

    iput v9, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    goto :goto_5

    :cond_a
    iput v6, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    :goto_5
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v11, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v9
.end method

.method private E(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->o:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->o:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private F()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private H(Landroid/widget/ImageView;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private I(Landroid/widget/ImageView;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private P(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->p:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->p:[F

    aget p1, p1, p2

    return p1
.end method

.method private Q(Landroid/widget/ImageView;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/transsion/photoview/PhotoViewAttachment$b;

    invoke-direct {v1, p0}, Lcom/transsion/photoview/PhotoViewAttachment$b;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->i:Landroid/view/GestureDetector;

    new-instance p1, Lcom/transsion/photoview/PhotoViewAttachment$c;

    invoke-direct {p1, p0}, Lcom/transsion/photoview/PhotoViewAttachment$c;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method private S()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->v:F

    invoke-virtual {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->j0(F)V

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->V(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->B()Z

    return-void
.end method

.method private V(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/photoview/PhotoViewAttachment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->f:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/photoview/PhotoViewAttachment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->g:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/photoview/PhotoViewAttachment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->t:I

    return p0
.end method

.method static bridge synthetic e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->a:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->r:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/transsion/photoview/PhotoViewAttachment;)F
    .locals 0

    iget p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    return p0
.end method

.method static bridge synthetic i(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->q:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/j;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic k(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/e;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic l(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/f;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic m(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/g;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/h;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic p(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/transsion/photoview/PhotoViewAttachment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->u:I

    return p0
.end method

.method static bridge synthetic r(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/k;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic s(Lcom/transsion/photoview/PhotoViewAttachment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->b:I

    return p0
.end method

.method static bridge synthetic t(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->y:Lcom/transsion/photoview/c;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/n;
    .locals 0

    iget-object p0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->k:Lcom/transsion/photoview/n;

    return-object p0
.end method

.method private u0(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->I(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/transsion/photoview/PhotoViewAttachment;->H(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget-object v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    iget-object v5, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    iget-object v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->v:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_4
    sget-object p1, Lcom/transsion/photoview/PhotoViewAttachment$d;->a:[I

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->l:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_0
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->S()V

    return-void
.end method

.method static bridge synthetic v(Lcom/transsion/photoview/PhotoViewAttachment;Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    return-void
.end method

.method static bridge synthetic w(Lcom/transsion/photoview/PhotoViewAttachment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    return-void
.end method

.method static bridge synthetic x(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/widget/ImageView;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->H(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic y(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/widget/ImageView;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->I(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->s:Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public C(Landroid/graphics/Matrix;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public D()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->B()Z

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->F()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->E(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public G()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->m:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public J()F
    .locals 1

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    return v0
.end method

.method public K()F
    .locals 1

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    return v0
.end method

.method public L()F
    .locals 1

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    return v0
.end method

.method public M()F
    .locals 6

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/photoview/PhotoViewAttachment;->P(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/transsion/photoview/PhotoViewAttachment;->P(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public N()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public O(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    return v0
.end method

.method public T(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->f:Z

    return-void
.end method

.method public U(Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    iget v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    invoke-static {v0, v1, p1}, Lcom/transsion/photoview/o;->a(FFF)V

    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    return-void
.end method

.method public X(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    iget v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    invoke-static {v0, p1, v1}, Lcom/transsion/photoview/o;->a(FFF)V

    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    return-void
.end method

.method public Y(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    iget v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    invoke-static {p1, v0, v1}, Lcom/transsion/photoview/o;->a(FFF)V

    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    return-void
.end method

.method public Z(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->q:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a0(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->i:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public b0(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->r:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public c0(Lcom/transsion/photoview/d;)V
    .locals 0

    return-void
.end method

.method public d0(Lcom/transsion/photoview/e;)V
    .locals 0

    return-void
.end method

.method public e0(Lcom/transsion/photoview/f;)V
    .locals 0

    return-void
.end method

.method public f0(Lcom/transsion/photoview/g;)V
    .locals 0

    return-void
.end method

.method public g0(Lcom/transsion/photoview/h;)V
    .locals 0

    return-void
.end method

.method public h0(Lcom/transsion/photoview/j;)V
    .locals 0

    return-void
.end method

.method public i0(Lcom/transsion/photoview/k;)V
    .locals 0

    return-void
.end method

.method public j0(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    return-void
.end method

.method public k0(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    return-void
.end method

.method public l0(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->n0(FZ)V

    return-void
.end method

.method public m0(FFFZ)V
    .locals 7

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    new-instance v6, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;FFFF)V

    invoke-virtual {p4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/transsion/photoview/PhotoViewAttachment;->n:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->A()V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n0(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/transsion/photoview/PhotoViewAttachment;->m0(FFFZ)V

    return-void
.end method

.method public o0(FFF)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/transsion/photoview/o;->a(FFF)V

    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    iput p2, p0, Lcom/transsion/photoview/PhotoViewAttachment;->d:F

    iput p3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->u0(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/transsion/photoview/o;->d(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    move-result v0

    iget v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->D()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v9, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    move-result v5

    iget v6, p0, Lcom/transsion/photoview/PhotoViewAttachment;->c:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    move-result v0

    iget v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->D()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v9, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    move-result v5

    iget v6, p0, Lcom/transsion/photoview/PhotoViewAttachment;->e:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->k:Lcom/transsion/photoview/n;

    invoke-virtual {v0}, Lcom/transsion/photoview/n;->d()V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->z()V

    :goto_2
    move p1, v1

    :goto_3
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/photoview/b;->g()Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    invoke-virtual {v0}, Lcom/transsion/photoview/b;->f()Z

    move-result v0

    iget-object v3, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    invoke-virtual {v3, p2}, Lcom/transsion/photoview/b;->h(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    invoke-virtual {p1}, Lcom/transsion/photoview/b;->g()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_4

    :cond_5
    move p1, v1

    :goto_4
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->j:Lcom/transsion/photoview/b;

    invoke-virtual {v0}, Lcom/transsion/photoview/b;->f()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->g:Z

    move v1, v3

    goto :goto_6

    :cond_8
    move v1, p1

    :goto_6
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->i:Landroid/view/GestureDetector;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method public p0(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    invoke-static {p1}, Lcom/transsion/photoview/o;->e(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->x:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->t0()V

    :cond_0
    return-void
.end method

.method public q0(Lcom/transsion/photoview/i;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->k:Lcom/transsion/photoview/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/photoview/n;->k(Lcom/transsion/photoview/i;)V

    :cond_0
    return-void
.end method

.method public r0(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->b:I

    return-void
.end method

.method public s0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    invoke-virtual {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->t0()V

    return-void
.end method

.method public t0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->u0(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment;->S()V

    :goto_0
    return-void
.end method
