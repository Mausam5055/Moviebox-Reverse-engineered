.class public final Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.super Lcom/google/android/exoplayer2/source/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;,
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation


# instance fields
.field private final k:Lcom/google/android/exoplayer2/source/o;

.field private final l:J

.field private final m:J

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private final q:Ljava/util/ArrayList;

.field private final r:Lcom/google/android/exoplayer2/k3$d;

.field private s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

.field private t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

.field private u:J

.field private v:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/o;JJZZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/c;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/o;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->n:Z

    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->o:Z

    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->p:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/exoplayer2/k3$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/k3$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/k3$d;

    return-void
.end method

.method private M(Lcom/google/android/exoplayer2/k3;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/k3$d;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3$d;->h()J

    move-result-wide v5

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    sub-long/2addr v9, v5

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v9

    goto :goto_4

    :cond_2
    :goto_1
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3$d;->f()J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v5, v9

    iput-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v5, v11

    :goto_2
    iput-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_5

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/b;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    invoke-virtual {v5, v6, v7, v13, v14}, Lcom/google/android/exoplayer2/source/b;->l(JJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    :goto_4
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;-><init>(Lcom/google/android/exoplayer2/k3;JJ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/a;->C(Lcom/google/android/exoplayer2/k3;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/b;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/b;->j(Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/c;->B(Lcom/google/android/exoplayer2/upstream/k0;)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/c;->K(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method protected D()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/source/c;->D()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    return-void
.end method

.method protected bridge synthetic J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->L(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method

.method protected L(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->M(Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method

.method public a()Lcom/google/android/exoplayer2/v1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/o;->a()Lcom/google/android/exoplayer2/v1;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 8

    new-instance v7, Lcom/google/android/exoplayer2/source/b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/o;->d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->n:Z

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b;-><init>(Lcom/google/android/exoplayer2/source/n;ZJJ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public k(Lcom/google/android/exoplayer2/source/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    check-cast p1, Lcom/google/android/exoplayer2/source/b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/b;->a:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/o;->k(Lcom/google/android/exoplayer2/source/n;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->o:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/j;->c:Lcom/google/android/exoplayer2/k3;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->M(Lcom/google/android/exoplayer2/k3;)V

    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer2/source/c;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_0
    throw v0
.end method
