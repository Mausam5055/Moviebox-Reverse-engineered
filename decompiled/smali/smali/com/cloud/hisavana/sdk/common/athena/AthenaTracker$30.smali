.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adFilterIds:Ljava/util/List;

.field final synthetic val$adFilterReasons:Ljava/util/List;

.field final synthetic val$codeSeatId:Ljava/lang/String;

.field final synthetic val$isOffline:Z

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$source:I

.field final synthetic val$triggerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$triggerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$codeSeatId:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$adFilterIds:Ljava/util/List;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$adFilterReasons:Ljava/util/List;

    iput-boolean p6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$isOffline:Z

    iput p7, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$requestId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$triggerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$codeSeatId:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$adFilterIds:Ljava/util/List;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$adFilterReasons:Ljava/util/List;

    iget-boolean v5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$isOffline:Z

    iget v6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$source:I

    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    return-void
.end method
