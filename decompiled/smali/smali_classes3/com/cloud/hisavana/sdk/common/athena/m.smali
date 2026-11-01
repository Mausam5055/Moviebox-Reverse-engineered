.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Integer;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->a:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method
