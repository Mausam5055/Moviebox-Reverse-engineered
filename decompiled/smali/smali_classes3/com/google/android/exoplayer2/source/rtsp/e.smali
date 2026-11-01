.class final Lcom/google/android/exoplayer2/source/rtsp/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/e$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/rtsp/t;

.field private final c:Lcom/google/android/exoplayer2/source/rtsp/e$a;

.field private final d:Lg9/n;

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/android/exoplayer2/source/rtsp/c$a;

.field private g:Lcom/google/android/exoplayer2/source/rtsp/f;

.field private volatile h:Z

.field private volatile i:J

.field private volatile j:J


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/rtsp/t;Lcom/google/android/exoplayer2/source/rtsp/e$a;Lg9/n;Lcom/google/android/exoplayer2/source/rtsp/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->a:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->b:Lcom/google/android/exoplayer2/source/rtsp/t;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->c:Lcom/google/android/exoplayer2/source/rtsp/e$a;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->d:Lg9/n;

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->e:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->f:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->i:J

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/e;Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/c;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->c:Lcom/google/android/exoplayer2/source/rtsp/e$a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/e$a;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/c;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->g:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/f;->f()V

    return-void
.end method

.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->h:Z

    return-void
.end method

.method public d(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->i:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->j:J

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->g:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->g:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/f;->g(I)V

    :cond_0
    return-void
.end method

.method public f(J)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->g:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->g:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/f;->h(J)V

    :cond_0
    return-void
.end method

.method public load()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->f:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->a:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/c$a;->a(I)Lcom/google/android/exoplayer2/source/rtsp/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/rtsp/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->e:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/d;-><init>(Lcom/google/android/exoplayer2/source/rtsp/e;Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/c;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lg9/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/exoplayer2/upstream/g;

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lg9/f;-><init>(Lcom/google/android/exoplayer2/upstream/g;JJ)V

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/f;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->b:Lcom/google/android/exoplayer2/source/rtsp/t;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/t;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    iget v4, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->a:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/source/rtsp/f;-><init>(Lcom/google/android/exoplayer2/source/rtsp/j;I)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->g:Lcom/google/android/exoplayer2/source/rtsp/f;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->d:Lg9/n;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/f;->b(Lg9/n;)V

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->h:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->i:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->g:Lcom/google/android/exoplayer2/source/rtsp/f;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->j:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->i:J

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/google/android/exoplayer2/source/rtsp/f;->seek(JJ)V

    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->i:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->g:Lcom/google/android/exoplayer2/source/rtsp/f;

    new-instance v3, Lg9/a0;

    invoke-direct {v3}, Lg9/a0;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/source/rtsp/f;->c(Lg9/m;Lg9/a0;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    throw v1
.end method
