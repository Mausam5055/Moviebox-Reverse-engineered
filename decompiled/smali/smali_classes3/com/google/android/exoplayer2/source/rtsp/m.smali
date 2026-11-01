.class public final synthetic Lcom/google/android/exoplayer2/source/rtsp/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/m;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/m;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/m;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/m;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->d(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;Ljava/util/List;)V

    return-void
.end method
