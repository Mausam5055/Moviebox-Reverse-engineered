.class public abstract Lcom/mbridge/msdk/mbnative/controller/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IJILjava/lang/String;)V
.end method

.method public declared-synchronized a(JIZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/mbnative/controller/a;->a(IJILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/mbridge/msdk/click/a;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Lcom/mbridge/msdk/widget/dialog/b;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
