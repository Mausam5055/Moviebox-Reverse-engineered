.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/q3;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/i;->a:Lcom/cloud/hisavana/sdk/q3;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/i;->a:Lcom/cloud/hisavana/sdk/q3;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/i;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->d(Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
