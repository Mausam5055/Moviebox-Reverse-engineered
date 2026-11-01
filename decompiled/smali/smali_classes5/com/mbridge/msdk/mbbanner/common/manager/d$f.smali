.class Lcom/mbridge/msdk/mbbanner/common/manager/d$f;
.super Lcom/mbridge/msdk/foundation/same/task/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/common/manager/d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$f;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 0

    return-void
.end method

.method public pauseTask(Z)V
    .locals 0

    return-void
.end method

.method public runTask()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6dad

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$f;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    iget-object v1, v1, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$f;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {v1, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/mbbanner/common/manager/d;Lcom/mbridge/msdk/foundation/error/b;)V

    return-void
.end method
