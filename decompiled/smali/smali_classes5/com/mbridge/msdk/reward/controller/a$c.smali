.class Lcom/mbridge/msdk/reward/controller/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/reward/adapter/b$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/reward/adapter/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

.field final synthetic b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lcom/mbridge/msdk/reward/controller/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/controller/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/concurrent/CopyOnWriteArrayList;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/controller/a$c;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p3, p0, Lcom/mbridge/msdk/reward/controller/a$c;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean p4, p0, Lcom/mbridge/msdk/reward/controller/a$c;->d:Z

    iput p5, p0, Lcom/mbridge/msdk/reward/controller/a$c;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 1

    if-nez p3, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/error/b;->e()Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/MBridgeIds;->getUnitId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p2}, Lcom/mbridge/msdk/reward/controller/a;->i(Lcom/mbridge/msdk/reward/controller/a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Ljava/lang/String;Ljava/util/List;)V

    if-eqz p3, :cond_1

    const-string p1, "errorCode: 3202 errorMessage: temp resource download failed"

    invoke-virtual {p3, p1}, Lcom/mbridge/msdk/foundation/error/b;->c(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-nez p1, :cond_2

    new-instance p1, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    iget-object p2, p0, Lcom/mbridge/msdk/reward/controller/a$c;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->d:Z

    const/4 p2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->d(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/controller/a$h;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    iget-boolean p1, p1, Lcom/mbridge/msdk/reward/controller/a;->X:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    iput-boolean p2, p1, Lcom/mbridge/msdk/reward/controller/a;->X:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->d(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/controller/a$h;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/controller/a$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-static {p1, p3, p2}, Lcom/mbridge/msdk/reward/controller/a$h;->a(Lcom/mbridge/msdk/reward/controller/a$h;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->e:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    iget-boolean p1, p1, Lcom/mbridge/msdk/reward/controller/a;->X:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->d(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/controller/a$h;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    iput-boolean p2, p1, Lcom/mbridge/msdk/reward/controller/a;->X:Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$c;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->d(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/controller/a$h;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/controller/a$c;->a:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-static {p1, p3, p2}, Lcom/mbridge/msdk/reward/controller/a$h;->a(Lcom/mbridge/msdk/reward/controller/a$h;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
