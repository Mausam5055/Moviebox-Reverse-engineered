.class Lcom/mbridge/msdk/video/dynview/wrapper/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/video/dynview/util/time/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;ILjava/util/Map;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/mbridge/msdk/video/dynview/wrapper/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/wrapper/a;Landroid/widget/TextView;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->e:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p5, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    sget v1, Lcom/mbridge/msdk/foundation/same/report/metrics/a;->c:I

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setShowType(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->e:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;Ljava/util/Map;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->e:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;I)I

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->e:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->d(Lcom/mbridge/msdk/video/dynview/wrapper/a;)I

    move-result p1

    int-to-long p1, p1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/mbridge/msdk/video/dynview/util/a;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->e:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->c(Lcom/mbridge/msdk/video/dynview/wrapper/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;J)J

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->b:Ljava/lang/String;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string p2, "type"

    const-string v0, "choseFromTwoHeartbeat"

    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "xtSecond"

    const-string v0, "countTimeForReport"

    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "autoPlayCountDownTime"

    const-string v0, "mLeftOverCountTime"

    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v0, "2000103"

    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/video/module/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method
