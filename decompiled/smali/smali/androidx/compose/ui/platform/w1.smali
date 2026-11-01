.class public final Landroidx/compose/ui/platform/w1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/platform/t0;


# instance fields
.field private final a:Landroidx/compose/ui/platform/AndroidComposeView;

.field private final b:Landroid/graphics/RenderNode;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/w1;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    const-string p1, "Compose"

    invoke-static {p1}, Landroidx/compose/foundation/i;->a(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    sget-object p1, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/w3$a;->a()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/platform/w1;->c:I

    return-void
.end method


# virtual methods
.method public A(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/o;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public B(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/p;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public C(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/h;->a(Landroid/graphics/RenderNode;Landroid/graphics/Outline;)Z

    return-void
.end method

.method public D(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/u;->a(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public E(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/b0;->a(Landroid/graphics/RenderNode;Z)Z

    return-void
.end method

.method public F(Landroidx/compose/ui/graphics/n1;Landroidx/compose/ui/graphics/Path;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/foundation/k;->a(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->n()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, p2, v4, v2, v3}, Landroidx/compose/ui/graphics/l1;->c(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    :cond_0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {p1}, Landroidx/compose/foundation/l;->a(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public G(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/y;->a(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public H()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/t1;->a(Landroid/graphics/RenderNode;)F

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/z;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/i;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public c(Landroidx/compose/ui/graphics/w4;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/ui/platform/x1;->a:Landroidx/compose/ui/platform/x1;

    iget-object v1, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/platform/x1;->a(Landroid/graphics/RenderNode;Landroidx/compose/ui/graphics/w4;)V

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/r;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public e(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/m;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public f(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/w;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public g(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/x;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/u1;->a(Landroid/graphics/RenderNode;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/q1;->a(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/o1;->a(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public h(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/f;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/r1;->a(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public j(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/v;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/j;->a(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public l(I)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    sget-object v1, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/w3$a;->c()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-static {v0, v4, v3}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/w3$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    goto :goto_0

    :cond_1
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    :goto_0
    iput p1, p0, Landroidx/compose/ui/platform/w1;->c:I

    return-void
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/m1;->a(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/s;->a(Landroid/graphics/RenderNode;)Z

    move-result v0

    return v0
.end method

.method public o(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {p1, v0}, Landroidx/compose/foundation/m;->a(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/a0;->a(Landroid/graphics/RenderNode;Z)Z

    return-void
.end method

.method public q(IIII)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/j;->a(Landroid/graphics/RenderNode;IIII)Z

    move-result p1

    return p1
.end method

.method public r(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/q;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public s(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/l1;->a(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/g;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/p1;->a(Landroid/graphics/RenderNode;)Z

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/v1;->a(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/s1;->a(Landroid/graphics/RenderNode;)Z

    move-result v0

    return v0
.end method

.method public w(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    move-result p1

    return p1
.end method

.method public x(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/t;->a(Landroid/graphics/RenderNode;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public y(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/k1;->a(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public z()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/platform/n1;->a(Landroid/graphics/RenderNode;)I

    move-result v0

    return v0
.end method
