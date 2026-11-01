.class final Landroidx/media3/exoplayer/source/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/s;
.implements Landroidx/media3/exoplayer/drm/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroidx/media3/exoplayer/source/s$a;

.field private c:Landroidx/media3/exoplayer/drm/r$a;

.field final synthetic d:Landroidx/media3/exoplayer/source/c;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/c;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/a;->u(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/a;->s(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    return-void
.end method

.method private I(ILandroidx/media3/exoplayer/source/r$b;)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Landroidx/media3/exoplayer/source/c;->D(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/source/c;->F(Ljava/lang/Object;I)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    iget v1, v0, Landroidx/media3/exoplayer/source/s$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/a;->t(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    iget v1, v0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/a;->r(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private J(Lg2/j;Landroidx/media3/exoplayer/source/r$b;)Lg2/j;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    iget-object v4, v0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    iget-wide v5, v1, Lg2/j;->f:J

    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/media3/exoplayer/source/c;->E(Ljava/lang/Object;JLandroidx/media3/exoplayer/source/r$b;)J

    move-result-wide v13

    iget-object v3, v0, Landroidx/media3/exoplayer/source/c$a;->d:Landroidx/media3/exoplayer/source/c;

    iget-object v4, v0, Landroidx/media3/exoplayer/source/c$a;->a:Ljava/lang/Object;

    iget-wide v5, v1, Lg2/j;->g:J

    invoke-virtual {v3, v4, v5, v6, v2}, Landroidx/media3/exoplayer/source/c;->E(Ljava/lang/Object;JLandroidx/media3/exoplayer/source/r$b;)J

    move-result-wide v15

    iget-wide v2, v1, Lg2/j;->f:J

    cmp-long v2, v13, v2

    if-nez v2, :cond_0

    iget-wide v2, v1, Lg2/j;->g:J

    cmp-long v2, v15, v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lg2/j;

    iget v8, v1, Lg2/j;->a:I

    iget v9, v1, Lg2/j;->b:I

    iget-object v10, v1, Lg2/j;->c:Landroidx/media3/common/r;

    iget v11, v1, Lg2/j;->d:I

    iget-object v12, v1, Lg2/j;->e:Ljava/lang/Object;

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    return-object v2
.end method


# virtual methods
.method public A(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/r$a;->j()V

    :cond_0
    return-void
.end method

.method public C(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    invoke-direct {p0, p4, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lg2/j;Landroidx/media3/exoplayer/source/r$b;)Lg2/j;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/media3/exoplayer/source/s$a;->x(Lg2/i;Lg2/j;)V

    :cond_0
    return-void
.end method

.method public D(ILandroidx/media3/exoplayer/source/r$b;Lg2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    invoke-direct {p0, p3, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lg2/j;Landroidx/media3/exoplayer/source/r$b;)Lg2/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/s$a;->G(Lg2/j;)V

    :cond_0
    return-void
.end method

.method public E(ILandroidx/media3/exoplayer/source/r$b;Lg2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    invoke-direct {p0, p3, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lg2/j;Landroidx/media3/exoplayer/source/r$b;)Lg2/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/s$a;->k(Lg2/j;)V

    :cond_0
    return-void
.end method

.method public F(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    invoke-direct {p0, p4, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lg2/j;Landroidx/media3/exoplayer/source/r$b;)Lg2/j;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p5}, Landroidx/media3/exoplayer/source/s$a;->D(Lg2/i;Lg2/j;I)V

    :cond_0
    return-void
.end method

.method public G(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/r$a;->m()V

    :cond_0
    return-void
.end method

.method public l(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    invoke-direct {p0, p4, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lg2/j;Landroidx/media3/exoplayer/source/r$b;)Lg2/j;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/media3/exoplayer/source/s$a;->u(Lg2/i;Lg2/j;)V

    :cond_0
    return-void
.end method

.method public q(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/r$a;->h()V

    :cond_0
    return-void
.end method

.method public r(ILandroidx/media3/exoplayer/source/r$b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/drm/r$a;->k(I)V

    :cond_0
    return-void
.end method

.method public w(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/r$a;->i()V

    :cond_0
    return-void
.end method

.method public x(ILandroidx/media3/exoplayer/source/r$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->c:Landroidx/media3/exoplayer/drm/r$a;

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/drm/r$a;->l(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public y(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/c$a;->I(ILandroidx/media3/exoplayer/source/r$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c$a;->b:Landroidx/media3/exoplayer/source/s$a;

    invoke-direct {p0, p4, p2}, Landroidx/media3/exoplayer/source/c$a;->J(Lg2/j;Landroidx/media3/exoplayer/source/r$b;)Lg2/j;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p5, p6}, Landroidx/media3/exoplayer/source/s$a;->A(Lg2/i;Lg2/j;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method
