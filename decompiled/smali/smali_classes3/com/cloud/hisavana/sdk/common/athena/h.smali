.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/q3;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/h;->a:Lcom/cloud/hisavana/sdk/q3;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/h;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/h;->a:Lcom/cloud/hisavana/sdk/q3;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/h;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->c(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;)V

    return-void
.end method
