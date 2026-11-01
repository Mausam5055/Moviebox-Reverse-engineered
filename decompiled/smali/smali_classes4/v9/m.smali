.class public final Lv9/m;
.super Lv9/f;


# instance fields
.field private final j:Lv9/g;

.field private k:Lv9/g$b;

.field private l:J

.field private volatile m:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;Lcom/google/android/exoplayer2/o1;ILjava/lang/Object;Lv9/g;)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lv9/f;-><init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;ILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    iput-object v1, v0, Lv9/m;->j:Lv9/g;

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv9/m;->m:Z

    return-void
.end method

.method public e(Lv9/g$b;)V
    .locals 0

    iput-object p1, p0, Lv9/m;->k:Lv9/g$b;

    return-void
.end method

.method public load()V
    .locals 8

    iget-wide v0, p0, Lv9/m;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v1, p0, Lv9/m;->j:Lv9/g;

    iget-object v2, p0, Lv9/m;->k:Lv9/g$b;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface/range {v1 .. v6}, Lv9/g;->e(Lv9/g$b;JJ)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    iget-wide v1, p0, Lv9/m;->l:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/n;->e(J)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object v0

    new-instance v7, Lg9/f;

    iget-object v2, p0, Lv9/f;->i:Lcom/google/android/exoplayer2/upstream/i0;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/n;->g:J

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/upstream/i0;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lg9/f;-><init>(Lcom/google/android/exoplayer2/upstream/g;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lv9/m;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lv9/m;->j:Lv9/g;

    invoke-interface {v0, v7}, Lv9/g;->a(Lg9/m;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v7}, Lg9/m;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/n;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lv9/m;->l:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lv9/f;->i:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-interface {v7}, Lg9/m;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/n;->g:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lv9/m;->l:J

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    iget-object v1, p0, Lv9/f;->i:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    throw v0
.end method
