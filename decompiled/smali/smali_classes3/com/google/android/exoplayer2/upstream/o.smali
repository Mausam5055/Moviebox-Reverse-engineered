.class public final Lcom/google/android/exoplayer2/upstream/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/b;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:[Lcom/google/android/exoplayer2/upstream/a;


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/o;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/o;->a:Z

    iput p2, p0, Lcom/google/android/exoplayer2/upstream/o;->b:I

    iput p3, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I

    add-int/lit8 p1, p3, 0x64

    new-array p1, p1, [Lcom/google/android/exoplayer2/upstream/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    if-lez p3, :cond_2

    mul-int p1, p3, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o;->c:[B

    :goto_2
    if-ge v0, p3, :cond_3

    mul-int p1, v0, p2

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/o;->c:[B

    invoke-direct {v2, v3, p1}, Lcom/google/android/exoplayer2/upstream/a;-><init>([BI)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o;->c:[B

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/exoplayer2/upstream/b$a;)V
    .locals 3

    monitor-enter p0

    :goto_0
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/b$a;->a()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/b$a;->next()Lcom/google/android/exoplayer2/upstream/b$a;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized allocate()Lcom/google/android/exoplayer2/upstream/a;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/a;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/o;->b:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/a;-><init>([BI)V

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    array-length v3, v2

    if-le v1, v3, :cond_1

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/upstream/a;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/android/exoplayer2/upstream/a;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I

    aput-object p1, v0, v1

    iget p1, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/o;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/o;->d:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/o;->d:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/o;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getIndividualAllocationLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/o;->b:I

    return v0
.end method

.method public declared-synchronized trim()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/o;->d:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/o;->b:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->l(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/o;->c:[B

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v1, v2, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/a;

    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/o;->c:[B

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/a;

    iget-object v5, v4, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/o;->c:[B

    if-eq v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    add-int/lit8 v1, v2, -0x1

    aput-object v3, v5, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->g:[Lcom/google/android/exoplayer2/upstream/a;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
