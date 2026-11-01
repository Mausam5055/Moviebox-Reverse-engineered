.class public Lcom/aliyun/player/source/LiveShift;
.super Ljava/lang/Object;


# instance fields
.field private coverPath:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private timeLineUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "m3u8"

    iput-object v0, p0, Lcom/aliyun/player/source/LiveShift;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCoverPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->coverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeLineUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->timeLineUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->coverPath:Ljava/lang/String;

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->format:Ljava/lang/String;

    return-void
.end method

.method public setTimeLineUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->timeLineUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->url:Ljava/lang/String;

    return-void
.end method
