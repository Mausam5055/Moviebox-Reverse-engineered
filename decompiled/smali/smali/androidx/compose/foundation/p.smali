.class final Landroidx/compose/foundation/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:J

.field private d:Landroid/widget/EdgeEffect;

.field private e:Landroid/widget/EdgeEffect;

.field private f:Landroid/widget/EdgeEffect;

.field private g:Landroid/widget/EdgeEffect;

.field private h:Landroid/widget/EdgeEffect;

.field private i:Landroid/widget/EdgeEffect;

.field private j:Landroid/widget/EdgeEffect;

.field private k:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/p;->a:Landroid/content/Context;

    iput p2, p0, Landroidx/compose/foundation/p;->b:I

    sget-object p1, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {p1}, Lo0/t$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/p;->c:J

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/foundation/p;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method private final e()Landroid/widget/EdgeEffect;
    .locals 5

    sget-object v0, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    iget-object v1, p0, Landroidx/compose/foundation/p;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/o;->a(Landroid/content/Context;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/p;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->setColor(I)V

    iget-wide v1, p0, Landroidx/compose/foundation/p;->c:J

    sget-object v3, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {v3}, Lo0/t$a;->a()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lo0/t;->e(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p0, Landroidx/compose/foundation/p;->c:J

    invoke-static {v1, v2}, Lo0/t;->g(J)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/foundation/p;->c:J

    invoke-static {v2, v3}, Lo0/t;->f(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_0
    return-object v0
.end method

.method private final n(Landroid/widget/EdgeEffect;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final x(Landroid/widget/EdgeEffect;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    invoke-virtual {v1, p1}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    move-result p1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final B(J)V
    .locals 3

    iput-wide p1, p0, Landroidx/compose/foundation/p;->c:J

    iget-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result v1

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result v1

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result v1

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result v1

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/p;->h:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result v1

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/p;->i:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result v1

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/p;->j:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result v1

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/p;->k:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result v1

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_7
    return-void
.end method

.method public final f()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final g()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->i:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/p;->i:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final h()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final i()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->j:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/p;->j:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final j()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final k()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->k:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/p;->k:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final l()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final m()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->h:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/p;->e()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/p;->h:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->n(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->i:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->e:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->n(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->j:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->f:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->n(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->k:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->g:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->d:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->n(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/p;->h:Landroid/widget/EdgeEffect;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/p;->x(Landroid/widget/EdgeEffect;)Z

    move-result v0

    return v0
.end method
