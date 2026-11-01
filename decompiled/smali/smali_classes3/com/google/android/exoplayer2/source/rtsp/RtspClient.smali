.class final Lcom/google/android/exoplayer2/source/rtsp/RtspClient;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

.field private final b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

.field private final c:Ljava/lang/String;

.field private final d:Ljavax/net/SocketFactory;

.field private final e:Z

.field private final f:Ljava/util/ArrayDeque;

.field private final g:Landroid/util/SparseArray;

.field private final h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

.field private i:Landroid/net/Uri;

.field private j:Lcom/google/android/exoplayer2/source/rtsp/u;

.field private k:Lcom/google/android/exoplayer2/source/rtsp/y$a;

.field private l:Ljava/lang/String;

.field private m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

.field private n:Lcom/google/android/exoplayer2/source/rtsp/l;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d:Ljavax/net/SocketFactory;

    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->e:Z

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->g:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    invoke-static {p4}, Lcom/google/android/exoplayer2/source/rtsp/y;->o(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/u;

    new-instance p2, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/u;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u$d;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {p4}, Lcom/google/android/exoplayer2/source/rtsp/y;->m(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k:Lcom/google/android/exoplayer2/source/rtsp/y$a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    return-void
.end method

.method static synthetic T(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    return-object p0
.end method

.method static synthetic U(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic V(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Z(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/l;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->n:Lcom/google/android/exoplayer2/source/rtsp/l;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    return p0
.end method

.method static synthetic c0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/l;)Lcom/google/android/exoplayer2/source/rtsp/l;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->n:Lcom/google/android/exoplayer2/source/rtsp/l;

    return-object p1
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/u;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    return-object p0
.end method

.method static synthetic d0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/y$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k:Lcom/google/android/exoplayer2/source/rtsp/y$a;

    return-object p0
.end method

.method static synthetic g0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/y$a;)Lcom/google/android/exoplayer2/source/rtsp/y$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k:Lcom/google/android/exoplayer2/source/rtsp/y$a;

    return-object p1
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    return p1
.end method

.method static synthetic h0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p0(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    return-object p0
.end method

.method static synthetic k0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->g:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic l0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->u0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    return-object p1
.end method

.method private static m0(Lcom/google/android/exoplayer2/source/rtsp/g0;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/a;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/j;->b(Lcom/google/android/exoplayer2/source/rtsp/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/exoplayer2/source/rtsp/t;

    invoke-direct {v3, v2, p1}, Lcom/google/android/exoplayer2/source/rtsp/t;-><init>(Lcom/google/android/exoplayer2/source/rtsp/a;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q:Z

    return p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q:Z

    return p1
.end method

.method private o0()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/p$d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;->e()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->j(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    return-object p0
.end method

.method private p0(Ljava/lang/Throwable;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    return-object p1
.end method

.method private q0(Landroid/net/Uri;)Ljava/net/Socket;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x22a

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d:Ljavax/net/SocketFactory;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method static synthetic r(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->z0(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/source/rtsp/g0;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m0(Lcom/google/android/exoplayer2/source/rtsp/g0;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p:Z

    return p1
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o0()V

    return-void
.end method

.method private u0(Ljava/util/List;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "\n"

    invoke-static {v0}, Lcom/google/common/base/g;->h(Ljava/lang/String;)Lcom/google/common/base/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/g;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RtspClient"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s:J

    return-wide v0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s:J

    return-wide p1
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->r:Z

    return p1
.end method

.method private static z0(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public B0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o0()V

    return-void
.end method

.method public C0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q0(Landroid/net/Uri;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/u;->i(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->e(Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    throw v0
.end method

.method public E0(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->g(Landroid/net/Uri;JLjava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->k(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->close()V

    return-void
.end method

.method public r0()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    return v0
.end method

.method public v0(ILcom/google/android/exoplayer2/source/rtsp/u$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/u;->k(ILcom/google/android/exoplayer2/source/rtsp/u$b;)V

    return-void
.end method

.method public x0()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->close()V

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/u;

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/u;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u$d;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q0(Landroid/net/Uri;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/u;->i(Ljava/net/Socket;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q:Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->n:Lcom/google/android/exoplayer2/source/rtsp/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;)V

    :goto_0
    return-void
.end method

.method public y0(J)V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->f(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s:J

    return-void
.end method
