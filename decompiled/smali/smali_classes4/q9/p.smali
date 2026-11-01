.class public final Lq9/p;
.super Ljava/lang/Object;

# interfaces
.implements Lq9/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/p$b;
    }
.end annotation


# instance fields
.field private final a:Lq9/d0;

.field private final b:Z

.field private final c:Z

.field private final d:Lq9/u;

.field private final e:Lq9/u;

.field private final f:Lq9/u;

.field private g:J

.field private final h:[Z

.field private i:Ljava/lang/String;

.field private j:Lg9/e0;

.field private k:Lq9/p$b;

.field private l:Z

.field private m:J

.field private n:Z

.field private final o:Lcom/google/android/exoplayer2/util/d0;


# direct methods
.method public constructor <init>(Lq9/d0;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/p;->a:Lq9/d0;

    iput-boolean p2, p0, Lq9/p;->b:Z

    iput-boolean p3, p0, Lq9/p;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lq9/p;->h:[Z

    new-instance p1, Lq9/u;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lq9/u;-><init>(II)V

    iput-object p1, p0, Lq9/p;->d:Lq9/u;

    new-instance p1, Lq9/u;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lq9/u;-><init>(II)V

    iput-object p1, p0, Lq9/p;->e:Lq9/u;

    new-instance p1, Lq9/u;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lq9/u;-><init>(II)V

    iput-object p1, p0, Lq9/p;->f:Lq9/u;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lq9/p;->m:J

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    iput-object p1, p0, Lq9/p;->o:Lcom/google/android/exoplayer2/util/d0;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lq9/p;->j:Lg9/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lq9/p;->k:Lq9/p$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(JIIJ)V
    .locals 7

    iget-boolean v0, p0, Lq9/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq9/p;->k:Lq9/p$b;

    invoke-virtual {v0}, Lq9/p$b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lq9/p;->d:Lq9/u;

    invoke-virtual {v0, p4}, Lq9/u;->b(I)Z

    iget-object v0, p0, Lq9/p;->e:Lq9/u;

    invoke-virtual {v0, p4}, Lq9/u;->b(I)Z

    iget-boolean v0, p0, Lq9/p;->l:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-object v0, p0, Lq9/p;->d:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lq9/p;->e:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lq9/p;->d:Lq9/u;

    iget-object v3, v2, Lq9/u;->d:[B

    iget v2, v2, Lq9/u;->e:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lq9/p;->e:Lq9/u;

    iget-object v3, v2, Lq9/u;->d:[B

    iget v2, v2, Lq9/u;->e:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lq9/p;->d:Lq9/u;

    iget-object v3, v2, Lq9/u;->d:[B

    iget v2, v2, Lq9/u;->e:I

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/x;->l([BII)Lcom/google/android/exoplayer2/util/x$c;

    move-result-object v2

    iget-object v3, p0, Lq9/p;->e:Lq9/u;

    iget-object v4, v3, Lq9/u;->d:[B

    iget v3, v3, Lq9/u;->e:I

    invoke-static {v4, v1, v3}, Lcom/google/android/exoplayer2/util/x;->j([BII)Lcom/google/android/exoplayer2/util/x$b;

    move-result-object v1

    iget v3, v2, Lcom/google/android/exoplayer2/util/x$c;->a:I

    iget v4, v2, Lcom/google/android/exoplayer2/util/x$c;->b:I

    iget v5, v2, Lcom/google/android/exoplayer2/util/x$c;->c:I

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/f;->a(III)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lq9/p;->j:Lg9/e0;

    new-instance v5, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    iget-object v6, p0, Lq9/p;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v5

    const-string v6, "video/avc"

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/x$c;->f:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/o1$b;->j0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/x$c;->g:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/o1$b;->Q(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/x$c;->h:F

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/o1$b;->a0(F)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    invoke-interface {v4, v0}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq9/p;->l:Z

    iget-object v0, p0, Lq9/p;->k:Lq9/p$b;

    invoke-virtual {v0, v2}, Lq9/p$b;->f(Lcom/google/android/exoplayer2/util/x$c;)V

    iget-object v0, p0, Lq9/p;->k:Lq9/p$b;

    invoke-virtual {v0, v1}, Lq9/p$b;->e(Lcom/google/android/exoplayer2/util/x$b;)V

    iget-object v0, p0, Lq9/p;->d:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    iget-object v0, p0, Lq9/p;->e:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lq9/p;->d:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq9/p;->d:Lq9/u;

    iget-object v2, v0, Lq9/u;->d:[B

    iget v0, v0, Lq9/u;->e:I

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/x;->l([BII)Lcom/google/android/exoplayer2/util/x$c;

    move-result-object v0

    iget-object v1, p0, Lq9/p;->k:Lq9/p$b;

    invoke-virtual {v1, v0}, Lq9/p$b;->f(Lcom/google/android/exoplayer2/util/x$c;)V

    iget-object v0, p0, Lq9/p;->d:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lq9/p;->e:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lq9/p;->e:Lq9/u;

    iget-object v2, v0, Lq9/u;->d:[B

    iget v0, v0, Lq9/u;->e:I

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/x;->j([BII)Lcom/google/android/exoplayer2/util/x$b;

    move-result-object v0

    iget-object v1, p0, Lq9/p;->k:Lq9/p$b;

    invoke-virtual {v1, v0}, Lq9/p$b;->e(Lcom/google/android/exoplayer2/util/x$b;)V

    iget-object v0, p0, Lq9/p;->e:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lq9/p;->f:Lq9/u;

    invoke-virtual {v0, p4}, Lq9/u;->b(I)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lq9/p;->f:Lq9/u;

    iget-object v0, p4, Lq9/u;->d:[B

    iget p4, p4, Lq9/u;->e:I

    invoke-static {v0, p4}, Lcom/google/android/exoplayer2/util/x;->q([BI)I

    move-result p4

    iget-object v0, p0, Lq9/p;->o:Lcom/google/android/exoplayer2/util/d0;

    iget-object v1, p0, Lq9/p;->f:Lq9/u;

    iget-object v1, v1, Lq9/u;->d:[B

    invoke-virtual {v0, v1, p4}, Lcom/google/android/exoplayer2/util/d0;->N([BI)V

    iget-object p4, p0, Lq9/p;->o:Lcom/google/android/exoplayer2/util/d0;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object p4, p0, Lq9/p;->a:Lq9/d0;

    iget-object v0, p0, Lq9/p;->o:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p4, p5, p6, v0}, Lq9/d0;->a(JLcom/google/android/exoplayer2/util/d0;)V

    :cond_4
    iget-object v1, p0, Lq9/p;->k:Lq9/p$b;

    iget-boolean v5, p0, Lq9/p;->l:Z

    iget-boolean v6, p0, Lq9/p;->n:Z

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lq9/p$b;->b(JIZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq9/p;->n:Z

    :cond_5
    return-void
.end method

.method private f([BII)V
    .locals 1

    iget-boolean v0, p0, Lq9/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq9/p;->k:Lq9/p$b;

    invoke-virtual {v0}, Lq9/p$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lq9/p;->d:Lq9/u;

    invoke-virtual {v0, p1, p2, p3}, Lq9/u;->a([BII)V

    iget-object v0, p0, Lq9/p;->e:Lq9/u;

    invoke-virtual {v0, p1, p2, p3}, Lq9/u;->a([BII)V

    :cond_1
    iget-object v0, p0, Lq9/p;->f:Lq9/u;

    invoke-virtual {v0, p1, p2, p3}, Lq9/u;->a([BII)V

    iget-object v0, p0, Lq9/p;->k:Lq9/p$b;

    invoke-virtual {v0, p1, p2, p3}, Lq9/p$b;->a([BII)V

    return-void
.end method

.method private g(JIJ)V
    .locals 7

    iget-boolean v0, p0, Lq9/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq9/p;->k:Lq9/p$b;

    invoke-virtual {v0}, Lq9/p$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lq9/p;->d:Lq9/u;

    invoke-virtual {v0, p3}, Lq9/u;->e(I)V

    iget-object v0, p0, Lq9/p;->e:Lq9/u;

    invoke-virtual {v0, p3}, Lq9/u;->e(I)V

    :cond_1
    iget-object v0, p0, Lq9/p;->f:Lq9/u;

    invoke-virtual {v0, p3}, Lq9/u;->e(I)V

    iget-object v1, p0, Lq9/p;->k:Lq9/p$b;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lq9/p$b;->h(JIJ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 14

    invoke-direct {p0}, Lq9/p;->d()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v2

    iget-wide v3, p0, Lq9/p;->g:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lq9/p;->g:J

    iget-object v3, p0, Lq9/p;->j:Lg9/e0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    :goto_0
    iget-object p1, p0, Lq9/p;->h:[Z

    invoke-static {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/util/x;->c([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v2, v0, v1}, Lq9/p;->f([BII)V

    return-void

    :cond_0
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/x;->f([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    invoke-direct {p0, v2, v0, p1}, Lq9/p;->f([BII)V

    :cond_1
    sub-int v10, v1, p1

    iget-wide v4, p0, Lq9/p;->g:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    :goto_1
    move v11, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-wide v12, p0, Lq9/p;->m:J

    move-object v7, p0

    move-wide v8, v4

    invoke-direct/range {v7 .. v13}, Lq9/p;->e(JIIJ)V

    iget-wide v7, p0, Lq9/p;->m:J

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lq9/p;->g(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public b(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lq9/p;->m:J

    :cond_0
    iget-boolean p1, p0, Lq9/p;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lq9/p;->n:Z

    return-void
.end method

.method public c(Lg9/n;Lq9/i0$d;)V
    .locals 4

    invoke-virtual {p2}, Lq9/i0$d;->a()V

    invoke-virtual {p2}, Lq9/i0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq9/p;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lq9/i0$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v0

    iput-object v0, p0, Lq9/p;->j:Lg9/e0;

    new-instance v1, Lq9/p$b;

    iget-boolean v2, p0, Lq9/p;->b:Z

    iget-boolean v3, p0, Lq9/p;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lq9/p$b;-><init>(Lg9/e0;ZZ)V

    iput-object v1, p0, Lq9/p;->k:Lq9/p$b;

    iget-object v0, p0, Lq9/p;->a:Lq9/d0;

    invoke-virtual {v0, p1, p2}, Lq9/d0;->b(Lg9/n;Lq9/i0$d;)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lq9/p;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq9/p;->n:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lq9/p;->m:J

    iget-object v0, p0, Lq9/p;->h:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/x;->a([Z)V

    iget-object v0, p0, Lq9/p;->d:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    iget-object v0, p0, Lq9/p;->e:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    iget-object v0, p0, Lq9/p;->f:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    iget-object v0, p0, Lq9/p;->k:Lq9/p$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq9/p$b;->g()V

    :cond_0
    return-void
.end method
