.class public final Lab/n$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lab/e;

.field private b:Lab/e;

.field private c:Lab/e;

.field private d:Lab/e;

.field private e:Lab/d;

.field private f:Lab/d;

.field private g:Lab/d;

.field private h:Lab/d;

.field private i:Lab/g;

.field private j:Lab/g;

.field private k:Lab/g;

.field private l:Lab/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->a:Lab/e;

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->b:Lab/e;

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->c:Lab/e;

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->d:Lab/e;

    new-instance v0, Lab/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->e:Lab/d;

    new-instance v0, Lab/a;

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->f:Lab/d;

    new-instance v0, Lab/a;

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->g:Lab/d;

    new-instance v0, Lab/a;

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->h:Lab/d;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->i:Lab/g;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->j:Lab/g;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->k:Lab/g;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->l:Lab/g;

    return-void
.end method

.method public constructor <init>(Lab/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->a:Lab/e;

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->b:Lab/e;

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->c:Lab/e;

    invoke-static {}, Lab/j;->b()Lab/e;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->d:Lab/e;

    new-instance v0, Lab/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->e:Lab/d;

    new-instance v0, Lab/a;

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->f:Lab/d;

    new-instance v0, Lab/a;

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->g:Lab/d;

    new-instance v0, Lab/a;

    invoke-direct {v0, v1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->h:Lab/d;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->i:Lab/g;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->j:Lab/g;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->k:Lab/g;

    invoke-static {}, Lab/j;->c()Lab/g;

    move-result-object v0

    iput-object v0, p0, Lab/n$b;->l:Lab/g;

    iget-object v0, p1, Lab/n;->a:Lab/e;

    iput-object v0, p0, Lab/n$b;->a:Lab/e;

    iget-object v0, p1, Lab/n;->b:Lab/e;

    iput-object v0, p0, Lab/n$b;->b:Lab/e;

    iget-object v0, p1, Lab/n;->c:Lab/e;

    iput-object v0, p0, Lab/n$b;->c:Lab/e;

    iget-object v0, p1, Lab/n;->d:Lab/e;

    iput-object v0, p0, Lab/n$b;->d:Lab/e;

    iget-object v0, p1, Lab/n;->e:Lab/d;

    iput-object v0, p0, Lab/n$b;->e:Lab/d;

    iget-object v0, p1, Lab/n;->f:Lab/d;

    iput-object v0, p0, Lab/n$b;->f:Lab/d;

    iget-object v0, p1, Lab/n;->g:Lab/d;

    iput-object v0, p0, Lab/n$b;->g:Lab/d;

    iget-object v0, p1, Lab/n;->h:Lab/d;

    iput-object v0, p0, Lab/n$b;->h:Lab/d;

    iget-object v0, p1, Lab/n;->i:Lab/g;

    iput-object v0, p0, Lab/n$b;->i:Lab/g;

    iget-object v0, p1, Lab/n;->j:Lab/g;

    iput-object v0, p0, Lab/n$b;->j:Lab/g;

    iget-object v0, p1, Lab/n;->k:Lab/g;

    iput-object v0, p0, Lab/n$b;->k:Lab/g;

    iget-object p1, p1, Lab/n;->l:Lab/g;

    iput-object p1, p0, Lab/n$b;->l:Lab/g;

    return-void
.end method

.method static synthetic a(Lab/n$b;)Lab/e;
    .locals 0

    iget-object p0, p0, Lab/n$b;->a:Lab/e;

    return-object p0
.end method

.method static synthetic b(Lab/n$b;)Lab/g;
    .locals 0

    iget-object p0, p0, Lab/n$b;->j:Lab/g;

    return-object p0
.end method

.method static synthetic c(Lab/n$b;)Lab/g;
    .locals 0

    iget-object p0, p0, Lab/n$b;->k:Lab/g;

    return-object p0
.end method

.method static synthetic d(Lab/n$b;)Lab/g;
    .locals 0

    iget-object p0, p0, Lab/n$b;->l:Lab/g;

    return-object p0
.end method

.method static synthetic e(Lab/n$b;)Lab/e;
    .locals 0

    iget-object p0, p0, Lab/n$b;->b:Lab/e;

    return-object p0
.end method

.method static synthetic f(Lab/n$b;)Lab/e;
    .locals 0

    iget-object p0, p0, Lab/n$b;->c:Lab/e;

    return-object p0
.end method

.method static synthetic g(Lab/n$b;)Lab/e;
    .locals 0

    iget-object p0, p0, Lab/n$b;->d:Lab/e;

    return-object p0
.end method

.method static synthetic h(Lab/n$b;)Lab/d;
    .locals 0

    iget-object p0, p0, Lab/n$b;->e:Lab/d;

    return-object p0
.end method

.method static synthetic i(Lab/n$b;)Lab/d;
    .locals 0

    iget-object p0, p0, Lab/n$b;->f:Lab/d;

    return-object p0
.end method

.method static synthetic j(Lab/n$b;)Lab/d;
    .locals 0

    iget-object p0, p0, Lab/n$b;->g:Lab/d;

    return-object p0
.end method

.method static synthetic k(Lab/n$b;)Lab/d;
    .locals 0

    iget-object p0, p0, Lab/n$b;->h:Lab/d;

    return-object p0
.end method

.method static synthetic l(Lab/n$b;)Lab/g;
    .locals 0

    iget-object p0, p0, Lab/n$b;->i:Lab/g;

    return-object p0
.end method

.method private static n(Lab/e;)F
    .locals 1

    instance-of v0, p0, Lab/m;

    if-eqz v0, :cond_0

    check-cast p0, Lab/m;

    iget p0, p0, Lab/m;->a:F

    return p0

    :cond_0
    instance-of v0, p0, Lab/f;

    if-eqz v0, :cond_1

    check-cast p0, Lab/f;

    iget p0, p0, Lab/f;->a:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public A(Lab/e;)Lab/n$b;
    .locals 1

    iput-object p1, p0, Lab/n$b;->c:Lab/e;

    invoke-static {p1}, Lab/n$b;->n(Lab/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lab/n$b;->B(F)Lab/n$b;

    :cond_0
    return-object p0
.end method

.method public B(F)Lab/n$b;
    .locals 1

    new-instance v0, Lab/a;

    invoke-direct {v0, p1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->g:Lab/d;

    return-object p0
.end method

.method public C(Lab/d;)Lab/n$b;
    .locals 0

    iput-object p1, p0, Lab/n$b;->g:Lab/d;

    return-object p0
.end method

.method public D(Lab/g;)Lab/n$b;
    .locals 0

    iput-object p1, p0, Lab/n$b;->i:Lab/g;

    return-object p0
.end method

.method public E(IF)Lab/n$b;
    .locals 0

    invoke-static {p1}, Lab/j;->a(I)Lab/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/n$b;->G(Lab/e;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lab/n$b;->H(F)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public F(ILab/d;)Lab/n$b;
    .locals 0

    invoke-static {p1}, Lab/j;->a(I)Lab/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/n$b;->G(Lab/e;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lab/n$b;->I(Lab/d;)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public G(Lab/e;)Lab/n$b;
    .locals 1

    iput-object p1, p0, Lab/n$b;->a:Lab/e;

    invoke-static {p1}, Lab/n$b;->n(Lab/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lab/n$b;->H(F)Lab/n$b;

    :cond_0
    return-object p0
.end method

.method public H(F)Lab/n$b;
    .locals 1

    new-instance v0, Lab/a;

    invoke-direct {v0, p1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->e:Lab/d;

    return-object p0
.end method

.method public I(Lab/d;)Lab/n$b;
    .locals 0

    iput-object p1, p0, Lab/n$b;->e:Lab/d;

    return-object p0
.end method

.method public J(IF)Lab/n$b;
    .locals 0

    invoke-static {p1}, Lab/j;->a(I)Lab/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/n$b;->L(Lab/e;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lab/n$b;->M(F)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public K(ILab/d;)Lab/n$b;
    .locals 0

    invoke-static {p1}, Lab/j;->a(I)Lab/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/n$b;->L(Lab/e;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lab/n$b;->N(Lab/d;)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public L(Lab/e;)Lab/n$b;
    .locals 1

    iput-object p1, p0, Lab/n$b;->b:Lab/e;

    invoke-static {p1}, Lab/n$b;->n(Lab/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lab/n$b;->M(F)Lab/n$b;

    :cond_0
    return-object p0
.end method

.method public M(F)Lab/n$b;
    .locals 1

    new-instance v0, Lab/a;

    invoke-direct {v0, p1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->f:Lab/d;

    return-object p0
.end method

.method public N(Lab/d;)Lab/n$b;
    .locals 0

    iput-object p1, p0, Lab/n$b;->f:Lab/d;

    return-object p0
.end method

.method public m()Lab/n;
    .locals 2

    new-instance v0, Lab/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lab/n;-><init>(Lab/n$b;Lab/n$a;)V

    return-object v0
.end method

.method public o(F)Lab/n$b;
    .locals 1

    invoke-virtual {p0, p1}, Lab/n$b;->H(F)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->M(F)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->B(F)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->w(F)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lab/d;)Lab/n$b;
    .locals 1

    invoke-virtual {p0, p1}, Lab/n$b;->I(Lab/d;)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->N(Lab/d;)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->C(Lab/d;)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->x(Lab/d;)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public q(IF)Lab/n$b;
    .locals 0

    invoke-static {p1}, Lab/j;->a(I)Lab/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/n$b;->r(Lab/e;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lab/n$b;->o(F)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public r(Lab/e;)Lab/n$b;
    .locals 1

    invoke-virtual {p0, p1}, Lab/n$b;->G(Lab/e;)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->L(Lab/e;)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->A(Lab/e;)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lab/n$b;->v(Lab/e;)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public s(Lab/g;)Lab/n$b;
    .locals 0

    iput-object p1, p0, Lab/n$b;->k:Lab/g;

    return-object p0
.end method

.method public t(IF)Lab/n$b;
    .locals 0

    invoke-static {p1}, Lab/j;->a(I)Lab/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/n$b;->v(Lab/e;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lab/n$b;->w(F)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public u(ILab/d;)Lab/n$b;
    .locals 0

    invoke-static {p1}, Lab/j;->a(I)Lab/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/n$b;->v(Lab/e;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lab/n$b;->x(Lab/d;)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public v(Lab/e;)Lab/n$b;
    .locals 1

    iput-object p1, p0, Lab/n$b;->d:Lab/e;

    invoke-static {p1}, Lab/n$b;->n(Lab/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lab/n$b;->w(F)Lab/n$b;

    :cond_0
    return-object p0
.end method

.method public w(F)Lab/n$b;
    .locals 1

    new-instance v0, Lab/a;

    invoke-direct {v0, p1}, Lab/a;-><init>(F)V

    iput-object v0, p0, Lab/n$b;->h:Lab/d;

    return-object p0
.end method

.method public x(Lab/d;)Lab/n$b;
    .locals 0

    iput-object p1, p0, Lab/n$b;->h:Lab/d;

    return-object p0
.end method

.method public y(IF)Lab/n$b;
    .locals 0

    invoke-static {p1}, Lab/j;->a(I)Lab/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/n$b;->A(Lab/e;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lab/n$b;->B(F)Lab/n$b;

    move-result-object p1

    return-object p1
.end method

.method public z(ILab/d;)Lab/n$b;
    .locals 0

    invoke-static {p1}, Lab/j;->a(I)Lab/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lab/n$b;->A(Lab/e;)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lab/n$b;->C(Lab/d;)Lab/n$b;

    move-result-object p1

    return-object p1
.end method
