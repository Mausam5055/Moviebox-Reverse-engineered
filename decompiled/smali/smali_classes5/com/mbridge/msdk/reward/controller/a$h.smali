.class public final Lcom/mbridge/msdk/reward/controller/a$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Z

.field final synthetic f:Lcom/mbridge/msdk/reward/controller/a;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/reward/controller/a;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->a:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/mbridge/msdk/reward/controller/a$h;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/reward/controller/a;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;Landroid/os/Handler;Ljava/lang/String;Lcom/mbridge/msdk/reward/controller/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/reward/controller/a$h;-><init>(Lcom/mbridge/msdk/reward/controller/a;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private a()I
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/controller/a$h;)I
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/reward/controller/a$h;->a()I

    move-result p0

    return p0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/controller/a$h;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/controller/a$h;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/controller/a$h;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/reward/controller/a$h;->b(Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/controller/a$h;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/reward/controller/a$h;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/controller/a$h;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/reward/controller/a$h;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/reward/controller/a$h;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->k(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Z)Z

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const-string v2, "2000127"

    invoke-static {v1, v2, p3, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "unit_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_cached_campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object v2

    const-string v4, "metrics_data_lrid"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v0

    const-string v1, "l_s_i_l_v_s"

    invoke-virtual {v0, v1, v3}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/reward/controller/a$h;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    :cond_3
    return-void
.end method

.method private b(Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/mbridge/msdk/reward/controller/a;->d(Lcom/mbridge/msdk/reward/controller/a;Z)Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/error/b;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    const-string v1, "resource load timeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1, v3}, Lcom/mbridge/msdk/reward/controller/a;->c(Lcom/mbridge/msdk/reward/controller/a;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->s(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->q(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->n(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x10

    iput p1, v1, Landroid/os/Message;->what:I

    if-eqz p2, :cond_3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object v2

    const-string v4, "metrics_data_lrid"

    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    if-nez p2, :cond_5

    new-instance p2, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    :cond_5
    invoke-virtual {p2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const-string v1, "2000047"

    invoke-static {p1, v1, p2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/controller/a$h;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/reward/controller/a$h;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/controller/a$h;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/reward/controller/a$h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const-string v2, "2000047"

    invoke-static {v1, v2, p2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x12

    iput p1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object p2

    const-string v1, "metrics_data_lrid"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->k(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Z)Z

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const-string v3, "2000127"

    invoke-static {v1, v3, p3, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "unit_id"

    invoke-virtual {v1, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_cached_campaign"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "metrics_data_lrid"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v0

    const-string v1, "l_s_i_l_v_s"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/reward/controller/a$h;->d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 11

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/error/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->o(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/adapter/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->l(Lcom/mbridge/msdk/reward/controller/a;)I

    move-result v1

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->o(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/adapter/c;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    iget-object v4, v4, Lcom/mbridge/msdk/reward/controller/a;->j:Lcom/mbridge/msdk/reward/controller/a$g;

    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/a;)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->o(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/adapter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/adapter/c;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v4}, Lcom/mbridge/msdk/reward/controller/a;->p(Lcom/mbridge/msdk/reward/controller/a;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v4}, Lcom/mbridge/msdk/reward/controller/a;->p(Lcom/mbridge/msdk/reward/controller/a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v4}, Lcom/mbridge/msdk/reward/controller/a;->p(Lcom/mbridge/msdk/reward/controller/a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_4

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    :cond_4
    move-object v6, v4

    goto :goto_4

    :cond_5
    :goto_3
    move-object v6, v2

    :goto_4
    iget-object v4, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v4}, Lcom/mbridge/msdk/reward/controller/a;->x(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->o(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/adapter/c;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v9, 0x2

    move-object v8, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLcom/mbridge/msdk/foundation/error/b;ILcom/mbridge/msdk/foundation/same/report/metrics/c;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->o(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/adapter/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/a;)V

    :cond_9
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz p1, :cond_a

    const v1, 0xf462a

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    :cond_b
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_11

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1, v3}, Lcom/mbridge/msdk/reward/controller/a;->c(Lcom/mbridge/msdk/reward/controller/a;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->r(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "resource load timeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1, v3}, Lcom/mbridge/msdk/reward/controller/a;->d(Lcom/mbridge/msdk/reward/controller/a;Z)Z

    :cond_d
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->n(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_e
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->q(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->s(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->n(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->l(Lcom/mbridge/msdk/reward/controller/a;)I

    move-result p1

    if-le p1, v3, :cond_f

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->m(Lcom/mbridge/msdk/reward/controller/a;)I

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->o(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/reward/adapter/c;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    iget-object p2, p2, Lcom/mbridge/msdk/reward/controller/a;->j:Lcom/mbridge/msdk/reward/controller/a$g;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/a;)V

    return-void

    :cond_f
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const-string v1, "2000047"

    invoke-static {p1, v1, p2, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    if-eqz v2, :cond_11

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x10

    iput v0, p1, Landroid/os/Message;->what:I

    if-eqz p2, :cond_10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object p2

    const-string v1, "metrics_data_lrid"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_10
    iget-object p2, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->e:Z

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const v1, 0xf462a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->m(Lcom/mbridge/msdk/reward/controller/a;)I

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->n(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/reward/controller/a;->b(Lcom/mbridge/msdk/reward/controller/a;Z)Z

    if-nez p3, :cond_2

    new-instance p3, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->p(Lcom/mbridge/msdk/reward/controller/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const-string v2, "2000048"

    invoke-static {v1, v2, p3, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "unit_id"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object p1

    const-string p3, "metrics_data_lrid"

    invoke-virtual {v1, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const v1, 0xf462a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$h;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->n(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1, v3}, Lcom/mbridge/msdk/reward/controller/a;->b(Lcom/mbridge/msdk/reward/controller/a;Z)Z

    if-nez p3, :cond_3

    new-instance p3, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    :cond_3
    invoke-virtual {p3, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->p(Lcom/mbridge/msdk/reward/controller/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    const-string v3, "2000048"

    invoke-static {v1, v3, p3, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "unit_id"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object p1

    const-string p3, "metrics_data_lrid"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->f:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {p1}, Lcom/mbridge/msdk/reward/controller/a;->q(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_5
    return-void
.end method
