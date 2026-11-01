.class public Lab/i;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Lab/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab/i$c;
    }
.end annotation


# static fields
.field private static final x:Ljava/lang/String; = "i"

.field private static final y:Landroid/graphics/Paint;


# instance fields
.field private a:Lab/i$c;

.field private final b:[Lab/p$g;

.field private final c:[Lab/p$g;

.field private final d:Ljava/util/BitSet;

.field private e:Z

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/Region;

.field private final l:Landroid/graphics/Region;

.field private m:Lab/n;

.field private final n:Landroid/graphics/Paint;

.field private final o:Landroid/graphics/Paint;

.field private final p:Lza/a;

.field private final q:Lab/o$b;

.field private final r:Lab/o;

.field private s:Landroid/graphics/PorterDuffColorFilter;

.field private t:Landroid/graphics/PorterDuffColorFilter;

.field private u:I

.field private final v:Landroid/graphics/RectF;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lab/i;->y:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lab/n;

    invoke-direct {v0}, Lab/n;-><init>()V

    invoke-direct {p0, v0}, Lab/i;-><init>(Lab/n;)V

    return-void
.end method

.method protected constructor <init>(Lab/i$c;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lab/p$g;

    iput-object v1, p0, Lab/i;->b:[Lab/p$g;

    new-array v0, v0, [Lab/p$g;

    iput-object v0, p0, Lab/i;->c:[Lab/p$g;

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lab/i;->d:Ljava/util/BitSet;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lab/i;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lab/i;->g:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lab/i;->h:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lab/i;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lab/i;->j:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lab/i;->k:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lab/i;->l:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lab/i;->n:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lab/i;->o:Landroid/graphics/Paint;

    new-instance v3, Lza/a;

    invoke-direct {v3}, Lza/a;-><init>()V

    iput-object v3, p0, Lab/i;->p:Lza/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-static {}, Lab/o;->k()Lab/o;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Lab/o;

    invoke-direct {v3}, Lab/o;-><init>()V

    :goto_0
    iput-object v3, p0, Lab/i;->r:Lab/o;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lab/i;->v:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lab/i;->w:Z

    iput-object p1, p0, Lab/i;->a:Lab/i$c;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lab/i;->q0()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lab/i;->p0([I)Z

    new-instance p1, Lab/i$a;

    invoke-direct {p1, p0}, Lab/i$a;-><init>(Lab/i;)V

    iput-object p1, p0, Lab/i;->q:Lab/o$b;

    return-void
.end method

.method public constructor <init>(Lab/n;)V
    .locals 2

    new-instance v0, Lab/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lab/i$c;-><init>(Lab/n;Lta/a;)V

    invoke-direct {p0, v0}, Lab/i;-><init>(Lab/i$c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lab/n;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1}, Lab/n$b;->m()Lab/n;

    move-result-object p1

    invoke-direct {p0, p1}, Lab/i;-><init>(Lab/n;)V

    return-void
.end method

.method private I()F
    .locals 2

    invoke-direct {p0}, Lab/i;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab/i;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private P()Z
    .locals 3

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v1, v0, Lab/i$c;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v0, v0, Lab/i$c;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lab/i;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private Q()Z
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private R()Z
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lab/i;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private T()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private W(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-direct {p0}, Lab/i;->P()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Lab/i;->Y(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lab/i;->w:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lab/i;->p(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v0, p0, Lab/i;->v:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lab/i;->v:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    iget-object v2, p0, Lab/i;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lab/i;->a:Lab/i$c;

    iget v3, v3, Lab/i$c;->r:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Lab/i;->v:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lab/i;->a:Lab/i$c;

    iget v4, v4, Lab/i$c;->r:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lab/i;->a:Lab/i$c;

    iget v5, v5, Lab/i$c;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lab/i;->a:Lab/i$c;

    iget v5, v5, Lab/i$c;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v1, v4

    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, v3}, Lab/i;->p(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static X(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private Y(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lab/i;->D()I

    move-result v0

    invoke-virtual {p0}, Lab/i;->E()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method static synthetic b(Lab/i;)Ljava/util/BitSet;
    .locals 0

    iget-object p0, p0, Lab/i;->d:Ljava/util/BitSet;

    return-object p0
.end method

.method static synthetic c(Lab/i;)[Lab/p$g;
    .locals 0

    iget-object p0, p0, Lab/i;->b:[Lab/p$g;

    return-object p0
.end method

.method static synthetic d(Lab/i;)[Lab/p$g;
    .locals 0

    iget-object p0, p0, Lab/i;->c:[Lab/p$g;

    return-object p0
.end method

.method static synthetic e(Lab/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lab/i;->e:Z

    return p1
.end method

.method private f(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lab/i;->l(I)I

    move-result p2

    iput p2, p0, Lab/i;->u:I

    if-eq p2, p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lab/i;->h(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab/i;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lab/i;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lab/i;->a:Lab/i$c;

    iget v1, v1, Lab/i$c;->j:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lab/i;->f:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p1, p0, Lab/i;->v:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private i()V
    .locals 5

    invoke-direct {p0}, Lab/i;->I()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lab/i;->G()Lab/n;

    move-result-object v1

    new-instance v2, Lab/i$b;

    invoke-direct {v2, p0, v0}, Lab/i$b;-><init>(Lab/i;F)V

    invoke-virtual {v1, v2}, Lab/n;->y(Lab/n$c;)Lab/n;

    move-result-object v0

    iput-object v0, p0, Lab/i;->m:Lab/n;

    iget-object v1, p0, Lab/i;->r:Lab/o;

    iget-object v2, p0, Lab/i;->a:Lab/i$c;

    iget v2, v2, Lab/i$c;->k:F

    invoke-direct {p0}, Lab/i;->x()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lab/i;->h:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2, v3, v4}, Lab/o;->e(Lab/n;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method private j(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lab/i;->l(I)I

    move-result p1

    :cond_0
    iput p1, p0, Lab/i;->u:I

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p3
.end method

.method private k(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lab/i;->j(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p3, p4}, Lab/i;->f(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static m(Landroid/content/Context;)Lab/i;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lab/i;->n(Landroid/content/Context;F)Lab/i;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/Context;F)Lab/i;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lab/i;->o(Landroid/content/Context;FLandroid/content/res/ColorStateList;)Lab/i;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;FLandroid/content/res/ColorStateList;)Lab/i;
    .locals 1

    if-nez p2, :cond_0

    sget p2, Lcom/google/android/material/R$attr;->colorSurface:I

    const-class v0, Lab/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/google/android/material/color/b;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    new-instance v0, Lab/i;

    invoke-direct {v0}, Lab/i;-><init>()V

    invoke-virtual {v0, p0}, Lab/i;->S(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lab/i;->d0(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p1}, Lab/i;->c0(F)V

    return-object v0
.end method

.method private p(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lab/i;->d:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lab/i;->x:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->s:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lab/i;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lab/i;->p:Lza/a;

    invoke-virtual {v1}, Lza/a;->c()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lab/i;->b:[Lab/p$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Lab/i;->p:Lza/a;

    iget-object v3, p0, Lab/i;->a:Lab/i$c;

    iget v3, v3, Lab/i$c;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lab/p$g;->b(Lza/a;ILandroid/graphics/Canvas;)V

    iget-object v1, p0, Lab/i;->c:[Lab/p$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Lab/i;->p:Lza/a;

    iget-object v3, p0, Lab/i;->a:Lab/i$c;

    iget v3, v3, Lab/i$c;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lab/p$g;->b(Lza/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lab/i;->w:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lab/i;->D()I

    move-result v0

    invoke-virtual {p0}, Lab/i;->E()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lab/i;->g:Landroid/graphics/Path;

    sget-object v3, Lab/i;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private p0([I)Z
    .locals 4

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lab/i;->a:Lab/i$c;

    iget-object v2, v2, Lab/i$c;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lab/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lab/i;->a:Lab/i$c;

    iget-object v2, v2, Lab/i$c;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lab/i;->o:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lab/i;->a:Lab/i$c;

    iget-object v3, v3, Lab/i$c;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    iget-object v0, p0, Lab/i;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private q(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Lab/i;->n:Landroid/graphics/Paint;

    iget-object v3, p0, Lab/i;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v4, v0, Lab/i$c;->a:Lab/n;

    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lab/i;->r(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lab/n;Landroid/graphics/RectF;)V

    return-void
.end method

.method private q0()Z
    .locals 7

    iget-object v0, p0, Lab/i;->s:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lab/i;->t:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lab/i;->a:Lab/i$c;

    iget-object v3, v2, Lab/i$c;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lab/i$c;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lab/i;->n:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v2, v4, v5}, Lab/i;->k(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lab/i;->s:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lab/i;->a:Lab/i$c;

    iget-object v3, v2, Lab/i$c;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lab/i$c;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lab/i;->o:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v2, v4, v6}, Lab/i;->k(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lab/i;->t:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lab/i;->a:Lab/i$c;

    iget-boolean v3, v2, Lab/i$c;->u:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lab/i;->p:Lza/a;

    iget-object v2, v2, Lab/i$c;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v3, v2}, Lza/a;->d(I)V

    :cond_0
    iget-object v2, p0, Lab/i;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Landroidx/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lab/i;->t:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v0}, Landroidx/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5
.end method

.method private r(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lab/n;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, Lab/n;->u(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lab/n;->t()Lab/d;

    move-result-object p3

    invoke-interface {p3, p5}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lab/i;->a:Lab/i$c;

    iget p4, p4, Lab/i$c;->k:F

    mul-float/2addr p3, p4

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private r0()V
    .locals 4

    invoke-virtual {p0}, Lab/i;->O()F

    move-result v0

    iget-object v1, p0, Lab/i;->a:Lab/i$c;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lab/i$c;->r:I

    iget-object v1, p0, Lab/i;->a:Lab/i$c;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lab/i$c;->s:I

    invoke-direct {p0}, Lab/i;->q0()Z

    invoke-direct {p0}, Lab/i;->T()V

    return-void
.end method

.method private x()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lab/i;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lab/i;->I()F

    move-result v0

    iget-object v1, p0, Lab/i;->j:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lab/i;->j:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public A()F
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->k:F

    return v0
.end method

.method public B()F
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->n:F

    return v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lab/i;->u:I

    return v0
.end method

.method public D()I
    .locals 5

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v1, v0, Lab/i$c;->s:I

    int-to-double v1, v1

    iget v0, v0, Lab/i$c;->t:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    return v0
.end method

.method public E()I
    .locals 5

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v1, v0, Lab/i$c;->s:I

    int-to-double v1, v1

    iget v0, v0, Lab/i$c;->t:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    return v0
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->r:I

    return v0
.end method

.method public G()Lab/n;
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->a:Lab/n;

    return-object v0
.end method

.method public H()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public J()F
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->l:F

    return v0
.end method

.method public K()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public L()F
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->a:Lab/n;

    invoke-virtual {v0}, Lab/n;->r()Lab/d;

    move-result-object v0

    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public M()F
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->a:Lab/n;

    invoke-virtual {v0}, Lab/n;->t()Lab/d;

    move-result-object v0

    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public N()F
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->p:F

    return v0
.end method

.method public O()F
    .locals 2

    invoke-virtual {p0}, Lab/i;->y()F

    move-result v0

    invoke-virtual {p0}, Lab/i;->N()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public S(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    new-instance v1, Lta/a;

    invoke-direct {v1, p1}, Lta/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lab/i$c;->b:Lta/a;

    invoke-direct {p0}, Lab/i;->r0()V

    return-void
.end method

.method public U()Z
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->b:Lta/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lta/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V()Z
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->a:Lab/n;

    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lab/n;->u(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lab/i;->V()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lab/i;->g:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0(F)V
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->a:Lab/n;

    invoke-virtual {v0, p1}, Lab/n;->w(F)Lab/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/i;->setShapeAppearanceModel(Lab/n;)V

    return-void
.end method

.method public b0(Lab/d;)V
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->a:Lab/n;

    invoke-virtual {v0, p1}, Lab/n;->x(Lab/d;)Lab/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/i;->setShapeAppearanceModel(Lab/n;)V

    return-void
.end method

.method public c0(F)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v1, v0, Lab/i$c;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lab/i$c;->o:F

    invoke-direct {p0}, Lab/i;->r0()V

    :cond_0
    return-void
.end method

.method public d0(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v1, v0, Lab/i$c;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lab/i$c;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/i;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lab/i;->n:Landroid/graphics/Paint;

    iget-object v1, p0, Lab/i;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lab/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lab/i;->n:Landroid/graphics/Paint;

    iget-object v2, p0, Lab/i;->a:Lab/i$c;

    iget v2, v2, Lab/i$c;->m:I

    invoke-static {v0, v2}, Lab/i;->X(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lab/i;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lab/i;->t:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lab/i;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lab/i;->a:Lab/i$c;

    iget v2, v2, Lab/i$c;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lab/i;->o:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lab/i;->o:Landroid/graphics/Paint;

    iget-object v3, p0, Lab/i;->a:Lab/i$c;

    iget v3, v3, Lab/i$c;->m:I

    invoke-static {v1, v3}, Lab/i;->X(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, Lab/i;->e:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lab/i;->i()V

    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lab/i;->g:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lab/i;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lab/i;->e:Z

    :cond_0
    invoke-direct {p0, p1}, Lab/i;->W(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lab/i;->Q()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lab/i;->q(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-direct {p0}, Lab/i;->R()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lab/i;->t(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object p1, p0, Lab/i;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lab/i;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public e0(F)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v1, v0, Lab/i$c;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lab/i$c;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lab/i;->e:Z

    invoke-virtual {p0}, Lab/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public f0(IIII)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v1, v0, Lab/i$c;->i:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lab/i$c;->i:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lab/i;->invalidateSelf()V

    return-void
.end method

.method public g0(Landroid/graphics/Paint$Style;)V
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iput-object p1, v0, Lab/i$c;->v:Landroid/graphics/Paint$Style;

    invoke-direct {p0}, Lab/i;->T()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->m:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lab/i;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lab/i;->L()F

    move-result v0

    iget-object v1, p0, Lab/i;->a:Lab/i$c;

    iget v1, v1, Lab/i$c;->k:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lab/i;->g:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lab/i;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lab/i;->g:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lcom/google/android/material/drawable/d;->l(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lab/i;->k:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lab/i;->g:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lab/i;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lab/i;->l:Landroid/graphics/Region;

    iget-object v1, p0, Lab/i;->g:Landroid/graphics/Path;

    iget-object v2, p0, Lab/i;->k:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lab/i;->k:Landroid/graphics/Region;

    iget-object v1, p0, Lab/i;->l:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lab/i;->k:Landroid/graphics/Region;

    return-object v0
.end method

.method protected final h(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lab/i;->r:Lab/o;

    iget-object v1, p0, Lab/i;->a:Lab/i$c;

    iget-object v2, v1, Lab/i$c;->a:Lab/n;

    iget v3, v1, Lab/i$c;->k:F

    iget-object v4, p0, Lab/i;->q:Lab/o$b;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lab/o;->d(Lab/n;FLandroid/graphics/RectF;Lab/o$b;Landroid/graphics/Path;)V

    return-void
.end method

.method public h0(F)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v1, v0, Lab/i$c;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lab/i$c;->n:F

    invoke-direct {p0}, Lab/i;->r0()V

    :cond_0
    return-void
.end method

.method public i0(Z)V
    .locals 0

    iput-boolean p1, p0, Lab/i;->w:Z

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lab/i;->e:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j0(I)V
    .locals 1

    iget-object v0, p0, Lab/i;->p:Lza/a;

    invoke-virtual {v0, p1}, Lza/a;->d(I)V

    iget-object p1, p0, Lab/i;->a:Lab/i$c;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lab/i$c;->u:Z

    invoke-direct {p0}, Lab/i;->T()V

    return-void
.end method

.method public k0(I)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v1, v0, Lab/i$c;->q:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lab/i$c;->q:I

    invoke-direct {p0}, Lab/i;->T()V

    :cond_0
    return-void
.end method

.method protected l(I)I
    .locals 2

    invoke-virtual {p0}, Lab/i;->O()F

    move-result v0

    invoke-virtual {p0}, Lab/i;->B()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lab/i;->a:Lab/i$c;

    iget-object v1, v1, Lab/i$c;->b:Lta/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Lta/a;->c(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public l0(FI)V
    .locals 0

    invoke-virtual {p0, p1}, Lab/i;->o0(F)V

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/i;->n0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public m0(FLandroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lab/i;->o0(F)V

    invoke-virtual {p0, p2}, Lab/i;->n0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lab/i$c;

    iget-object v1, p0, Lab/i;->a:Lab/i$c;

    invoke-direct {v0, v1}, Lab/i$c;-><init>(Lab/i$c;)V

    iput-object v0, p0, Lab/i;->a:Lab/i$c;

    return-object p0
.end method

.method public n0(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v1, v0, Lab/i$c;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lab/i$c;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/i;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public o0(F)V
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iput p1, v0, Lab/i$c;->l:F

    invoke-virtual {p0}, Lab/i;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lab/i;->e:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    invoke-direct {p0, p1}, Lab/i;->p0([I)Z

    move-result p1

    invoke-direct {p0}, Lab/i;->q0()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lab/i;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method protected s(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v5, v0, Lab/i$c;->a:Lab/n;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lab/i;->r(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lab/n;Landroid/graphics/RectF;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v1, v0, Lab/i$c;->m:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lab/i$c;->m:I

    invoke-direct {p0}, Lab/i;->T()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iput-object p1, v0, Lab/i$c;->c:Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Lab/i;->T()V

    return-void
.end method

.method public setShapeAppearanceModel(Lab/n;)V
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iput-object p1, v0, Lab/i$c;->a:Lab/n;

    invoke-virtual {p0}, Lab/i;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iput-object p1, v0, Lab/i$c;->g:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lab/i;->q0()Z

    invoke-direct {p0}, Lab/i;->T()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v1, v0, Lab/i$c;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lab/i$c;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Lab/i;->q0()Z

    invoke-direct {p0}, Lab/i;->T()V

    :cond_0
    return-void
.end method

.method protected t(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Lab/i;->o:Landroid/graphics/Paint;

    iget-object v3, p0, Lab/i;->h:Landroid/graphics/Path;

    iget-object v4, p0, Lab/i;->m:Lab/n;

    invoke-direct {p0}, Lab/i;->x()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lab/i;->r(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lab/n;Landroid/graphics/RectF;)V

    return-void
.end method

.method public u()F
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->a:Lab/n;

    invoke-virtual {v0}, Lab/n;->j()Lab/d;

    move-result-object v0

    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public v()F
    .locals 2

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->a:Lab/n;

    invoke-virtual {v0}, Lab/n;->l()Lab/d;

    move-result-object v0

    invoke-virtual {p0}, Lab/i;->w()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method protected w()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lab/i;->i:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lab/i;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method public y()F
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget v0, v0, Lab/i$c;->o:F

    return v0
.end method

.method public z()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lab/i;->a:Lab/i$c;

    iget-object v0, v0, Lab/i$c;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method
