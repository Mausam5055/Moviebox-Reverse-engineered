.class Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Mp4Extractor$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;
    .locals 3

    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method
