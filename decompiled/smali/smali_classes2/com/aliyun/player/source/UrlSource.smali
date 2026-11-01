.class public Lcom/aliyun/player/source/UrlSource;
.super Lcom/aliyun/player/source/SourceBase;


# instance fields
.field private mCacheFilePath:Ljava/lang/String;

.field private mOriginSize:J

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/aliyun/player/source/SourceBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mCacheFilePath:Ljava/lang/String;

    const-string v0, "AUTO"

    iput-object v0, p0, Lcom/aliyun/player/source/SourceBase;->mQuality:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/player/source/SourceBase;->mForceQuality:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/source/UrlSource;->mOriginSize:J

    return-void
.end method


# virtual methods
.method public getCacheFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mCacheFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginSize()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/player/source/UrlSource;->mOriginSize:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/UrlSource;->mCacheFilePath:Ljava/lang/String;

    return-void
.end method

.method public setOriginSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/player/source/UrlSource;->mOriginSize:J

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/UrlSource;->mUri:Ljava/lang/String;

    return-void
.end method
