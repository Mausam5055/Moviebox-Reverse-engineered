.class public final Lt9/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/r;


# instance fields
.field private final a:Lg9/r;

.field private b:Lg9/l;

.field private c:Lg9/m;


# direct methods
.method public constructor <init>(Lg9/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/a;->a:Lg9/r;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lt9/a;->b:Lg9/l;

    instance-of v1, v0, Ln9/f;

    if-eqz v1, :cond_0

    check-cast v0, Ln9/f;

    invoke-virtual {v0}, Ln9/f;->i()V

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lt9/a;->c:Lg9/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg9/m;->getPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public c(Lg9/a0;)I
    .locals 2

    iget-object v0, p0, Lt9/a;->b:Lg9/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/l;

    iget-object v1, p0, Lt9/a;->c:Lg9/m;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg9/m;

    invoke-interface {v0, v1, p1}, Lg9/l;->c(Lg9/m;Lg9/a0;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/upstream/g;Landroid/net/Uri;Ljava/util/Map;JJLg9/n;)V
    .locals 7

    new-instance v6, Lg9/f;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lg9/f;-><init>(Lcom/google/android/exoplayer2/upstream/g;JJ)V

    iput-object v6, p0, Lt9/a;->c:Lg9/m;

    iget-object p1, p0, Lt9/a;->b:Lg9/l;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lt9/a;->a:Lg9/r;

    invoke-interface {p1, p2, p3}, Lg9/r;->c(Landroid/net/Uri;Ljava/util/Map;)[Lg9/l;

    move-result-object p1

    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    aget-object p1, p1, p6

    iput-object p1, p0, Lt9/a;->b:Lg9/l;

    goto :goto_6

    :cond_1
    array-length p3, p1

    move v0, p6

    :goto_0
    if-ge v0, p3, :cond_7

    aget-object v1, p1, v0

    :try_start_0
    invoke-interface {v1, v6}, Lg9/l;->d(Lg9/m;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lt9/a;->b:Lg9/l;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p7}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    invoke-interface {v6}, Lg9/m;->resetPeekPosition()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lt9/a;->b:Lg9/l;

    if-nez v1, :cond_4

    invoke-interface {v6}, Lg9/m;->getPosition()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, p6

    goto :goto_2

    :cond_4
    :goto_1
    move v1, p7

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    invoke-interface {v6}, Lg9/m;->resetPeekPosition()V

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lt9/a;->b:Lg9/l;

    if-nez p2, :cond_5

    invoke-interface {v6}, Lg9/m;->getPosition()J

    move-result-wide p2

    cmp-long p2, p2, p4

    if-nez p2, :cond_6

    :cond_5
    move p6, p7

    :cond_6
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    invoke-interface {v6}, Lg9/m;->resetPeekPosition()V

    throw p1

    :catch_0
    iget-object v1, p0, Lt9/a;->b:Lg9/l;

    if-nez v1, :cond_4

    invoke-interface {v6}, Lg9/m;->getPosition()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_3

    goto :goto_1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    iget-object p3, p0, Lt9/a;->b:Lg9/l;

    if-eqz p3, :cond_8

    :goto_6
    iget-object p1, p0, Lt9/a;->b:Lg9/l;

    invoke-interface {p1, p8}, Lg9/l;->b(Lg9/n;)V

    return-void

    :cond_8
    new-instance p3, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "None of the available extractors ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->M([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p3
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lt9/a;->b:Lg9/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg9/l;->release()V

    iput-object v1, p0, Lt9/a;->b:Lg9/l;

    :cond_0
    iput-object v1, p0, Lt9/a;->c:Lg9/m;

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget-object v0, p0, Lt9/a;->b:Lg9/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lg9/l;->seek(JJ)V

    return-void
.end method
