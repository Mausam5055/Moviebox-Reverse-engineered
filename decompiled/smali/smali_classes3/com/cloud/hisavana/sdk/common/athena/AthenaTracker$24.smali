.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$webDuration:J


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-wide p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;->val$webDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;->val$webDuration:J

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V

    return-void
.end method
