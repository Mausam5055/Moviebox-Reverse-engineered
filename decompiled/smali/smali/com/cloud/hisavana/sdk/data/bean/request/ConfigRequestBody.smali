.class public Lcom/cloud/hisavana/sdk/data/bean/request/ConfigRequestBody;
.super Ljava/lang/Object;


# instance fields
.field public application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

.field public applicationId:Ljava/lang/String;

.field public ascribeEnable:Z

.field public codeSeatFilterEnable:Z

.field public codeSeatFilterIds:[Ljava/lang/String;

.field public customKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

.field public testRequest:Z

.field public user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
