.class final Lcom/google/android/exoplayer2/source/rtsp/f;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/l;


# instance fields
.field private final a:Lz9/e;

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private final d:I

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/google/android/exoplayer2/source/rtsp/i;

.field private g:Lg9/n;

.field private h:Z

.field private volatile i:J

.field private volatile j:I

.field private k:Z

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/j;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->d:I

    new-instance p2, Lz9/a;

    invoke-direct {p2}, Lz9/a;-><init>()V

    invoke-virtual {p2, p1}, Lz9/a;->a(Lcom/google/android/exoplayer2/source/rtsp/j;)Lz9/e;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz9/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lz9/e;

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    const p2, 0xffe3

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->c:Lcom/google/android/exoplayer2/util/d0;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->e:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/i;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/rtsp/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    return-void
.end method

.method private static a(J)J
    .locals 2

    const-wide/16 v0, 0x1e

    sub-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public b(Lg9/n;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lz9/e;

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->d:I

    invoke-interface {v0, p1, v1}, Lz9/e;->c(Lg9/n;I)V

    invoke-interface {p1}, Lg9/n;->endTracks()V

    new-instance v0, Lg9/b0$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lg9/b0$b;-><init>(J)V

    invoke-interface {p1, v0}, Lg9/n;->d(Lg9/b0;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->g:Lg9/n;

    return-void
.end method

.method public c(Lg9/m;Lg9/a0;)I
    .locals 12

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->g:Lg9/n;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p2

    const v0, 0xffe3

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lg9/m;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g;->d(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/source/rtsp/g;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/f;->a(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/i;->e(Lcom/google/android/exoplayer2/source/rtsp/g;J)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    invoke-virtual {p1, v4, v5}, Lcom/google/android/exoplayer2/source/rtsp/i;->f(J)Lcom/google/android/exoplayer2/source/rtsp/g;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->h:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_4

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->h:J

    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    if-ne v0, p2, :cond_5

    iget p2, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->g:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lz9/e;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    invoke-interface {p2, v6, v7, v0}, Lz9/e;->b(JI)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->h:Z

    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->e:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->k:Z

    if-eqz v0, :cond_7

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_8

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/i;->g()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lz9/e;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    invoke-interface {p1, v4, v5, v6, v7}, Lz9/e;->seek(JJ)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->k:Z

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->c:Lcom/google/android/exoplayer2/util/d0;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->k:[B

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->M([B)V

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lz9/e;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->c:Lcom/google/android/exoplayer2/util/d0;

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->h:J

    iget v10, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->g:I

    iget-boolean v11, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->e:Z

    invoke-interface/range {v6 .. v11}, Lz9/e;->a(Lcom/google/android/exoplayer2/util/d0;JIZ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    invoke-virtual {p1, v4, v5}, Lcom/google/android/exoplayer2/source/rtsp/i;->f(J)Lcom/google/android/exoplayer2/source/rtsp/g;

    move-result-object p1

    if-nez p1, :cond_7

    :cond_8
    :goto_0
    monitor-exit p2

    return v1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lg9/m;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RTP packets are transmitted in a packet stream do not support sniffing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->h:Z

    return v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->k:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    return-void
.end method

.method public h(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
