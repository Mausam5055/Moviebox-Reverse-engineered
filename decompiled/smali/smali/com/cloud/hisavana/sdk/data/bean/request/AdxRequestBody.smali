.class public Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
.super Ljava/lang/Object;


# instance fields
.field public apiType:I

.field public application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

.field public applicationId:Ljava/lang/String;

.field public ascribeEnable:Z

.field public cachedAdCount:I

.field public codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

.field public customKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public defaultAd:Z

.field public device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

.field public offlineAd:Z

.field public requestId:Ljava/lang/String;

.field public testRequest:Ljava/lang/Boolean;

.field public turnOffPerAds:I

.field public user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    :goto_0
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    :goto_1
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;-><init>()V

    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setVideo(Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;)V

    iput-object p0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;-><init>()V

    iput-object p0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    return-object v0
.end method
