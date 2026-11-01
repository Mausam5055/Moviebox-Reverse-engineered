.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$progress:I

.field final synthetic val$redirectType:I

.field final synthetic val$spendTime:J

.field final synthetic val$targetUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$webId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$webId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$targetUrl:Ljava/lang/String;

    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$progress:I

    iput p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$redirectType:I

    iput-wide p6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$spendTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$webId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$targetUrl:Ljava/lang/String;

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$progress:I

    iget v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$redirectType:I

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$spendTime:J

    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method
