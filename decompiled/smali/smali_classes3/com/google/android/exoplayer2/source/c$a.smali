.class final Lcom/google/android/exoplayer2/source/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/p;
.implements Lcom/google/android/exoplayer2/drm/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/exoplayer2/source/p$a;

.field private c:Lcom/google/android/exoplayer2/drm/s$a;

.field final synthetic d:Lcom/google/android/exoplayer2/source/c;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/c;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    return-void
.end method

.method private G(ILcom/google/android/exoplayer2/source/o$b;)Z
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/c;->F(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/c;->H(Ljava/lang/Object;I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    iget v1, v0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/a;->u(ILcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    iget v1, v0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/a;->s(ILcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private H(Lt9/i;)Lt9/i;
    .locals 14

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lt9/i;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/c;->G(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->d:Lcom/google/android/exoplayer2/source/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lt9/i;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/c;->G(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-wide v0, p1, Lt9/i;->f:J

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lt9/i;->g:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lt9/i;

    iget v5, p1, Lt9/i;->a:I

    iget v6, p1, Lt9/i;->b:I

    iget-object v7, p1, Lt9/i;->c:Lcom/google/android/exoplayer2/o1;

    iget v8, p1, Lt9/i;->d:I

    iget-object v9, p1, Lt9/i;->e:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return-object v0
.end method


# virtual methods
.method public B(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->h()V

    :cond_0
    return-void
.end method

.method public D(ILcom/google/android/exoplayer2/source/o$b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->k(I)V

    :cond_0
    return-void
.end method

.method public E(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->m()V

    :cond_0
    return-void
.end method

.method public F(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->j()V

    :cond_0
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/source/o$b;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/c$a;->H(Lt9/i;)Lt9/i;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/p$a;->E(Lt9/i;)V

    :cond_0
    return-void
.end method

.method public p(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->H(Lt9/i;)Lt9/i;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/p$a;->B(Lt9/h;Lt9/i;)V

    :cond_0
    return-void
.end method

.method public r(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->i()V

    :cond_0
    return-void
.end method

.method public synthetic s(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/l;->a(Lcom/google/android/exoplayer2/drm/s;ILcom/google/android/exoplayer2/source/o$b;)V

    return-void
.end method

.method public u(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->H(Lt9/i;)Lt9/i;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/p$a;->s(Lt9/h;Lt9/i;)V

    :cond_0
    return-void
.end method

.method public w(ILcom/google/android/exoplayer2/source/o$b;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/c$a;->H(Lt9/i;)Lt9/i;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/p$a;->j(Lt9/i;)V

    :cond_0
    return-void
.end method

.method public x(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->H(Lt9/i;)Lt9/i;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/exoplayer2/source/p$a;->y(Lt9/h;Lt9/i;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public y(ILcom/google/android/exoplayer2/source/o$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->l(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public z(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/c$a;->H(Lt9/i;)Lt9/i;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/p$a;->v(Lt9/h;Lt9/i;)V

    :cond_0
    return-void
.end method
