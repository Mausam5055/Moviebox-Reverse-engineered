.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$errorCode:I

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$9;->val$requestId:Ljava/lang/String;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$9;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$9;->val$requestId:Ljava/lang/String;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$9;->val$errorCode:I

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->N(Ljava/lang/String;I)V

    return-void
.end method
