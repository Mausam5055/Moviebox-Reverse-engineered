.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/q3;

.field public final synthetic c:I

.field public final synthetic d:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/q3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->b:Lcom/cloud/hisavana/sdk/q3;

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->c:I

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->d:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->b:Lcom/cloud/hisavana/sdk/q3;

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->c:I

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->d:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->i(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/q3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method
