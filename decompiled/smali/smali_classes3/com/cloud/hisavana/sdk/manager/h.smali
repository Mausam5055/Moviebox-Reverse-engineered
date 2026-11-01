.class public final synthetic Lcom/cloud/hisavana/sdk/manager/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/manager/g;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/h;->a:Lcom/cloud/hisavana/sdk/manager/g;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/h;->b:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/h;->a:Lcom/cloud/hisavana/sdk/manager/g;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/h;->b:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/manager/g$d;->b(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    return-void
.end method
