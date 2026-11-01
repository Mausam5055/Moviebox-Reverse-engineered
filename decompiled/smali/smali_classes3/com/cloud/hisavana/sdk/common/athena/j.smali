.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/j;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/j;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/j;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/j;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/j;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/j;->b:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/j;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/j;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->g(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method
