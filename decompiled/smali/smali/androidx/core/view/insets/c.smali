.class Landroidx/core/view/insets/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/insets/f$c;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Landroidx/core/view/insets/f;

.field private c:Lz0/c;

.field private d:Lz0/c;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Landroidx/core/view/insets/f;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    sget-object v0, Lz0/c;->e:Lz0/c;

    iput-object v0, p0, Landroidx/core/view/insets/c;->c:Lz0/c;

    iput-object v0, p0, Landroidx/core/view/insets/c;->d:Lz0/c;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/core/view/insets/c;->f(Ljava/util/List;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroidx/core/view/insets/c;->f(Ljava/util/List;Z)V

    invoke-virtual {p1, p0}, Landroidx/core/view/insets/f;->g(Landroidx/core/view/insets/f$c;)V

    iput-object p1, p0, Landroidx/core/view/insets/c;->b:Landroidx/core/view/insets/f;

    return-void
.end method

.method private f(Ljava/util/List;Z)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/insets/Protection;

    invoke-virtual {v2}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v3

    if-eq v3, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/core/view/insets/Protection;->getController()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p0}, Landroidx/core/view/insets/Protection;->setController(Ljava/lang/Object;)V

    iget-object v3, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already controlled by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private j()V
    .locals 5

    sget-object v0, Lz0/c;->e:Lz0/c;

    iget-object v1, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/insets/Protection;

    iget-object v3, p0, Landroidx/core/view/insets/c;->c:Lz0/c;

    iget-object v4, p0, Landroidx/core/view/insets/c;->d:Lz0/c;

    invoke-virtual {v2, v3, v4, v0}, Landroidx/core/view/insets/Protection;->dispatchInsets(Lz0/c;Lz0/c;Lz0/c;)Lz0/c;

    move-result-object v2

    invoke-static {v0, v2}, Lz0/c;->a(Lz0/c;Lz0/c;)Lz0/c;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Landroidx/core/view/insets/c;->e:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/core/view/insets/c;->e:I

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/core/view/insets/c;->j()V

    :cond_1
    return-void
.end method

.method public b(ILz0/c;Landroid/graphics/RectF;)V
    .locals 6

    iget-object v0, p0, Landroidx/core/view/insets/c;->d:Lz0/c;

    iget-object v1, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_9

    iget-object v3, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/insets/Protection;

    invoke-virtual {v3}, Landroidx/core/view/insets/Protection;->getSide()I

    move-result v4

    and-int v5, v4, p1

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Landroidx/core/view/insets/Protection;->setSystemVisible(Z)V

    if-eq v4, v2, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v0, Lz0/c;->d:I

    if-lez v4, :cond_2

    iget v5, p2, Lz0/c;->d:I

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    :cond_2
    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    goto :goto_1

    :cond_3
    iget v4, v0, Lz0/c;->c:I

    if-lez v4, :cond_4

    iget v5, p2, Lz0/c;->c:I

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    :cond_4
    iget v4, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    goto :goto_1

    :cond_5
    iget v4, v0, Lz0/c;->b:I

    if-lez v4, :cond_6

    iget v5, p2, Lz0/c;->b:I

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    :cond_6
    iget v4, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    goto :goto_1

    :cond_7
    iget v4, v0, Lz0/c;->a:I

    if-lez v4, :cond_8

    iget v5, p2, Lz0/c;->a:I

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    :cond_8
    iget v4, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public c(Lz0/c;Lz0/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/insets/c;->c:Lz0/c;

    iput-object p2, p0, Landroidx/core/view/insets/c;->d:Lz0/c;

    invoke-direct {p0}, Landroidx/core/view/insets/c;->j()V

    return-void
.end method

.method public d()V
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/core/view/insets/c;->e:I

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/insets/Protection;

    invoke-virtual {v1, p1}, Landroidx/core/view/insets/Protection;->dispatchColorHint(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method g()V
    .locals 3

    iget-boolean v0, p0, Landroidx/core/view/insets/c;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/view/insets/c;->f:Z

    iget-object v1, p0, Landroidx/core/view/insets/c;->b:Landroidx/core/view/insets/f;

    invoke-virtual {v1, p0}, Landroidx/core/view/insets/f;->n(Landroidx/core/view/insets/f$c;)V

    iget-object v1, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/insets/Protection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/core/view/insets/Protection;->setController(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method h(I)Landroidx/core/view/insets/Protection;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/insets/Protection;

    return-object p1
.end method

.method i()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
