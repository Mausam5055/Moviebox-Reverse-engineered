.class final Lcom/google/android/exoplayer2/source/rtsp/u$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/io/DataInputStream;

.field private final b:Lcom/google/android/exoplayer2/source/rtsp/u$e;

.field private volatile c:Z

.field final synthetic d:Lcom/google/android/exoplayer2/source/rtsp/u;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/u;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/u$e;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/rtsp/u$e;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->b:Lcom/google/android/exoplayer2/source/rtsp/u$e;

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    new-array v2, v1, [B

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/u;->h(Lcom/google/android/exoplayer2/source/rtsp/u;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/u$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/u;->b(Lcom/google/android/exoplayer2/source/rtsp/u;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/u$b;->f([B)V

    :cond_0
    return-void
.end method

.method private b(B)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->b(Lcom/google/android/exoplayer2/source/rtsp/u;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->d:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->d(Lcom/google/android/exoplayer2/source/rtsp/u;)Lcom/google/android/exoplayer2/source/rtsp/u$d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->b:Lcom/google/android/exoplayer2/source/rtsp/u$e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/exoplayer2/source/rtsp/u$e;->c(BLjava/io/DataInputStream;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/u$d;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->c:Z

    return-void
.end method

.method public load()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/u$f;->a()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/u$f;->b(B)V

    goto :goto_0

    :cond_1
    return-void
.end method
