.class Lcom/mbridge/msdk/mbbanner/common/manager/b$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:Lcom/mbridge/msdk/mbbanner/common/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/b;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;->c:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;->c:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Lcom/mbridge/msdk/mbbanner/common/manager/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;->c:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Lcom/mbridge/msdk/mbbanner/common/manager/b;Z)Z

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;->c:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v4, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_0
    return-void
.end method
