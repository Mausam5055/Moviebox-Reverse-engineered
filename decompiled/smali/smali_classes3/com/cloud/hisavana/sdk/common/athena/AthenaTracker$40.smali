.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->j0(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$codeSeatId:Ljava/lang/String;

.field final synthetic val$triggerType:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$codeSeatId:Ljava/lang/String;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$triggerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$codeSeatId:Ljava/lang/String;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$triggerType:I

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->j0(Ljava/lang/String;I)V

    return-void
.end method
