.class Lcom/mbridge/msdk/reward/adapter/c$c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/reward/adapter/b$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/c$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/reward/adapter/c$c$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/c$c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/videocommon/a$a;Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 2

    if-eqz p5, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "preload template failed is tpl :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p3, p3, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-boolean p3, p3, Lcom/mbridge/msdk/reward/adapter/c$c;->c:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "his_reason"

    invoke-virtual {p5, p3, p1}, Lcom/mbridge/msdk/foundation/error/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    const-string p3, "RewardMVVideoAdapter"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "template download fail but hit ignoreCheckRule"

    invoke-static {p3, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p4, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p4, p4, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->c:Ljava/lang/String;

    invoke-static {p4}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object v1, v1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object v1, v1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v1

    invoke-static {p4, p1, v0, v1, p2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean p1, p1, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p2, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-nez p2, :cond_3

    new-instance p2, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    iput-object p2, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p2, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {p1, p5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object p2

    iget-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p4, p4, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p4, p4, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {p1, p2, p5, p4}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    const-string p1, "Campaign \u4e0b\u8f7d\u5931\u8d25\uff1a \u975e\u5927\u6a21\u677f\uff0c\u64ad\u653e\u6a21\u677f\u9884\u52a0\u8f7d\u5931\u8d25 onVideoLoadFail"

    invoke-static {p3, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/videocommon/a$a;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p2, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-object p5, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-boolean p6, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->c:Z

    iget p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->e:I

    invoke-virtual {p2, p5, p6, p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;ZI)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p5, p4, Lcom/mbridge/msdk/reward/adapter/c$c$a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p4, p4, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p4, p4, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p4}, Lcom/mbridge/msdk/reward/adapter/c;->t(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object p4

    iget-object p6, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p6, p6, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p6, p6, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p6}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result p6

    invoke-static {p1, p3, p5, p4, p6}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean p1, p1, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p2, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p3, p2, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {p1, p3, p2}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object p5

    iget-object p6, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p6, p6, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p6, p6, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p6}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result p6

    invoke-static {p1, p3, p5, p6, p4}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean p1, p1, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p1, p1, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    const p1, 0xd6d8f

    const-string p2, "errorCode: 3502 errorMessage: temp preload success but isReady false"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p3, p2, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-nez p3, :cond_4

    new-instance p3, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    iput-object p3, p2, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    :cond_4
    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p3, p2, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/adapter/c$c;->f:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object p2

    iget-object p3, p0, Lcom/mbridge/msdk/reward/adapter/c$c$a$a;->a:Lcom/mbridge/msdk/reward/adapter/c$c$a;

    iget-object p3, p3, Lcom/mbridge/msdk/reward/adapter/c$c$a;->f:Lcom/mbridge/msdk/reward/adapter/c$c;

    iget-object p4, p3, Lcom/mbridge/msdk/reward/adapter/c$c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p3, Lcom/mbridge/msdk/reward/adapter/c$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {p2, p4, p1, p3}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    const-string p1, "RewardMVVideoAdapter"

    const-string p2, "Campaign \u4e0b\u8f7d\u6210\u529f\uff1a \u975e\u5927\u6a21\u677f\uff0c\u64ad\u653e\u6a21\u677f\u9884\u52a0\u8f7d\u6210\u529f,isReay false onVideoLoadFail"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
