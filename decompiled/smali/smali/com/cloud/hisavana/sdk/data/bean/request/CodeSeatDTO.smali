.class public Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;
.super Ljava/lang/Object;


# instance fields
.field private adCount:I

.field private adPriority:I

.field private extInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private gameName:Ljava/lang/String;

.field private gameScene:Ljava/lang/String;

.field private height:I

.field private id:Ljava/lang/String;

.field private offlineAdEnable:Z

.field public omSdk:Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;

.field private type:I

.field private video:Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;

.field private webPageInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdCount()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->adCount:I

    return v0
.end method

.method public getAdPriority()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->adPriority:I

    return v0
.end method

.method public getExtInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->extInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getGameScene()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->gameScene:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOmSdk()Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->omSdk:Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->type:I

    return v0
.end method

.method public getVideo()Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->video:Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;

    return-object v0
.end method

.method public getWebPageInfo()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->webPageInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->width:I

    return v0
.end method

.method public isOfflineAdEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->offlineAdEnable:Z

    return v0
.end method

.method public setAdCount(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->adCount:I

    return-void
.end method

.method public setAdPriority(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->adPriority:I

    return-void
.end method

.method public setExtInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->extInfo:Ljava/util/Map;

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setGameScene(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->gameScene:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->height:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->id:Ljava/lang/String;

    return-void
.end method

.method public setOfflineAdEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->offlineAdEnable:Z

    return-void
.end method

.method public setOmSdk(Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->omSdk:Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->type:I

    return-void
.end method

.method public setVideo(Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->video:Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;

    return-void
.end method

.method public setWebPageInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->webPageInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->width:I

    return-void
.end method
