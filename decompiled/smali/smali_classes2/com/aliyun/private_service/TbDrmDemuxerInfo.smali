.class public Lcom/aliyun/private_service/TbDrmDemuxerInfo;
.super Ljava/lang/Object;


# instance fields
.field private contextAddr:J

.field private createAddr:J

.field private releaseAddr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setContextAddr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->contextAddr:J

    return-void
.end method

.method private setCreateAddr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->createAddr:J

    return-void
.end method

.method private setReleaseAddr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->releaseAddr:J

    return-void
.end method


# virtual methods
.method public getContextAddr()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->contextAddr:J

    return-wide v0
.end method

.method public getCreateAddr()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->createAddr:J

    return-wide v0
.end method

.method public getReleaseAddr()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->releaseAddr:J

    return-wide v0
.end method
