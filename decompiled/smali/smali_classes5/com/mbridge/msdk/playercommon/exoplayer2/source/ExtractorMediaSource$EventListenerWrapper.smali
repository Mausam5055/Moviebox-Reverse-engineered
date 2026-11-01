.class final Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;
.super Lcom/mbridge/msdk/playercommon/exoplayer2/source/DefaultMediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventListenerWrapper"
.end annotation


# instance fields
.field private final eventListener:Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/DefaultMediaSourceEventListener;-><init>()V

    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;

    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;

    return-void
.end method


# virtual methods
.method public onLoadError(ILcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lcom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;

    invoke-interface {p1, p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$EventListener;->onLoadError(Ljava/io/IOException;)V

    return-void
.end method
