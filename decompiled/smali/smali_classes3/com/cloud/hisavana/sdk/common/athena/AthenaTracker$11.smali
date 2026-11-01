.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->c0(Ljava/lang/String;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadWay:I

.field final synthetic val$fileSize:J

.field final synthetic val$mStatus:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$url:Ljava/lang/String;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$downloadWay:I

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$mStatus:I

    iput-wide p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$fileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$url:Ljava/lang/String;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$downloadWay:I

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$mStatus:I

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$fileSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->c0(Ljava/lang/String;IIJ)V

    return-void
.end method
