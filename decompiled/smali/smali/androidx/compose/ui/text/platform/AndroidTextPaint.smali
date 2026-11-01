.class public final Landroidx/compose/ui/text/platform/AndroidTextPaint;
.super Landroid/text/TextPaint;


# instance fields
.field private a:Landroidx/compose/ui/graphics/m4;

.field private b:Landroidx/compose/ui/text/style/i;

.field private c:I

.field private d:Landroidx/compose/ui/graphics/z4;

.field private e:Landroidx/compose/ui/graphics/j1;

.field private f:Landroidx/compose/runtime/a3;

.field private g:Ly/m;

.field private h:Lz/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput p2, p0, Landroid/text/TextPaint;->density:F

    sget-object p1, Landroidx/compose/ui/text/style/i;->b:Landroidx/compose/ui/text/style/i$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/i$a;->c()Landroidx/compose/ui/text/style/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b:Landroidx/compose/ui/text/style/i;

    sget-object p1, Lz/g;->o1:Lz/g$a;

    invoke-virtual {p1}, Lz/g$a;->a()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    sget-object p1, Landroidx/compose/ui/graphics/z4;->d:Landroidx/compose/ui/graphics/z4$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/z4$a;->a()Landroidx/compose/ui/graphics/z4;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/z4;

    return-void
.end method

.method private final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f:Landroidx/compose/runtime/a3;

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e:Landroidx/compose/ui/graphics/j1;

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g:Ly/m;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private final c()Landroidx/compose/ui/graphics/m4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a:Landroidx/compose/ui/graphics/m4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/graphics/t0;->b(Landroid/graphics/Paint;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a:Landroidx/compose/ui/graphics/m4;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    return v0
.end method

.method public final d(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/m4;->n(I)V

    iput p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    return-void
.end method

.method public final e(Landroidx/compose/ui/graphics/j1;JF)V
    .locals 4

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()V

    goto :goto_2

    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/b5;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/ui/graphics/b5;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/b5;->b()J

    move-result-wide p1

    invoke-static {p1, p2, p4}, Landroidx/compose/ui/text/style/k;->b(JF)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(J)V

    goto :goto_2

    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/y4;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e:Landroidx/compose/ui/graphics/j1;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g:Ly/m;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ly/m;->m()J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3}, Ly/m;->f(JJ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_5

    :cond_3
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e:Landroidx/compose/ui/graphics/j1;

    invoke-static {p2, p3}, Ly/m;->c(J)Ly/m;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g:Ly/m;

    new-instance v0, Landroidx/compose/ui/text/platform/AndroidTextPaint$setBrush$1;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint$setBrush$1;-><init>(Landroidx/compose/ui/graphics/j1;J)V

    invoke-static {v0}, Landroidx/compose/runtime/r2;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/a3;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f:Landroidx/compose/runtime/a3;

    :cond_5
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c()Landroidx/compose/ui/graphics/m4;

    move-result-object p1

    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f:Landroidx/compose/runtime/a3;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Shader;

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1, p2}, Landroidx/compose/ui/graphics/m4;->x(Landroid/graphics/Shader;)V

    invoke-static {p0, p4}, Landroidx/compose/ui/text/platform/f;->a(Landroid/text/TextPaint;F)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final f(J)V
    .locals 2

    const-wide/16 v0, 0x10

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()V

    :cond_0
    return-void
.end method

.method public final g(Lz/h;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h:Lz/h;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h:Lz/h;

    sget-object v0, Lz/l;->a:Lz/l;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lz/m;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/n4;->a:Landroidx/compose/ui/graphics/n4$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n4$a;->b()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->C(I)V

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    check-cast p1, Lz/m;

    invoke-virtual {p1}, Lz/m;->f()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->setStrokeWidth(F)V

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    invoke-virtual {p1}, Lz/m;->d()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->A(F)V

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    invoke-virtual {p1}, Lz/m;->c()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->r(I)V

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    invoke-virtual {p1}, Lz/m;->b()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->m(I)V

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    invoke-virtual {p1}, Lz/m;->e()Landroidx/compose/ui/graphics/p4;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/m4;->q(Landroidx/compose/ui/graphics/p4;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final h(Landroidx/compose/ui/graphics/z4;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/z4;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/z4;

    sget-object v0, Landroidx/compose/ui/graphics/z4;->d:Landroidx/compose/ui/graphics/z4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/z4$a;->a()Landroidx/compose/ui/graphics/z4;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/z4;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/z4;->b()F

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/f;->b(F)F

    move-result p1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/z4;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/z4;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/g;->m(J)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/z4;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/z4;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ly/g;->n(J)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/z4;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/z4;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Landroidx/compose/ui/text/style/i;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b:Landroidx/compose/ui/text/style/i;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b:Landroidx/compose/ui/text/style/i;

    sget-object v0, Landroidx/compose/ui/text/style/i;->b:Landroidx/compose/ui/text/style/i$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/i$a;->d()Landroidx/compose/ui/text/style/i;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/style/i;->d(Landroidx/compose/ui/text/style/i;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b:Landroidx/compose/ui/text/style/i;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/i$a;->b()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/style/i;->d(Landroidx/compose/ui/text/style/i;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    :cond_1
    return-void
.end method
