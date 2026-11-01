.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$failCount:I

.field final synthetic val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;->val$failCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;->val$failCount:I

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->d0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method
