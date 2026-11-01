.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$adsDTOs:Ljava/util/List;

.field final synthetic val$defaultAdStatusStr:Ljava/lang/String;

.field final synthetic val$errorCode:I

.field final synthetic val$fetchInfo:Lcom/cloud/hisavana/sdk/q3;

.field final synthetic val$localOfflineCount:I

.field final synthetic val$offlineAdStatusStr:Ljava/lang/String;

.field final synthetic val$timeConsuming:J


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$adsDTOs:Ljava/util/List;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$fetchInfo:Lcom/cloud/hisavana/sdk/q3;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$offlineAdStatusStr:Ljava/lang/String;

    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$errorCode:I

    iput-wide p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$timeConsuming:J

    iput-object p7, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$defaultAdStatusStr:Ljava/lang/String;

    iput p8, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$localOfflineCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$adsDTOs:Ljava/util/List;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$fetchInfo:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$fetchInfo:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$offlineAdStatusStr:Ljava/lang/String;

    iget v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$timeConsuming:J

    iget-object v7, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$fetchInfo:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$fetchInfo:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v8

    iget-object v9, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$defaultAdStatusStr:Ljava/lang/String;

    iget v10, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$localOfflineCount:I

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static/range {v0 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->k(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
