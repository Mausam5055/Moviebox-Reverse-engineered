.class public final Landroidx/compose/ui/graphics/x4;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/c4;


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:J

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:J

.field private o:Landroidx/compose/ui/graphics/a5;

.field private p:Z

.field private q:I

.field private r:J

.field private s:Lo0/e;

.field private t:Landroidx/compose/ui/unit/LayoutDirection;

.field private u:Landroidx/compose/ui/graphics/k4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->b:F

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->c:F

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->d:F

    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/graphics/x4;->h:J

    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/graphics/x4;->i:J

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Landroidx/compose/ui/graphics/x4;->m:F

    sget-object v1, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/e5$a;->a()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/graphics/x4;->n:J

    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/graphics/x4;->o:Landroidx/compose/ui/graphics/a5;

    sget-object v1, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/w3$a;->a()I

    move-result v1

    iput v1, p0, Landroidx/compose/ui/graphics/x4;->q:I

    sget-object v1, Ly/m;->b:Ly/m$a;

    invoke-virtual {v1}, Ly/m$a;->a()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/ui/graphics/x4;->r:J

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lo0/g;->b(FFILjava/lang/Object;)Lo0/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/graphics/x4;->t:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->c:F

    return v0
.end method

.method public A0(Landroidx/compose/ui/graphics/a5;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->o:Landroidx/compose/ui/graphics/a5;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput-object p1, p0, Landroidx/compose/ui/graphics/x4;->o:Landroidx/compose/ui/graphics/a5;

    :cond_0
    return-void
.end method

.method public B()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->q:I

    return v0
.end method

.method public final C()Lo0/e;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    return-object v0
.end method

.method public C0()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    invoke-interface {v0}, Lo0/n;->C0()F

    move-result v0

    return v0
.end method

.method public final D()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->t:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public synthetic E0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->e(Lo0/e;F)F

    move-result p1

    return p1
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    return v0
.end method

.method public final G()Landroidx/compose/ui/graphics/k4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->u:Landroidx/compose/ui/graphics/k4;

    return-object v0
.end method

.method public synthetic H(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/m;->b(Lo0/n;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public I()Landroidx/compose/ui/graphics/w4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic J(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/m;->a(Lo0/n;J)F

    move-result p1

    return p1
.end method

.method public L()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->g:F

    return v0
.end method

.method public M()Landroidx/compose/ui/graphics/a5;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->o:Landroidx/compose/ui/graphics/a5;

    return-object v0
.end method

.method public O()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->i:J

    return-wide v0
.end method

.method public final P()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->b(F)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->h(F)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->j(F)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->a(F)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->u(F)V

    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/x4;->p(J)V

    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/x4;->s(J)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->e(F)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->f(F)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->g(F)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->d(F)V

    sget-object v0, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/e5$a;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/x4;->d0(J)V

    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->A0(Landroidx/compose/ui/graphics/a5;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/x4;->r(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/ui/graphics/x4;->c(Landroidx/compose/ui/graphics/w4;)V

    sget-object v2, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/w3$a;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/ui/graphics/x4;->l(I)V

    sget-object v2, Ly/m;->b:Ly/m$a;

    invoke-virtual {v2}, Ly/m$a;->a()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/graphics/x4;->V(J)V

    iput-object v1, p0, Landroidx/compose/ui/graphics/x4;->u:Landroidx/compose/ui/graphics/k4;

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    return-void
.end method

.method public synthetic Q(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/d;->g(Lo0/e;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic Q0(J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->f(Lo0/e;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final R(Lo0/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    return-void
.end method

.method public final U(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/x4;->t:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public V(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/graphics/x4;->r:J

    return-void
.end method

.method public final Y()V
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/x4;->M()Landroidx/compose/ui/graphics/a5;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/x4;->i()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/compose/ui/graphics/x4;->t:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v4, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/compose/ui/graphics/a5;->a(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/x4;->u:Landroidx/compose/ui/graphics/k4;

    return-void
.end method

.method public a(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->f:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->f:F

    :goto_0
    return-void
.end method

.method public b(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->b:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->b:F

    :goto_0
    return-void
.end method

.method public b0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->n:J

    return-wide v0
.end method

.method public c(Landroidx/compose/ui/graphics/w4;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/compose/ui/graphics/x4;->a:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->a:I

    :cond_0
    return-void
.end method

.method public synthetic c0(F)I
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->a(Lo0/e;F)I

    move-result p1

    return p1
.end method

.method public d(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->m:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->m:F

    :goto_0
    return-void
.end method

.method public d0(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->n:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/e5;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput-wide p1, p0, Landroidx/compose/ui/graphics/x4;->n:J

    :cond_0
    return-void
.end method

.method public e(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->j:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->j:F

    :goto_0
    return-void
.end method

.method public f(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->k:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->k:F

    :goto_0
    return-void
.end method

.method public g(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->l:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->l:F

    :goto_0
    return-void
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/x4;->s:Lo0/e;

    invoke-interface {v0}, Lo0/e;->getDensity()F

    move-result v0

    return v0
.end method

.method public h(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->c:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->c:F

    :goto_0
    return-void
.end method

.method public synthetic h0(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->d(Lo0/e;J)F

    move-result p1

    return p1
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->r:J

    return-wide v0
.end method

.method public j(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->e:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->e:F

    :goto_0
    return-void
.end method

.method public l(I)V
    .locals 2

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->q:I

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->q:I

    :cond_0
    return-void
.end method

.method public m()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->k:F

    return v0
.end method

.method public n()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->d:F

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->l:F

    return v0
.end method

.method public p(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->h:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput-wide p1, p0, Landroidx/compose/ui/graphics/x4;->h:J

    :cond_0
    return-void
.end method

.method public q()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->m:F

    return v0
.end method

.method public r(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/x4;->p:Z

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/x4;->p:Z

    :cond_0
    return-void
.end method

.method public s(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->i:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput-wide p1, p0, Landroidx/compose/ui/graphics/x4;->i:J

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->d:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->d:F

    :goto_0
    return-void
.end method

.method public t()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->b:F

    return v0
.end method

.method public u(F)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->g:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/compose/ui/graphics/x4;->a:I

    iput p1, p0, Landroidx/compose/ui/graphics/x4;->g:F

    :goto_0
    return-void
.end method

.method public v()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/x4;->h:J

    return-wide v0
.end method

.method public w()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->f:F

    return v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->e:F

    return v0
.end method

.method public synthetic x0(I)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->c(Lo0/e;I)F

    move-result p1

    return p1
.end method

.method public y()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/x4;->j:F

    return v0
.end method

.method public synthetic y0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->b(Lo0/e;F)F

    move-result p1

    return p1
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/x4;->p:Z

    return v0
.end method
