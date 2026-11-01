.class public Lab/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab/n$c;,
        Lab/n$b;
    }
.end annotation


# static fields
.field public static final m:Lab/d;


# instance fields
.field a:Lab/e;

.field b:Lab/e;

.field c:Lab/e;

.field d:Lab/e;

.field e:Lab/d;

.field f:Lab/d;

.field g:Lab/d;

.field h:Lab/d;

.field i:Lab/g;

.field j:Lab/g;

.field k:Lab/g;

.field l:Lab/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lab/l;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lab/l;-><init>(F)V

    sput-object v0, Lab/n;->m:Lab/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n;->a:Lab/e;

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n;->b:Lab/e;

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n;->c:Lab/e;

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n;->d:Lab/e;

    new-instance v0, Lab/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n;->e:Lab/d;

    new-instance v0, Lab/a;

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n;->f:Lab/d;

    new-instance v0, Lab/a;

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n;->g:Lab/d;

    new-instance v0, Lab/a;

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n;->h:Lab/d;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n;->i:Lab/g;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n;->j:Lab/g;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n;->k:Lab/g;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n;->l:Lab/g;

    return-void
.end method

.method private constructor <init>(Lab/n$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lab/n$b;->a(Lab/n$b;)Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n;->a:Lab/e;

    invoke-static {p1}, Lab/n$b;->e(Lab/n$b;)Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n;->b:Lab/e;

    invoke-static {p1}, Lab/n$b;->f(Lab/n$b;)Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n;->c:Lab/e;

    invoke-static {p1}, Lab/n$b;->g(Lab/n$b;)Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n;->d:Lab/e;

    invoke-static {p1}, Lab/n$b;->h(Lab/n$b;)Lab/d;

    move-result-object v0

    iput-object v0, p0, Lab/n;->e:Lab/d;

    invoke-static {p1}, Lab/n$b;->i(Lab/n$b;)Lab/d;

    move-result-object v0

    iput-object v0, p0, Lab/n;->f:Lab/d;

    invoke-static {p1}, Lab/n$b;->j(Lab/n$b;)Lab/d;

    move-result-object v0

    iput-object v0, p0, Lab/n;->g:Lab/d;

    invoke-static {p1}, Lab/n$b;->k(Lab/n$b;)Lab/d;

    move-result-object v0

    iput-object v0, p0, Lab/n;->h:Lab/d;

    invoke-static {p1}, Lab/n$b;->l(Lab/n$b;)Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n;->i:Lab/g;

    invoke-static {p1}, Lab/n$b;->b(Lab/n$b;)Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n;->j:Lab/g;

    invoke-static {p1}, Lab/n$b;->c(Lab/n$b;)Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n;->k:Lab/g;

    invoke-static {p1}, Lab/n$b;->d(Lab/n$b;)Lab/g;

    move-result-object p1

    iput-object p1, p0, Lab/n;->l:Lab/g;

    return-void
.end method

.method synthetic constructor <init>(Lab/n$b;Lab/n$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lab/n;-><init>(Lab/n$b;)V

    return-void
.end method

.method public static a()Lab/n$b;
    .locals 1

    new-instance v0, Lab/n$b;

    invoke-direct {v0}, Lab/n$b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Lab/n$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lab/n;->c(Landroid/content/Context;III)Lab/n$b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;III)Lab/n$b;
    .locals 1

    new-instance v0, Lab/a;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lab/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lab/n;->d(Landroid/content/Context;IILab/d;)Lab/n$b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;IILab/d;)Lab/n$b;
    .locals 6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    if-eqz p2, :cond_0

    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, p0

    :cond_0
    sget-object p0, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    sget p1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget p2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    invoke-static {p0, v2, p3}, Lab/n;->m(Landroid/content/res/TypedArray;ILab/d;)Lab/d;

    move-result-object p3

    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    invoke-static {p0, v2, p3}, Lab/n;->m(Landroid/content/res/TypedArray;ILab/d;)Lab/d;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    invoke-static {p0, v3, p3}, Lab/n;->m(Landroid/content/res/TypedArray;ILab/d;)Lab/d;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    invoke-static {p0, v4, p3}, Lab/n;->m(Landroid/content/res/TypedArray;ILab/d;)Lab/d;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    invoke-static {p0, v5, p3}, Lab/n;->m(Landroid/content/res/TypedArray;ILab/d;)Lab/d;

    move-result-object p3

    new-instance v5, Lab/n$b;

    invoke-direct {v5}, Lab/n$b;-><init>()V

    invoke-virtual {v5, p2, v2}, Lab/n$b;->F(ILab/d;)Lab/n$b;

    move-result-object p2

    invoke-virtual {p2, v0, v3}, Lab/n$b;->K(ILab/d;)Lab/n$b;

    move-result-object p2

    invoke-virtual {p2, v1, v4}, Lab/n$b;->z(ILab/d;)Lab/n$b;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lab/n$b;->u(ILab/d;)Lab/n$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lab/n$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lab/n;->f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lab/n$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lab/n$b;
    .locals 1

    new-instance v0, Lab/a;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lab/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lab/n;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILab/d;)Lab/n$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Landroid/util/AttributeSet;IILab/d;)Lab/n$b;
    .locals 1

    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v0, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, p4}, Lab/n;->d(Landroid/content/Context;IILab/d;)Lab/n$b;

    move-result-object p0

    return-object p0
.end method

.method private static m(Landroid/content/res/TypedArray;ILab/d;)Lab/d;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Lab/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lab/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    new-instance p0, Lab/l;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lab/l;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public h()Lab/g;
    .locals 1

    iget-object v0, p0, Lab/n;->k:Lab/g;

    return-object v0
.end method

.method public i()Lab/e;
    .locals 1

    iget-object v0, p0, Lab/n;->d:Lab/e;

    return-object v0
.end method

.method public j()Lab/d;
    .locals 1

    iget-object v0, p0, Lab/n;->h:Lab/d;

    return-object v0
.end method

.method public k()Lab/e;
    .locals 1

    iget-object v0, p0, Lab/n;->c:Lab/e;

    return-object v0
.end method

.method public l()Lab/d;
    .locals 1

    iget-object v0, p0, Lab/n;->g:Lab/d;

    return-object v0
.end method

.method public n()Lab/g;
    .locals 1

    iget-object v0, p0, Lab/n;->l:Lab/g;

    return-object v0
.end method

.method public o()Lab/g;
    .locals 1

    iget-object v0, p0, Lab/n;->j:Lab/g;

    return-object v0
.end method

.method public p()Lab/g;
    .locals 1

    iget-object v0, p0, Lab/n;->i:Lab/g;

    return-object v0
.end method

.method public q()Lab/e;
    .locals 1

    iget-object v0, p0, Lab/n;->a:Lab/e;

    return-object v0
.end method

.method public r()Lab/d;
    .locals 1

    iget-object v0, p0, Lab/n;->e:Lab/d;

    return-object v0
.end method

.method public s()Lab/e;
    .locals 1

    iget-object v0, p0, Lab/n;->b:Lab/e;

    return-object v0
.end method

.method public t()Lab/d;
    .locals 1

    iget-object v0, p0, Lab/n;->f:Lab/d;

    return-object v0
.end method

.method public u(Landroid/graphics/RectF;)Z
    .locals 5

    iget-object v0, p0, Lab/n;->l:Lab/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lab/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab/n;->j:Lab/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab/n;->i:Lab/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab/n;->k:Lab/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lab/n;->e:Lab/d;

    invoke-interface {v1, p1}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Lab/n;->f:Lab/d;

    invoke-interface {v4, p1}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lab/n;->h:Lab/d;

    invoke-interface {v4, p1}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lab/n;->g:Lab/d;

    invoke-interface {v4, p1}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v1, p0, Lab/n;->b:Lab/e;

    instance-of v1, v1, Lab/m;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lab/n;->a:Lab/e;

    instance-of v1, v1, Lab/m;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lab/n;->c:Lab/e;

    instance-of v1, v1, Lab/m;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lab/n;->d:Lab/e;

    instance-of v1, v1, Lab/m;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public v()Lab/n$b;
    .locals 1

    new-instance v0, Lab/n$b;

    invoke-direct {v0, p0}, Lab/n$b;-><init>(Lab/n;)V

    return-object v0
.end method

.method public w(F)Lab/n;
    .locals 1

    invoke-virtual {p0}, Lab/n;->v()Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->o(F)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1}, Lab/n$b;->m()Lab/n;

    move-result-object p1

    return-object p1
.end method

.method public x(Lab/d;)Lab/n;
    .locals 1

    invoke-virtual {p0}, Lab/n;->v()Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->p(Lab/d;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1}, Lab/n$b;->m()Lab/n;

    move-result-object p1

    return-object p1
.end method

.method public y(Lab/n$c;)Lab/n;
    .locals 2

    invoke-virtual {p0}, Lab/n;->v()Lab/n$b;

    move-result-object v0

    invoke-virtual {p0}, Lab/n;->r()Lab/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lab/n$c;->a(Lab/d;)Lab/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lab/n$b;->I(Lab/d;)Lab/n$b;

    move-result-object v0

    invoke-virtual {p0}, Lab/n;->t()Lab/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lab/n$c;->a(Lab/d;)Lab/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lab/n$b;->N(Lab/d;)Lab/n$b;

    move-result-object v0

    invoke-virtual {p0}, Lab/n;->j()Lab/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lab/n$c;->a(Lab/d;)Lab/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lab/n$b;->x(Lab/d;)Lab/n$b;

    move-result-object v0

    invoke-virtual {p0}, Lab/n;->l()Lab/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lab/n$c;->a(Lab/d;)Lab/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lab/n$b;->C(Lab/d;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1}, Lab/n$b;->m()Lab/n;

    move-result-object p1

    return-object p1
.end method
