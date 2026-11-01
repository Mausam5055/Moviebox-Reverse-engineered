.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->T(Lcom/cloud/hisavana/sdk/q3;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$errorCode:I

.field final synthetic val$fetchInfo:Lcom/cloud/hisavana/sdk/q3;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/q3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;->val$fetchInfo:Lcom/cloud/hisavana/sdk/q3;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;->val$fetchInfo:Lcom/cloud/hisavana/sdk/q3;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;->val$errorCode:I

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->T(Lcom/cloud/hisavana/sdk/q3;I)V

    return-void
.end method
