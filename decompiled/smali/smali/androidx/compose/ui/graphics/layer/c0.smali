.class public final Landroidx/compose/ui/graphics/layer/c0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private final b:J

.field private final c:Landroidx/compose/ui/graphics/n1;

.field private final d:Lz/a;

.field private final e:Landroid/graphics/RenderNode;

.field private f:J

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Matrix;

.field private i:Z

.field private j:F

.field private k:I

.field private l:Landroidx/compose/ui/graphics/v1;

.field private m:J

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:J

.field private t:J

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(JLandroidx/compose/ui/graphics/n1;Lz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->b:J

    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/c0;->c:Landroidx/compose/ui/graphics/n1;

    iput-object p4, p0, Landroidx/compose/ui/graphics/layer/c0;->d:Lz/a;

    const-string p1, "graphicsLayer"

    invoke-static {p1}, Landroidx/compose/foundation/i;->a(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    sget-object p2, Ly/m;->b:Ly/m$a;

    invoke-virtual {p2}, Ly/m$a;->b()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/c0;->f:J

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/layer/a0;->a(Landroid/graphics/RenderNode;Z)Z

    sget-object p2, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/b$a;->a()I

    move-result p3

    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/graphics/layer/c0;->N(Landroid/graphics/RenderNode;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->j:F

    sget-object p3, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/c1$a;->B()I

    move-result p3

    iput p3, p0, Landroidx/compose/ui/graphics/layer/c0;->k:I

    sget-object p3, Ly/g;->b:Ly/g$a;

    invoke-virtual {p3}, Ly/g$a;->b()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/c0;->m:J

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->n:F

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->o:F

    sget-object p1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/c0;->s:J

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/c0;->t:J

    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->x:F

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/layer/b$a;->a()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->B:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/c0;->C:Z

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    new-instance p3, Landroidx/compose/ui/graphics/n1;

    invoke-direct {p3}, Landroidx/compose/ui/graphics/n1;-><init>()V

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    new-instance p4, Lz/a;

    invoke-direct {p4}, Lz/a;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/layer/c0;-><init>(JLandroidx/compose/ui/graphics/n1;Lz/a;)V

    return-void
.end method

.method private final M()V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->O()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/c0;->i:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->O()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroidx/compose/ui/graphics/layer/c0;->i:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    iget-boolean v2, p0, Landroidx/compose/ui/graphics/layer/c0;->z:Z

    if-eq v0, v2, :cond_2

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/c0;->z:Z

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/layer/a0;->a(Landroid/graphics/RenderNode;Z)Z

    :cond_2
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/c0;->A:Z

    if-eq v1, v0, :cond_3

    iput-boolean v1, p0, Landroidx/compose/ui/graphics/layer/c0;->A:Z

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/b0;->a(Landroid/graphics/RenderNode;Z)Z

    :cond_3
    return-void
.end method

.method private final N(Landroid/graphics/RenderNode;I)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->g:Landroid/graphics/Paint;

    invoke-static {p1, v2, p2}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/b$a;->b()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->g:Landroid/graphics/Paint;

    invoke-static {p1, v0, p2}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->g:Landroid/graphics/Paint;

    invoke-static {p1, v0, p2}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    :goto_0
    return-void
.end method

.method private final P()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->z()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->v()Landroidx/compose/ui/graphics/w4;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final Q()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->l()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/c1$a;->B()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->i()Landroidx/compose/ui/graphics/v1;

    move-result-object v0

    if-eqz v0, :cond_0

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

.method private final R()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    sget-object v1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/layer/c0;->N(Landroid/graphics/RenderNode;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/c0;->z()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/layer/c0;->N(Landroid/graphics/RenderNode;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->o:F

    return v0
.end method

.method public B(IIJ)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p3, p4}, Lo0/t;->g(J)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p3, p4}, Lo0/t;->f(J)I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {v0, p1, p2, v1, v2}, Landroidx/compose/foundation/j;->a(Landroid/graphics/RenderNode;IIII)Z

    invoke-static {p3, p4}, Lo0/u;->d(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->f:J

    return-void
.end method

.method public C()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/c0;->s:J

    return-wide v0
.end method

.method public D()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/c0;->t:J

    return-wide v0
.end method

.method public E()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->h:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->h:Landroid/graphics/Matrix;

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v1, v0}, Landroidx/compose/ui/graphics/layer/t;->a(Landroid/graphics/RenderNode;Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/c0;->C:Z

    return-void
.end method

.method public G(Landroid/graphics/Outline;J)V
    .locals 0

    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/layer/h;->a(Landroid/graphics/RenderNode;Landroid/graphics/Outline;)Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/c0;->i:Z

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->M()V

    return-void
.end method

.method public H(J)V
    .locals 2

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->m:J

    invoke-static {p1, p2}, Ly/h;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p1}, Landroidx/compose/ui/graphics/layer/n;->a(Landroid/graphics/RenderNode;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/o;->a(Landroid/graphics/RenderNode;F)Z

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/p;->a(Landroid/graphics/RenderNode;F)Z

    :goto_0
    return-void
.end method

.method public I(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/foundation/k;->a(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/c0;->c:Landroidx/compose/ui/graphics/n1;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v0

    iget-object v3, p0, Landroidx/compose/ui/graphics/layer/c0;->d:Lz/a;

    invoke-virtual {v3}, Lz/a;->H0()Lz/d;

    move-result-object v3

    invoke-interface {v3, p1}, Lz/d;->b(Lo0/e;)V

    invoke-interface {v3, p2}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {v3, p3}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    iget-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->f:J

    invoke-interface {v3, p1, p2}, Lz/d;->f(J)V

    invoke-interface {v3, v0}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/c0;->d:Lz/a;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p1}, Landroidx/compose/foundation/l;->a(Landroid/graphics/RenderNode;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/c0;->F(Z)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p2}, Landroidx/compose/foundation/l;->a(Landroid/graphics/RenderNode;)V

    throw p1
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->B:I

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->R()V

    return-void
.end method

.method public K()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->r:F

    return v0
.end method

.method public L(Landroidx/compose/ui/graphics/m1;)V
    .locals 1

    invoke-static {p1}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p1, v0}, Landroidx/compose/foundation/m;->a(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/c0;->y:Z

    return v0
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->q:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/z;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public b(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->n:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/i;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public c(Landroidx/compose/ui/graphics/w4;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/layer/q0;->a:Landroidx/compose/ui/graphics/layer/q0;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/graphics/layer/q0;->a(Landroid/graphics/RenderNode;Landroidx/compose/ui/graphics/w4;)V

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->x:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/r;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public e(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->u:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/m;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public f(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->v:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/w;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public g(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->w:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/x;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->j:F

    return v0
.end method

.method public h(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->o:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/f;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public i()Landroidx/compose/ui/graphics/v1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->l:Landroidx/compose/ui/graphics/v1;

    return-object v0
.end method

.method public j(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->p:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/v;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/j;->a(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->k:I

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->v:F

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/s;->a(Landroid/graphics/RenderNode;)Z

    move-result v0

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->w:F

    return v0
.end method

.method public p(J)V
    .locals 1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->s:J

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/u;->a(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public q()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->x:F

    return v0
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/c0;->y:Z

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/c0;->M()V

    return-void
.end method

.method public s(J)V
    .locals 1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/c0;->t:J

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/y;->a(Landroid/graphics/RenderNode;I)Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->j:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/g;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public t()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->n:F

    return v0
.end method

.method public u(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/c0;->r:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/c0;->e:Landroid/graphics/RenderNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/q;->a(Landroid/graphics/RenderNode;F)Z

    return-void
.end method

.method public v()Landroidx/compose/ui/graphics/w4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->q:F

    return v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->p:F

    return v0
.end method

.method public y()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->u:F

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/c0;->B:I

    return v0
.end method
