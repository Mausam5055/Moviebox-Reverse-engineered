.class Lcom/mbridge/msdk/video/dynview/wrapper/a$k;
.super Lcom/mbridge/msdk/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;ILjava/util/Map;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/mbridge/msdk/video/dynview/wrapper/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/wrapper/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$k;->d:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$k;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$k;->d:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->f(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$k;->d:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->b(Lcom/mbridge/msdk/video/dynview/wrapper/a;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$k;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    sget v0, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->d:I

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setShowType(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$k;->d:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$k;->c:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
