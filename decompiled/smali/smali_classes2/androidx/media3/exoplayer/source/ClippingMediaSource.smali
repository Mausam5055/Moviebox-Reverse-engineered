.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource;
.super Landroidx/media3/exoplayer/source/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ClippingMediaSource$b;,
        Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;,
        Landroidx/media3/exoplayer/source/ClippingMediaSource$c;
    }
.end annotation


# instance fields
.field private final m:J

.field private final n:J

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private final s:Ljava/util/ArrayList;

.field private final t:Landroidx/media3/common/e0$c;

.field private u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

.field private v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field private w:J

.field private x:J


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)V
    .locals 2

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->a(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Landroidx/media3/exoplayer/source/r;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/l0;-><init>(Landroidx/media3/exoplayer/source/r;)V

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->b(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->m:J

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->c(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:J

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->d(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->o:Z

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->e(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->p:Z

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->f(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->q:Z

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->g(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->r:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    new-instance p1, Landroidx/media3/common/e0$c;

    invoke-direct {p1}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/common/e0$c;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;Landroidx/media3/exoplayer/source/ClippingMediaSource$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)V

    return-void
.end method

.method private T(Landroidx/media3/common/e0;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/common/e0$c;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/common/e0$c;

    invoke-virtual {v0}, Landroidx/media3/common/e0$c;->e()J

    move-result-wide v5

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->p:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    sub-long/2addr v9, v5

    iget-wide v11, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->x:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v9

    goto :goto_4

    :cond_2
    :goto_1
    iget-wide v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->m:J

    iget-wide v11, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:J

    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->q:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/common/e0$c;

    invoke-virtual {v0}, Landroidx/media3/common/e0$c;->c()J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v5, v9

    iput-wide v13, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    iget-wide v13, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v5, v11

    :goto_2
    iput-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->x:J

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_5

    iget-object v5, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/b;

    iget-wide v6, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    iget-wide v13, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->x:J

    invoke-virtual {v5, v6, v7, v13, v14}, Landroidx/media3/exoplayer/source/b;->n(JJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    :goto_4
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    iget-boolean v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->r:Z

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;-><init>(Landroidx/media3/common/e0;JJZ)V

    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    :goto_5
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/b;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/source/b;->l(Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method protected B()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/source/c;->B()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    return-void
.end method

.method protected P(Landroidx/media3/common/e0;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->T(Landroidx/media3/common/e0;)V

    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 8

    new-instance v7, Landroidx/media3/exoplayer/source/b;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/r;->g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->o:Z

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->x:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/b;-><init>(Landroidx/media3/exoplayer/source/q;ZJJ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public j(Landroidx/media3/exoplayer/source/q;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    check-cast p1, Landroidx/media3/exoplayer/source/b;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->j(Landroidx/media3/exoplayer/source/q;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->p:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/m;->e:Landroidx/media3/common/e0;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->T(Landroidx/media3/common/e0;)V

    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/c;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_0
    throw v0
.end method

.method public q(Landroidx/media3/common/t;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l0;->a()Landroidx/media3/common/t;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    iget-object v1, p1, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    invoke-virtual {v0, v1}, Landroidx/media3/common/t$d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->q(Landroidx/media3/common/t;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
