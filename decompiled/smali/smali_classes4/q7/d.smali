.class public Lq7/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq7/d$a;
    }
.end annotation


# instance fields
.field private a:Lq7/a;

.field private b:Le8/c;


# direct methods
.method constructor <init>(Lq7/a;Le8/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/d;->a:Lq7/a;

    iput-object p2, p0, Lq7/d;->b:Le8/c;

    return-void
.end method

.method constructor <init>(Lq7/d$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq7/a$a;

    sget-object v1, Lq7/e;->b:Lq7/a;

    invoke-direct {v0, v1}, Lq7/a$a;-><init>(Lq7/a;)V

    invoke-static {p1}, Lq7/d$a;->a(Lq7/d$a;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lq7/d$a;->a(Lq7/d$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lq7/a$a;->B(I)Lq7/a$a;

    :cond_0
    invoke-static {p1}, Lq7/d$a;->b(Lq7/d$a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lq7/d$a;->b(Lq7/d$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a$a;->E(Ljava/lang/String;)Lq7/a$a;

    :cond_1
    invoke-static {p1}, Lq7/d$a;->l(Lq7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lq7/d$a;->m(Lq7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lq7/a$a;->x()Lq7/a$a;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lq7/a$a;->u()Lq7/a$a;

    :cond_3
    :goto_0
    invoke-static {p1}, Lq7/d$a;->n(Lq7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lq7/d$a;->o(Lq7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lq7/d$a;->p(Lq7/d$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lq7/d$a;->q(Lq7/d$a;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lq7/a$a;->w(Ljava/lang/String;I)Lq7/a$a;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lq7/a$a;->t()Lq7/a$a;

    :cond_5
    :goto_1
    invoke-static {p1}, Lq7/d$a;->r(Lq7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lq7/d$a;->s(Lq7/d$a;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lq7/a$a;->v()Lq7/a$a;

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lq7/a$a;->s()Lq7/a$a;

    :cond_7
    :goto_2
    invoke-static {p1}, Lq7/d$a;->c(Lq7/d$a;)Lu7/b;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Lq7/d$a;->c(Lq7/d$a;)Lu7/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a$a;->A(Lu7/b;)Lq7/a$a;

    :cond_8
    invoke-static {p1}, Lq7/d$a;->d(Lq7/d$a;)Lx7/b;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lq7/d$a;->d(Lq7/d$a;)Lx7/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a$a;->H(Lx7/b;)Lq7/a$a;

    :cond_9
    invoke-static {p1}, Lq7/d$a;->e(Lq7/d$a;)Lw7/b;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {p1}, Lq7/d$a;->e(Lq7/d$a;)Lw7/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a$a;->G(Lw7/b;)Lq7/a$a;

    :cond_a
    invoke-static {p1}, Lq7/d$a;->f(Lq7/d$a;)Lz7/b;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {p1}, Lq7/d$a;->f(Lq7/d$a;)Lz7/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a$a;->F(Lz7/b;)Lq7/a$a;

    :cond_b
    invoke-static {p1}, Lq7/d$a;->g(Lq7/d$a;)Ly7/b;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {p1}, Lq7/d$a;->g(Lq7/d$a;)Ly7/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a$a;->D(Ly7/b;)Lq7/a$a;

    :cond_c
    invoke-static {p1}, Lq7/d$a;->h(Lq7/d$a;)Lt7/a;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {p1}, Lq7/d$a;->h(Lq7/d$a;)Lt7/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a$a;->q(Lt7/a;)Lq7/a$a;

    :cond_d
    invoke-static {p1}, Lq7/d$a;->i(Lq7/d$a;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {p1}, Lq7/d$a;->i(Lq7/d$a;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a$a;->C(Ljava/util/Map;)Lq7/a$a;

    :cond_e
    invoke-static {p1}, Lq7/d$a;->j(Lq7/d$a;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {p1}, Lq7/d$a;->j(Lq7/d$a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq7/a$a;->z(Ljava/util/List;)Lq7/a$a;

    :cond_f
    invoke-virtual {v0}, Lq7/a$a;->r()Lq7/a;

    move-result-object v0

    iput-object v0, p0, Lq7/d;->a:Lq7/a;

    invoke-static {p1}, Lq7/d$a;->k(Lq7/d$a;)Le8/c;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lq7/d$a;->k(Lq7/d$a;)Le8/c;

    move-result-object p1

    iput-object p1, p0, Lq7/d;->b:Le8/c;

    goto :goto_3

    :cond_10
    sget-object p1, Lq7/e;->c:Le8/c;

    iput-object p1, p0, Lq7/d;->b:Le8/c;

    :goto_3
    return-void
.end method

.method private h(I[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lq7/d;->a:Lq7/a;

    iget v0, v0, Lq7/a;->a:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lq7/d;->i(ILjava/lang/String;)V

    return-void
.end method

.method private i(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lq7/d;->a:Lq7/a;

    iget-object v3, v0, Lq7/a;->b:Ljava/lang/String;

    iget-boolean v1, v0, Lq7/a;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lq7/a;->k:Lz7/b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ls7/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iget-object v0, p0, Lq7/d;->a:Lq7/a;

    iget-boolean v1, v0, Lq7/a;->d:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lq7/a;->l:Ly7/b;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, Lq7/d;->a:Lq7/a;

    iget-object v5, v2, Lq7/a;->e:Ljava/lang/String;

    iget v2, v2, Lq7/a;->f:I

    invoke-static {v1, v5, v2}, Ld8/a;->b([Ljava/lang/StackTraceElement;Ljava/lang/String;I)[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ls7/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    iget-object v0, p0, Lq7/d;->a:Lq7/a;

    iget-object v0, v0, Lq7/a;->o:Ljava/util/List;

    if-eqz v0, :cond_6

    new-instance v0, Lq7/b;

    move-object v1, v0

    move v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lq7/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lq7/d;->a:Lq7/a;

    iget-object p1, p1, Lq7/a;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La8/a;

    invoke-interface {p2, v0}, La8/a;->a(Lq7/b;)Lq7/b;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lq7/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lq7/b;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_4
    invoke-static {}, Lb8/b;->e()Lb8/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interceptor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " should not remove the tag or message of a log, if you don\'t want to print this log, just return a null when intercept."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb8/b;->c(Ljava/lang/String;)V

    return-void

    :cond_5
    iget p1, v0, Lq7/b;->a:I

    iget-object v3, v0, Lq7/b;->b:Ljava/lang/String;

    iget-object v4, v0, Lq7/b;->d:Ljava/lang/String;

    iget-object v5, v0, Lq7/b;->e:Ljava/lang/String;

    iget-object p2, v0, Lq7/b;->c:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lq7/d;->b:Le8/c;

    iget-object v1, p0, Lq7/d;->a:Lq7/a;

    iget-boolean v2, v1, Lq7/a;->g:Z

    if-eqz v2, :cond_7

    iget-object v1, v1, Lq7/a;->m:Lt7/a;

    filled-new-array {v4, v5, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ls7/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    if-eqz v4, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lb8/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lb8/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-interface {v0, p1, v3, p2}, Le8/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lq7/d;->g(ILjava/lang/String;)V

    return-void
.end method

.method public b([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lq7/d;->h(I[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lq7/d;->g(ILjava/lang/String;)V

    return-void
.end method

.method public d([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lq7/d;->h(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lq7/d;->g(ILjava/lang/String;)V

    return-void
.end method

.method public f([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lq7/d;->h(I[Ljava/lang/Object;)V

    return-void
.end method

.method g(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lq7/d;->a:Lq7/a;

    iget v0, v0, Lq7/a;->a:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-direct {p0, p1, p2}, Lq7/d;->i(ILjava/lang/String;)V

    return-void
.end method

.method public j([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lq7/d;->h(I[Ljava/lang/Object;)V

    return-void
.end method

.method public k([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lq7/d;->h(I[Ljava/lang/Object;)V

    return-void
.end method
