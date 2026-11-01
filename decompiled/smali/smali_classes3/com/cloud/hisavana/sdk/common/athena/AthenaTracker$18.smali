.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$formBean:Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;

.field final synthetic val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;->val$formBean:Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;->val$formBean:Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V

    return-void
.end method
