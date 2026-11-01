.class Lcom/mbridge/msdk/reward/controller/a$i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/controller/a$i;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/reward/controller/a$i;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/controller/a$i;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$i$a;->a:Lcom/mbridge/msdk/reward/controller/a$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$i$a;->a:Lcom/mbridge/msdk/reward/controller/a$i;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/controller/a$i;->a(Lcom/mbridge/msdk/reward/controller/a$i;)Lcom/mbridge/msdk/reward/controller/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$i$a;->a:Lcom/mbridge/msdk/reward/controller/a$i;

    iget-object v0, v0, Lcom/mbridge/msdk/reward/controller/a$i;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/controller/a;->f(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11f

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x5e

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$i$a;->a:Lcom/mbridge/msdk/reward/controller/a$i;

    iget-object v0, v0, Lcom/mbridge/msdk/reward/controller/a$i;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/controller/a;->b(Lcom/mbridge/msdk/reward/controller/a;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$i$a;->a:Lcom/mbridge/msdk/reward/controller/a$i;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a$i;->a(Lcom/mbridge/msdk/reward/controller/a$i;)Lcom/mbridge/msdk/reward/controller/a;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(ZLcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_1
    return-void
.end method
