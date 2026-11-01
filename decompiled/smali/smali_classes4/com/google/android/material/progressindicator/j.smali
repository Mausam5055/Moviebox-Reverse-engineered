.class public final Lcom/google/android/material/progressindicator/j;
.super Lcom/google/android/material/progressindicator/g;


# instance fields
.field private p:Lcom/google/android/material/progressindicator/h;

.field private q:Lcom/google/android/material/progressindicator/i;

.field private r:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/h;Lcom/google/android/material/progressindicator/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/g;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;)V

    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/j;->z(Lcom/google/android/material/progressindicator/h;)V

    invoke-virtual {p0, p4}, Lcom/google/android/material/progressindicator/j;->y(Lcom/google/android/material/progressindicator/i;)V

    return-void
.end method

.method static t(Landroid/content/Context;Lcom/google/android/material/progressindicator/e;Lcom/google/android/material/progressindicator/c;)Lcom/google/android/material/progressindicator/j;
    .locals 2

    new-instance v0, Lcom/google/android/material/progressindicator/j;

    new-instance v1, Lcom/google/android/material/progressindicator/d;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/d;-><init>(Lcom/google/android/material/progressindicator/e;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/j;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/h;Lcom/google/android/material/progressindicator/i;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/google/android/material/R$drawable;->indeterminate_static:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/h;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/progressindicator/j;->A(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static u(Landroid/content/Context;Lcom/google/android/material/progressindicator/n;Lcom/google/android/material/progressindicator/k;)Lcom/google/android/material/progressindicator/j;
    .locals 2

    new-instance v0, Lcom/google/android/material/progressindicator/j;

    iget v1, p1, Lcom/google/android/material/progressindicator/n;->h:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/material/progressindicator/l;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/l;-><init>(Lcom/google/android/material/progressindicator/n;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/material/progressindicator/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/progressindicator/m;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/n;)V

    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/j;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/h;Lcom/google/android/material/progressindicator/i;)V

    return-object v0
.end method

.method private x()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->c:Lcom/google/android/material/progressindicator/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/progressindicator/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/progressindicator/a;->a(Landroid/content/ContentResolver;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public A(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/j;->r:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/j;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/j;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/j;->r:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/b;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/b;->c:[I

    aget v1, v2, v1

    invoke-static {v0, v1}, La1/a;->n(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/j;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/g;->h()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/j;->k()Z

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/j;->j()Z

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/progressindicator/h;->g(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/b;

    iget v0, v0, Lcom/google/android/material/progressindicator/b;->g:I

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/j;->getAlpha()I

    move-result v10

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/g;->m:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/b;

    iget v7, v3, Lcom/google/android/material/progressindicator/b;->d:I

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p1

    move v8, v10

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/h;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/progressindicator/j;->q:Lcom/google/android/material/progressindicator/i;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/progressindicator/h$a;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/j;->q:Lcom/google/android/material/progressindicator/i;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/i;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/material/progressindicator/h$a;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    instance-of v4, v3, Lcom/google/android/material/progressindicator/k;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/material/progressindicator/g;->m:Landroid/graphics/Paint;

    iget v6, v2, Lcom/google/android/material/progressindicator/h$a;->a:F

    iget-object v2, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/b;

    iget v7, v2, Lcom/google/android/material/progressindicator/b;->d:I

    const/4 v5, 0x0

    move-object v2, v3

    move-object v3, p1

    move v8, v10

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/h;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    iget-object v2, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/g;->m:Landroid/graphics/Paint;

    iget v5, v11, Lcom/google/android/material/progressindicator/h$a;->b:F

    iget-object v3, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/b;

    iget v7, v3, Lcom/google/android/material/progressindicator/b;->d:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/h;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/google/android/material/progressindicator/g;->m:Landroid/graphics/Paint;

    iget v5, v11, Lcom/google/android/material/progressindicator/h$a;->b:F

    iget v2, v2, Lcom/google/android/material/progressindicator/h$a;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/b;

    iget v7, v2, Lcom/google/android/material/progressindicator/b;->d:I

    const/4 v10, 0x0

    move-object v2, v3

    move-object v3, p1

    move v8, v10

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/h;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/progressindicator/j;->q:Lcom/google/android/material/progressindicator/i;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/i;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/material/progressindicator/j;->q:Lcom/google/android/material/progressindicator/i;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/progressindicator/h$a;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/g;->m:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/j;->getAlpha()I

    move-result v5

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/google/android/material/progressindicator/h;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/h$a;I)V

    if-lez v1, :cond_4

    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/google/android/material/progressindicator/j;->q:Lcom/google/android/material/progressindicator/i;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/i;->b:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/progressindicator/h$a;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    iget-object v5, p0, Lcom/google/android/material/progressindicator/g;->m:Landroid/graphics/Paint;

    iget v6, v3, Lcom/google/android/material/progressindicator/h$a;->b:F

    iget v7, v2, Lcom/google/android/material/progressindicator/h$a;->a:F

    iget-object v2, p0, Lcom/google/android/material/progressindicator/g;->b:Lcom/google/android/material/progressindicator/b;

    iget v8, v2, Lcom/google/android/material/progressindicator/b;->d:I

    move-object v2, v4

    move-object v3, p1

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/h;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/h;->e()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/h;->f()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->i()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->j()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->k()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic m(Landroidx/vectordrawable/graphics/drawable/b;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/g;->m(Landroidx/vectordrawable/graphics/drawable/b;)V

    return-void
.end method

.method public bridge synthetic q(ZZZ)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/g;->q(ZZZ)Z

    move-result p1

    return p1
.end method

.method r(ZZZ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/g;->r(ZZZ)Z

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/j;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/j;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/j;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/j;->q:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/i;->a()V

    :cond_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/j;->q:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/i;->g()V

    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic s(Landroidx/vectordrawable/graphics/drawable/b;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/g;->s(Landroidx/vectordrawable/graphics/drawable/b;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/g;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/g;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/g;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic start()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/g;->stop()V

    return-void
.end method

.method v()Lcom/google/android/material/progressindicator/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/j;->q:Lcom/google/android/material/progressindicator/i;

    return-object v0
.end method

.method w()Lcom/google/android/material/progressindicator/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    return-object v0
.end method

.method y(Lcom/google/android/material/progressindicator/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/j;->q:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/i;->e(Lcom/google/android/material/progressindicator/j;)V

    return-void
.end method

.method z(Lcom/google/android/material/progressindicator/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/j;->p:Lcom/google/android/material/progressindicator/h;

    return-void
.end method
