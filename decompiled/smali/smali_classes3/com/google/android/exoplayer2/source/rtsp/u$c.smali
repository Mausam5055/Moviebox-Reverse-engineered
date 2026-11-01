.class final Lcom/google/android/exoplayer2/source/rtsp/u$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/rtsp/u;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$c;->a:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/u;Lcom/google/android/exoplayer2/source/rtsp/u$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/u$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJZ)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJ)V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$c;->a:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/u;->b(Lcom/google/android/exoplayer2/source/rtsp/u;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/u$c;->a:Lcom/google/android/exoplayer2/source/rtsp/u;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/u;->d(Lcom/google/android/exoplayer2/source/rtsp/u;)Lcom/google/android/exoplayer2/source/rtsp/u$d;

    move-result-object p1

    invoke-interface {p1, p6}, Lcom/google/android/exoplayer2/source/rtsp/u$d;->a(Ljava/lang/Exception;)V

    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    return-object p1
.end method

.method public bridge synthetic j(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/u$f;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/rtsp/u$c;->a(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJZ)V

    return-void
.end method

.method public bridge synthetic l(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/u$f;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/rtsp/u$c;->b(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJ)V

    return-void
.end method

.method public bridge synthetic n(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/u$f;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/rtsp/u$c;->c(Lcom/google/android/exoplayer2/source/rtsp/u$f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method
