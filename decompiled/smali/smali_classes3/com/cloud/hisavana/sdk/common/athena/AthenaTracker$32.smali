.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$errorCode:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

.field final synthetic val$status:I

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;->val$errorCode:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;->val$status:I

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;->val$errorCode:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;->val$status:I

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;->val$version:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V

    return-void
.end method
