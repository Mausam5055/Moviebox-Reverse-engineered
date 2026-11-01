.class public final Lou/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lou/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:I

.field private e:J

.field private f:I

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lou/a$b;->a:I

    iput v0, p0, Lou/a$b;->b:I

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lou/a$b;->c:J

    const/4 v2, 0x2

    iput v2, p0, Lou/a$b;->d:I

    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lou/a$b;->e:J

    const/4 v2, 0x1

    iput v2, p0, Lou/a$b;->f:I

    const-wide/32 v3, 0x927c0

    iput-wide v3, p0, Lou/a$b;->g:J

    const-wide/32 v3, 0x80000

    iput-wide v3, p0, Lou/a$b;->h:J

    const-string v3, "tinker_custom.log"

    iput-object v3, p0, Lou/a$b;->i:Ljava/lang/String;

    const-wide/32 v3, 0x3200000

    iput-wide v3, p0, Lou/a$b;->j:J

    const-string v3, "tinker_patch"

    iput-object v3, p0, Lou/a$b;->k:Ljava/lang/String;

    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lou/a$b;->l:J

    iput-wide v0, p0, Lou/a$b;->m:J

    iput-boolean v2, p0, Lou/a$b;->n:Z

    iput-boolean v2, p0, Lou/a$b;->o:Z

    const-string v0, "wefeed-mobile-bff"

    iput-object v0, p0, Lou/a$b;->p:Ljava/lang/String;

    const-string v0, "both"

    iput-object v0, p0, Lou/a$b;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lou/a$b;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lou/a$b;)I
    .locals 0

    iget p0, p0, Lou/a$b;->a:I

    return p0
.end method

.method static synthetic b(Lou/a$b;)I
    .locals 0

    iget p0, p0, Lou/a$b;->b:I

    return p0
.end method

.method static synthetic c(Lou/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a$b;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lou/a$b;)J
    .locals 2

    iget-wide v0, p0, Lou/a$b;->l:J

    return-wide v0
.end method

.method static synthetic e(Lou/a$b;)J
    .locals 2

    iget-wide v0, p0, Lou/a$b;->m:J

    return-wide v0
.end method

.method static synthetic f(Lou/a$b;)Z
    .locals 0

    iget-boolean p0, p0, Lou/a$b;->n:Z

    return p0
.end method

.method static synthetic g(Lou/a$b;)Z
    .locals 0

    iget-boolean p0, p0, Lou/a$b;->o:Z

    return p0
.end method

.method static synthetic h(Lou/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a$b;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lou/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a$b;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lou/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a$b;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lou/a$b;)J
    .locals 2

    iget-wide v0, p0, Lou/a$b;->c:J

    return-wide v0
.end method

.method static synthetic l(Lou/a$b;)I
    .locals 0

    iget p0, p0, Lou/a$b;->d:I

    return p0
.end method

.method static synthetic m(Lou/a$b;)J
    .locals 2

    iget-wide v0, p0, Lou/a$b;->e:J

    return-wide v0
.end method

.method static synthetic n(Lou/a$b;)I
    .locals 0

    iget p0, p0, Lou/a$b;->f:I

    return p0
.end method

.method static synthetic o(Lou/a$b;)J
    .locals 2

    iget-wide v0, p0, Lou/a$b;->g:J

    return-wide v0
.end method

.method static synthetic p(Lou/a$b;)J
    .locals 2

    iget-wide v0, p0, Lou/a$b;->h:J

    return-wide v0
.end method

.method static synthetic q(Lou/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/a$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lou/a$b;)J
    .locals 2

    iget-wide v0, p0, Lou/a$b;->j:J

    return-wide v0
.end method

.method public static z(Lou/a;)Lou/a$b;
    .locals 3

    new-instance v0, Lou/a$b;

    invoke-direct {v0}, Lou/a$b;-><init>()V

    invoke-static {p0}, Lou/a;->a(Lou/a;)I

    move-result v1

    iput v1, v0, Lou/a$b;->a:I

    invoke-static {p0}, Lou/a;->b(Lou/a;)I

    move-result v1

    iput v1, v0, Lou/a$b;->b:I

    invoke-static {p0}, Lou/a;->c(Lou/a;)J

    move-result-wide v1

    iput-wide v1, v0, Lou/a$b;->c:J

    invoke-static {p0}, Lou/a;->d(Lou/a;)I

    move-result v1

    iput v1, v0, Lou/a$b;->d:I

    invoke-static {p0}, Lou/a;->e(Lou/a;)J

    move-result-wide v1

    iput-wide v1, v0, Lou/a$b;->e:J

    invoke-static {p0}, Lou/a;->f(Lou/a;)I

    move-result v1

    iput v1, v0, Lou/a$b;->f:I

    invoke-static {p0}, Lou/a;->g(Lou/a;)J

    move-result-wide v1

    iput-wide v1, v0, Lou/a$b;->g:J

    invoke-static {p0}, Lou/a;->h(Lou/a;)J

    move-result-wide v1

    iput-wide v1, v0, Lou/a$b;->h:J

    invoke-static {p0}, Lou/a;->i(Lou/a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou/a$b;->i:Ljava/lang/String;

    invoke-static {p0}, Lou/a;->j(Lou/a;)J

    move-result-wide v1

    iput-wide v1, v0, Lou/a$b;->j:J

    invoke-static {p0}, Lou/a;->k(Lou/a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou/a$b;->k:Ljava/lang/String;

    invoke-static {p0}, Lou/a;->l(Lou/a;)J

    move-result-wide v1

    iput-wide v1, v0, Lou/a$b;->l:J

    invoke-static {p0}, Lou/a;->m(Lou/a;)J

    move-result-wide v1

    iput-wide v1, v0, Lou/a$b;->m:J

    invoke-static {p0}, Lou/a;->n(Lou/a;)Z

    move-result v1

    iput-boolean v1, v0, Lou/a$b;->n:Z

    invoke-static {p0}, Lou/a;->o(Lou/a;)Z

    move-result v1

    iput-boolean v1, v0, Lou/a$b;->o:Z

    invoke-static {p0}, Lou/a;->p(Lou/a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou/a$b;->p:Ljava/lang/String;

    invoke-static {p0}, Lou/a;->q(Lou/a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou/a$b;->q:Ljava/lang/String;

    invoke-static {p0}, Lou/a;->r(Lou/a;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lou/a$b;->r:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public A(I)Lou/a$b;
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lou/a$b;->a:I

    return-object p0
.end method

.method public B(I)Lou/a$b;
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lou/a$b;->b:I

    return-object p0
.end method

.method public C(Z)Lou/a$b;
    .locals 0

    iput-boolean p1, p0, Lou/a$b;->o:Z

    return-object p0
.end method

.method public D(J)Lou/a$b;
    .locals 2

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lou/a$b;->h:J

    return-object p0
.end method

.method public E(Ljava/lang/String;)Lou/a$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lou/a$b;->i:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public F(J)Lou/a$b;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lou/a$b;->j:J

    return-object p0
.end method

.method public G(J)Lou/a$b;
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lou/a$b;->c:J

    return-object p0
.end method

.method public H(Ljava/lang/String;)Lou/a$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lou/a$b;->q:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public I(Ljava/lang/String;)Lou/a$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lou/a$b;->k:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public J(J)Lou/a$b;
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lou/a$b;->l:J

    return-object p0
.end method

.method public K(J)Lou/a$b;
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lou/a$b;->m:J

    return-object p0
.end method

.method public s()Lou/a;
    .locals 2

    new-instance v0, Lou/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lou/a;-><init>(Lou/a$b;Lou/a$a;)V

    return-object v0
.end method

.method public t(Ljava/lang/String;)Lou/a$b;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lou/a$b;->r:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public u(I)Lou/a$b;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lou/a$b;->f:I

    return-object p0
.end method

.method public v(J)Lou/a$b;
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lou/a$b;->g:J

    return-object p0
.end method

.method public w(I)Lou/a$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lou/a$b;->d:I

    return-object p0
.end method

.method public x(J)Lou/a$b;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lou/a$b;->e:J

    return-object p0
.end method

.method public y(Z)Lou/a$b;
    .locals 0

    iput-boolean p1, p0, Lou/a$b;->n:Z

    return-object p0
.end method
