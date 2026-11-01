.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->I(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$triggerType:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;->val$triggerType:I

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;->val$requestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;->val$triggerType:I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;->val$requestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->D(ILjava/lang/String;)V

    return-void
.end method
