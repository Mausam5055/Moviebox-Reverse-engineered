.class final Lcom/google/android/exoplayer2/h2$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/p;
.implements Lcom/google/android/exoplayer2/drm/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/h2$c;

.field private b:Lcom/google/android/exoplayer2/source/p$a;

.field private c:Lcom/google/android/exoplayer2/drm/s$a;

.field final synthetic d:Lcom/google/android/exoplayer2/h2;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/h2;Lcom/google/android/exoplayer2/h2$c;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->d:Lcom/google/android/exoplayer2/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/h2;->b(Lcom/google/android/exoplayer2/h2;)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/h2$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/h2;->c(Lcom/google/android/exoplayer2/h2;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/h2$a;->a:Lcom/google/android/exoplayer2/h2$c;

    return-void
.end method

.method private G(ILcom/google/android/exoplayer2/source/o$b;)Z
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2$a;->a:Lcom/google/android/exoplayer2/h2$c;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/h2;->d(Lcom/google/android/exoplayer2/h2$c;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h2$a;->a:Lcom/google/android/exoplayer2/h2$c;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/h2;->e(Lcom/google/android/exoplayer2/h2$c;I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/h2$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    iget v1, v0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/h2$a;->d:Lcom/google/android/exoplayer2/h2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/h2;->b(Lcom/google/android/exoplayer2/h2;)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->F(ILcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/h2$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/h2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    iget v1, v0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/h2$a;->d:Lcom/google/android/exoplayer2/h2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/h2;->c(Lcom/google/android/exoplayer2/h2;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->u(ILcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public B(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->h()V

    :cond_0
    return-void
.end method

.method public D(ILcom/google/android/exoplayer2/source/o$b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->k(I)V

    :cond_0
    return-void
.end method

.method public E(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->m()V

    :cond_0
    return-void
.end method

.method public F(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/s$a;->j()V

    :cond_0
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/source/o$b;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/p$a;->E(Lt9/i;)V

    :cond_0
    return-void
.end method

.method public p(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/p$a;->B(Lt9/h;Lt9/i;)V

    :cond_0
    return-void
.end method

.method public r(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

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

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/p$a;->s(Lt9/h;Lt9/i;)V

    :cond_0
    return-void
.end method

.method public w(ILcom/google/android/exoplayer2/source/o$b;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/p$a;->j(Lt9/i;)V

    :cond_0
    return-void
.end method

.method public x(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/p$a;->y(Lt9/h;Lt9/i;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public y(ILcom/google/android/exoplayer2/source/o$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->c:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/s$a;->l(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public z(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h2$a;->G(ILcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/h2$a;->b:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/p$a;->v(Lt9/h;Lt9/i;)V

    :cond_0
    return-void
.end method
