.class public final Landroidx/compose/ui/graphics/g0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/m1;


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/compose/ui/graphics/h0;->c()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method private final t(Ljava/util/List;Landroidx/compose/ui/graphics/m4;I)V
    .locals 9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/g;

    invoke-virtual {v1}, Ly/g;->v()J

    move-result-wide v1

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly/g;

    invoke-virtual {v3}, Ly/g;->v()J

    move-result-wide v3

    iget-object v5, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-static {v1, v2}, Ly/g;->m(J)F

    move-result v6

    invoke-static {v1, v2}, Ly/g;->n(J)F

    move-result v1

    invoke-static {v3, v4}, Ly/g;->m(J)F

    move-result v7

    invoke-static {v3, v4}, Ly/g;->n(J)F

    move-result v8

    move-object v2, v5

    move v3, v6

    move v4, v1

    move v5, v7

    move v6, v8

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final u(Ljava/util/List;Landroidx/compose/ui/graphics/m4;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly/g;

    invoke-virtual {v2}, Ly/g;->v()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-static {v2, v3}, Ly/g;->m(J)F

    move-result v5

    invoke-static {v2, v3}, Ly/g;->n(J)F

    move-result v2

    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v4, v5, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(FFFFI)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0, p5}, Landroidx/compose/ui/graphics/g0;->x(I)Landroid/graphics/Region$Op;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    return-void
.end method

.method public b(Landroidx/compose/ui/graphics/Path;I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    instance-of v1, p1, Landroidx/compose/ui/graphics/u0;

    if-eqz v1, :cond_0

    check-cast p1, Landroidx/compose/ui/graphics/u0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u0;->p()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/compose/ui/graphics/g0;->x(I)Landroid/graphics/Region$Op;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unable to obtain android.graphics.Path"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public d(Ly/i;Landroidx/compose/ui/graphics/m4;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ly/i;->f()F

    move-result v1

    invoke-virtual {p1}, Ly/i;->i()F

    move-result v2

    invoke-virtual {p1}, Ly/i;->g()F

    move-result v3

    invoke-virtual {p1}, Ly/i;->c()F

    move-result v4

    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object v5

    const/16 v6, 0x1f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    return-void
.end method

.method public e(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public f(FFFFLandroidx/compose/ui/graphics/m4;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-interface {p5}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public g(ILjava/util/List;Landroidx/compose/ui/graphics/m4;)V
    .locals 2

    sget-object v0, Landroidx/compose/ui/graphics/t4;->a:Landroidx/compose/ui/graphics/t4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/t4$a;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/t4;->e(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/ui/graphics/g0;->t(Ljava/util/List;Landroidx/compose/ui/graphics/m4;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/t4$a;->c()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/t4;->e(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/ui/graphics/g0;->t(Ljava/util/List;Landroidx/compose/ui/graphics/m4;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/t4$a;->b()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/t4;->e(II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/graphics/g0;->u(Ljava/util/List;Landroidx/compose/ui/graphics/m4;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public h(Landroidx/compose/ui/graphics/e4;JJJJLandroidx/compose/ui/graphics/m4;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/g0;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/g0;->c:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-static {p1}, Landroidx/compose/ui/graphics/q0;->b(Landroidx/compose/ui/graphics/e4;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/ui/graphics/g0;->b:Landroid/graphics/Rect;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p2, p3}, Lo0/p;->h(J)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {p2, p3}, Lo0/p;->i(J)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-static {p2, p3}, Lo0/p;->h(J)I

    move-result v2

    invoke-static {p4, p5}, Lo0/t;->g(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p2, p3}, Lo0/p;->i(J)I

    move-result p2

    invoke-static {p4, p5}, Lo0/t;->f(J)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object p2, p0, Landroidx/compose/ui/graphics/g0;->c:Landroid/graphics/Rect;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p6, p7}, Lo0/p;->h(J)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p6, p7}, Lo0/p;->i(J)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p6, p7}, Lo0/p;->h(J)I

    move-result p3

    invoke-static {p8, p9}, Lo0/t;->g(J)I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p6, p7}, Lo0/p;->i(J)I

    move-result p3

    invoke-static {p8, p9}, Lo0/t;->f(J)I

    move-result p4

    add-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p10}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public synthetic i(Ly/i;Landroidx/compose/ui/graphics/m4;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/l1;->b(Landroidx/compose/ui/graphics/m1;Ly/i;Landroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public k()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/graphics/p1;->a:Landroidx/compose/ui/graphics/p1;

    iget-object v1, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/p1;->a(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public synthetic l(Ly/i;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/l1;->a(Landroidx/compose/ui/graphics/m1;Ly/i;I)V

    return-void
.end method

.method public m(JJLandroidx/compose/ui/graphics/m4;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v1

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v2

    invoke-static {p3, p4}, Ly/g;->m(J)F

    move-result v3

    invoke-static {p3, p4}, Ly/g;->n(J)F

    move-result v4

    invoke-interface {p5}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method public o()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/graphics/p1;->a:Landroidx/compose/ui/graphics/p1;

    iget-object v1, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/p1;->a(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public p([F)V
    .locals 1

    invoke-static {p1}, Landroidx/compose/ui/graphics/j4;->c([F)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/r0;->a(Landroid/graphics/Matrix;[F)V

    iget-object p1, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public q(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/m4;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    instance-of v1, p1, Landroidx/compose/ui/graphics/u0;

    if-eqz v1, :cond_0

    check-cast p1, Landroidx/compose/ui/graphics/u0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u0;->p()Landroid/graphics/Path;

    move-result-object p1

    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unable to obtain android.graphics.Path"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(JFLandroidx/compose/ui/graphics/m4;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v1

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    invoke-interface {p4}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public s(FFFFFFLandroidx/compose/ui/graphics/m4;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    invoke-interface {p7}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final v()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public final w(Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/g0;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method public final x(I)Landroid/graphics/Region$Op;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/t1$a;->a()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/t1;->d(II)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    :goto_0
    return-object p1
.end method
