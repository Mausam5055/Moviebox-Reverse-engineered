.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/q3;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:J

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->a:Lcom/cloud/hisavana/sdk/q3;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->b:Ljava/util/List;

    iput-wide p3, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->c:J

    iput-boolean p5, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->a:Lcom/cloud/hisavana/sdk/q3;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->b:Ljava/util/List;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->c:J

    iget-boolean v4, p0, Lcom/cloud/hisavana/sdk/common/athena/p;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->b(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;JZ)V

    return-void
.end method
