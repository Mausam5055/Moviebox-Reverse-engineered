.class public final synthetic Lcom/google/android/exoplayer2/source/rtsp/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/rtsp/u$g;

.field public final synthetic b:[B

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/u$g;[BLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/w;->a:Lcom/google/android/exoplayer2/source/rtsp/u$g;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/w;->b:[B

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/w;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/w;->a:Lcom/google/android/exoplayer2/source/rtsp/u$g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/w;->b:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/w;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/u$g;->b(Lcom/google/android/exoplayer2/source/rtsp/u$g;[BLjava/util/List;)V

    return-void
.end method
