.class public abstract Lab/r;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:Lab/n;

.field d:Landroid/graphics/RectF;

.field final e:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lab/r;->a:Z

    iput-boolean v0, p0, Lab/r;->b:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lab/r;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lab/r;->e:Landroid/graphics/Path;

    return-void
.end method

.method public static a(Landroid/view/View;)Lab/r;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    new-instance v0, Lab/t;

    invoke-direct {v0, p0}, Lab/t;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    new-instance v0, Lab/s;

    invoke-direct {v0, p0}, Lab/s;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private d()Z
    .locals 3

    iget-object v0, p0, Lab/r;->d:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()V
    .locals 5

    invoke-direct {p0}, Lab/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab/r;->c:Lab/n;

    if-eqz v0, :cond_0

    invoke-static {}, Lab/o;->k()Lab/o;

    move-result-object v0

    iget-object v1, p0, Lab/r;->c:Lab/n;

    iget-object v2, p0, Lab/r;->d:Landroid/graphics/RectF;

    iget-object v3, p0, Lab/r;->e:Landroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v2, v3}, Lab/o;->e(Lab/n;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method


# virtual methods
.method abstract b(Landroid/view/View;)V
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lab/r;->a:Z

    return v0
.end method

.method public e(Landroid/graphics/Canvas;Lpa/a$a;)V
    .locals 1

    invoke-virtual {p0}, Lab/r;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lab/r;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lab/r;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-interface {p2, p1}, Lpa/a$a;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lpa/a$a;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public f(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p2, p0, Lab/r;->d:Landroid/graphics/RectF;

    invoke-direct {p0}, Lab/r;->k()V

    invoke-virtual {p0, p1}, Lab/r;->b(Landroid/view/View;)V

    return-void
.end method

.method public g(Landroid/view/View;Lab/n;)V
    .locals 0

    iput-object p2, p0, Lab/r;->c:Lab/n;

    invoke-direct {p0}, Lab/r;->k()V

    invoke-virtual {p0, p1}, Lab/r;->b(Landroid/view/View;)V

    return-void
.end method

.method public h(Landroid/view/View;Z)V
    .locals 1

    iget-boolean v0, p0, Lab/r;->a:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lab/r;->a:Z

    invoke-virtual {p0, p1}, Lab/r;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public i(Landroid/view/View;Z)V
    .locals 0

    iput-boolean p2, p0, Lab/r;->b:Z

    invoke-virtual {p0, p1}, Lab/r;->b(Landroid/view/View;)V

    return-void
.end method

.method abstract j()Z
.end method
