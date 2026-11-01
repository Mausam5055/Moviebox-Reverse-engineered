.class public Lcom/aliyun/player/nativeclass/MediaInfo;
.super Ljava/lang/Object;


# instance fields
.field private mCoverUrl:Ljava/lang/String;

.field private mDuration:I

.field private mMediaType:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mThumbnailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/nativeclass/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mTotalBitrate:J

.field private mTrackInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/nativeclass/TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTransCodeMode:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mVideoId:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mDuration:I

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mCoverUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mMediaType:Ljava/lang/String;

    const-string v0, "FastTranscode"

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTransCodeMode:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTotalBitrate:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTrackInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mThumbnailList:Ljava/util/List;

    return-void
.end method

.method private getTrackInfoArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTrackInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private setThumbnailList([Lcom/aliyun/player/nativeclass/Thumbnail;)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mThumbnailList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mDuration:I

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mMediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/player/nativeclass/Thumbnail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mThumbnailList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBitrate()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTotalBitrate:J

    return-wide v0
.end method

.method public getTrackInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/player/nativeclass/TrackInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTrackInfos:Ljava/util/List;

    return-object v0
.end method

.method public getTransCodeMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTransCodeMode:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mDuration:I

    return-void
.end method

.method public setTrackInfos([Lcom/aliyun/player/nativeclass/TrackInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/MediaInfo;->mTrackInfos:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
