.class Lcom/mbridge/msdk/mbnative/controller/NativeController$d;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;Lcom/mbridge/msdk/mbnative/controller/NativeController$o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/mbridge/msdk/mbnative/controller/NativeController;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;JLcom/mbridge/msdk/mbnative/controller/NativeController$o;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    iput-wide p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->a:J

    iput-object p4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    iput-object p5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/setting/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->q()I

    move-result v1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    instance-of v4, v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v2

    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v4}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/setting/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/setting/c;->C()I

    move-result v3

    invoke-static {v2, v3}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$o;

    invoke-interface {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$o;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;->d:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    :cond_6
    :goto_1
    return-void
.end method
