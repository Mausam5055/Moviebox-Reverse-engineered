.class public final synthetic Lcom/cloud/hisavana/sdk/p1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/R0;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/R0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p1;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/p1;->b:Lcom/cloud/hisavana/sdk/R0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p1;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/p1;->b:Lcom/cloud/hisavana/sdk/R0;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/R0;->a(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/R0;)V

    return-void
.end method
