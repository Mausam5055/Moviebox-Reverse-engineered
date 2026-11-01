.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

.field final synthetic val$adsDTOs:Ljava/util/List;

.field final synthetic val$adxImpBean:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field final synthetic val$filterList:Landroidx/collection/b;

.field final synthetic val$offlineCount:I


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adsDTOs:Ljava/util/List;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adxImpBean:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$offlineCount:I

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$filterList:Landroidx/collection/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adsDTOs:Ljava/util/List;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adxImpBean:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$offlineCount:I

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$filterList:Landroidx/collection/b;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "AthenaTracker"

    const-string v3, "trackSspReturn error"

    invoke-virtual {v1, v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
