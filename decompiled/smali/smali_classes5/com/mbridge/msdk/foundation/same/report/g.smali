.class public Lcom/mbridge/msdk/foundation/same/report/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/report/g;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/mbridge/msdk/foundation/entity/m;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "2000063"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/foundation/entity/m;->u(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->c(I)V

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/report/o;->e(Lcom/mbridge/msdk/foundation/entity/m;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11f

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Lcom/mbridge/msdk/foundation/entity/m;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/report/o;->f(Lcom/mbridge/msdk/foundation/entity/m;)V

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v10, Lcom/mbridge/msdk/foundation/entity/m;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaRst()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v4, "0"

    const-string v5, ""

    move-object v1, v10

    move-object v2, p0

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lcom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result p0

    invoke-virtual {v10, p0}, Lcom/mbridge/msdk/foundation/entity/m;->a(I)V

    invoke-virtual {v10, p4}, Lcom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    const/4 p0, 0x7

    invoke-virtual {v10, p0}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v10, p0}, Lcom/mbridge/msdk/foundation/entity/m;->c(I)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/mbridge/msdk/foundation/entity/m;->N:I

    goto :goto_2

    :cond_2
    sget p0, Lcom/mbridge/msdk/foundation/entity/m;->O:I

    :goto_2
    invoke-virtual {v10, p0}, Lcom/mbridge/msdk/foundation/entity/m;->b(I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p0

    invoke-virtual {p0, v10, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Lcom/mbridge/msdk/foundation/entity/m;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public static b(Lcom/mbridge/msdk/foundation/entity/m;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/report/o;->c(Lcom/mbridge/msdk/foundation/entity/m;)V

    return-void
.end method

.method public static b(Lcom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p2, "2000059"

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->u(Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->c(I)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/report/o;->g(Lcom/mbridge/msdk/foundation/entity/m;)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/mbridge/msdk/foundation/entity/m;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/report/o;->d(Lcom/mbridge/msdk/foundation/entity/m;)V

    return-void
.end method

.method public static d(Lcom/mbridge/msdk/foundation/entity/m;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "2000060"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/foundation/entity/m;->u(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->c(I)V

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/report/o;->h(Lcom/mbridge/msdk/foundation/entity/m;)V

    :cond_0
    return-void
.end method
