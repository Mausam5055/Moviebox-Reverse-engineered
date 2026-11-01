.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->G(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$eventDataSet:Ljava/lang/String;

.field final synthetic val$psAttributed:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;->val$eventDataSet:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;->val$psAttributed:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;->val$eventDataSet:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;->val$psAttributed:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->B(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "AthenaTracker"

    const-string v3, "trackClick error"

    invoke-virtual {v1, v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
