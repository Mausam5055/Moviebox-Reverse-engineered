.class public Lcom/aliyun/player/source/StsInfo;
.super Ljava/lang/Object;


# instance fields
.field private mAccessKeyId:Ljava/lang/String;

.field private mAccessKeySecret:Ljava/lang/String;

.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mRegion:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFormatStr()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/player/source/MediaFormat;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/aliyun/player/source/MediaFormat;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeyId:Ljava/lang/String;

    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeySecret:Ljava/lang/String;

    return-void
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mSecurityToken:Ljava/lang/String;

    return-void
.end method
