.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;
.super Lcom/google/android/exoplayer2/k3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:I

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:Lx9/c;

.field private final k:Lcom/google/android/exoplayer2/v1;

.field private final l:Lcom/google/android/exoplayer2/v1$g;


# direct methods
.method public constructor <init>(JJJIJJJLx9/c;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p16

    invoke-direct {p0}, Lcom/google/android/exoplayer2/k3;-><init>()V

    iget-boolean v3, v1, Lx9/c;->d:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-ne v3, v6, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    move-wide v3, p1

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->c:J

    move-wide v3, p3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->d:J

    move-wide v3, p5

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:J

    move v3, p7

    iput v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:I

    move-wide v3, p8

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->g:J

    move-wide/from16 v3, p10

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:J

    move-wide/from16 v3, p12

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:J

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->k:Lcom/google/android/exoplayer2/v1;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->l:Lcom/google/android/exoplayer2/v1$g;

    return-void
.end method

.method private y(J)J
    .locals 10

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->i:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->z(Lx9/c;)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    add-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->g:J

    add-long/2addr p1, v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lx9/c;->f(I)J

    move-result-wide v6

    move v4, v5

    :goto_0
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    invoke-virtual {v8}, Lx9/c;->d()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    cmp-long v8, p1, v6

    if-ltz v8, :cond_2

    sub-long/2addr p1, v6

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    invoke-virtual {v6, v4}, Lx9/c;->f(I)J

    move-result-wide v6

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    invoke-virtual {v8, v4}, Lx9/c;->c(I)Lx9/g;

    move-result-object v4

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lx9/g;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    return-wide v0

    :cond_3
    iget-object v4, v4, Lx9/g;->c:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/a;

    iget-object v4, v4, Lx9/a;->c:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/j;

    invoke-virtual {v4}, Lx9/j;->k()Lw9/e;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4, v6, v7}, Lw9/e;->f(J)J

    move-result-wide v8

    cmp-long v2, v8, v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v4, p1, p2, v6, v7}, Lw9/e;->e(JJ)J

    move-result-wide v2

    invoke-interface {v4, v2, v3}, Lw9/e;->getTimeUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    :cond_5
    :goto_1
    return-wide v0
.end method

.method private static z(Lx9/c;)Z
    .locals 4

    iget-boolean v0, p0, Lx9/c;->d:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lx9/c;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lx9/c;->b:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->m()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public k(ILcom/google/android/exoplayer2/k3$b;Z)Lcom/google/android/exoplayer2/k3$b;
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->m()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    invoke-virtual {v2, p1}, Lx9/c;->c(I)Lx9/g;

    move-result-object v2

    iget-object v2, v2, Lx9/g;->a:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_1

    iget p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:I

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    invoke-virtual {p3, p1}, Lx9/c;->f(I)J

    move-result-wide v7

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    invoke-virtual {p3, p1}, Lx9/c;->c(I)Lx9/g;

    move-result-object p1

    iget-wide v2, p1, Lx9/g;->b:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    invoke-virtual {p1, v1}, Lx9/c;->c(I)Lx9/g;

    move-result-object p1

    iget-wide v0, p1, Lx9/g;->b:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->g:J

    sub-long v9, v0, v2

    const/4 v6, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/exoplayer2/k3$b;->v(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/k3$b;

    move-result-object p1

    return-object p1
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    invoke-virtual {v0}, Lx9/c;->d()I

    move-result v0

    return v0
.end method

.method public q(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->m()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->f:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public s(ILcom/google/android/exoplayer2/k3$d;J)Lcom/google/android/exoplayer2/k3$d;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v11, 0x1

    move/from16 v3, p1

    invoke-static {v3, v2, v11}, Lcom/google/android/exoplayer2/util/a;->c(III)I

    move-wide/from16 v2, p3

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->y(J)J

    move-result-wide v14

    sget-object v2, Lcom/google/android/exoplayer2/k3$d;->r:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->k:Lcom/google/android/exoplayer2/v1;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->j:Lx9/c;

    move-object v4, v12

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->c:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->d:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->e:J

    invoke-static {v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->z(Lx9/c;)Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->l:Lcom/google/android/exoplayer2/v1$g;

    move/from16 p1, v12

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->h:J

    move-wide/from16 v16, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->m()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v19, v11, -0x1

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;->g:J

    move-wide/from16 v20, v11

    const/4 v11, 0x1

    const/16 v18, 0x0

    move/from16 v12, p1

    invoke-virtual/range {v1 .. v21}, Lcom/google/android/exoplayer2/k3$d;->k(Ljava/lang/Object;Lcom/google/android/exoplayer2/v1;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/v1$g;JJIIJ)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v1

    return-object v1
.end method

.method public t()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
