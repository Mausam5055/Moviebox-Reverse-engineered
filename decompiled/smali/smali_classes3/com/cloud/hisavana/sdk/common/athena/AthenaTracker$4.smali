.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$isAutoClick:Z


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;->val$isAutoClick:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;->val$isAutoClick:Z

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->Z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    return-void
.end method
