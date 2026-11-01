.class public final Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;
.super Lcom/google/android/exoplayer2/source/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final h:Lcom/google/android/exoplayer2/v1;

.field private final i:Lcom/google/android/exoplayer2/source/rtsp/c$a;

.field private final j:Ljava/lang/String;

.field private final k:Landroid/net/Uri;

.field private final l:Ljavax/net/SocketFactory;

.field private final m:Z

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.rtsp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/m1;->a(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/source/rtsp/c$a;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->h:Lcom/google/android/exoplayer2/v1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->i:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/v1$h;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v1$h;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->k:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->l:Ljavax/net/SocketFactory;

    iput-boolean p5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->m:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->n:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->q:Z

    return-void
.end method

.method static synthetic E(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->n:J

    return-wide p1
.end method

.method static synthetic F(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->o:Z

    return p1
.end method

.method static synthetic G(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->p:Z

    return p1
.end method

.method static synthetic H(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->q:Z

    return p1
.end method

.method static synthetic I(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->J()V

    return-void
.end method

.method private J()V
    .locals 9

    new-instance v8, Lt9/u;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->n:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->o:Z

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->p:Z

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->h:Lcom/google/android/exoplayer2/v1;

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lt9/u;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/v1;)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->q:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    invoke-direct {v0, p0, v8}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;Lcom/google/android/exoplayer2/k3;)V

    move-object v8, v0

    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/a;->C(Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->J()V

    return-void
.end method

.method protected D()V
    .locals 0

    return-void
.end method

.method public a()Lcom/google/android/exoplayer2/v1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->h:Lcom/google/android/exoplayer2/v1;

    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 8

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/p;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->i:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->k:Landroid/net/Uri;

    new-instance v4, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->l:Ljavax/net/SocketFactory;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->m:Z

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/rtsp/p;-><init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/source/rtsp/c$a;Landroid/net/Uri;Lcom/google/android/exoplayer2/source/rtsp/p$c;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V

    return-object p1
.end method

.method public k(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/p;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/p;->M()V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method
