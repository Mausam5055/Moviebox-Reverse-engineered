.class final Lcom/google/android/exoplayer2/source/rtsp/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/u$e;,
        Lcom/google/android/exoplayer2/source/rtsp/u$c;,
        Lcom/google/android/exoplayer2/source/rtsp/u$f;,
        Lcom/google/android/exoplayer2/source/rtsp/u$g;,
        Lcom/google/android/exoplayer2/source/rtsp/u$b;,
        Lcom/google/android/exoplayer2/source/rtsp/u$d;
    }
.end annotation


# static fields
.field public static final g:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/rtsp/u$d;

.field private final b:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final c:Ljava/util/Map;

.field private d:Lcom/google/android/exoplayer2/source/rtsp/u$g;

.field private e:Ljava/net/Socket;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/common/base/c;->c:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/u;->g:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/u$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->a:Lcom/google/android/exoplayer2/source/rtsp/u$d;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "ExoPlayer:RtspMessageChannel:ReceiverLoader"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/u;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/u;)Lcom/google/android/exoplayer2/source/rtsp/u$d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->a:Lcom/google/android/exoplayer2/source/rtsp/u$d;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/rtsp/u;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->c:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->d:Lcom/google/android/exoplayer2/source/rtsp/u$g;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/u$g;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->k()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->e:Ljava/net/Socket;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->f:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->f:Z

    throw v1
.end method

.method public i(Ljava/net/Socket;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->e:Ljava/net/Socket;

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/u$g;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/u$g;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->d:Lcom/google/android/exoplayer2/source/rtsp/u$g;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/u$f;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/u$f;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u;Ljava/io/InputStream;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/u$c;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/google/android/exoplayer2/source/rtsp/u$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u;Lcom/google/android/exoplayer2/source/rtsp/u$a;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    return-void
.end method

.method public k(ILcom/google/android/exoplayer2/source/rtsp/u$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->d:Lcom/google/android/exoplayer2/source/rtsp/u$g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u;->d:Lcom/google/android/exoplayer2/source/rtsp/u$g;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/u$g;->h(Ljava/util/List;)V

    return-void
.end method
