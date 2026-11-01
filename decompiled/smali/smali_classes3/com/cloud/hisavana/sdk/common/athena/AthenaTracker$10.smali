.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->K(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$deepLinkUrl:Ljava/lang/String;

.field final synthetic val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$jumpType:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;->val$deepLinkUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;->val$jumpType:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;->val$deepLinkUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;->val$jumpType:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->F(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;)V

    return-void
.end method
