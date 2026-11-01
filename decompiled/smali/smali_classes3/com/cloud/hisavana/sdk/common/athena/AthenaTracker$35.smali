.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pageStatus:Ljava/lang/String;

.field final synthetic val$targetUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$webId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;->val$webId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;->val$targetUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;->val$pageStatus:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;->val$webId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;->val$targetUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;->val$pageStatus:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
