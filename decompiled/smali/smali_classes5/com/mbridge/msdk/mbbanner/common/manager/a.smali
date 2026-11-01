.class public Lcom/mbridge/msdk/mbbanner/common/manager/a;
.super Ljava/lang/Object;


# static fields
.field private static final g:Ljava/lang/String; = "a"

.field private static volatile h:Lcom/mbridge/msdk/mbbanner/common/manager/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mbridge/msdk/mbbanner/common/util/a;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/mbbanner/common/data/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/mbridge/msdk/mbbanner/common/util/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/mbbanner/common/util/a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b:Lcom/mbridge/msdk/mbbanner/common/util/a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/mbridge/msdk/mbbanner/common/data/b;
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/mbbanner/common/data/b;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->y()I

    move-result v0

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/data/b;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/mbridge/msdk/mbbanner/common/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static b()Lcom/mbridge/msdk/mbbanner/common/manager/a;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->h:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/mbbanner/common/manager/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/mbbanner/common/manager/a;->h:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/mbbanner/common/manager/a;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/mbbanner/common/manager/a;->h:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->h:Lcom/mbridge/msdk/mbbanner/common/manager/a;

    return-object v0
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/mbbanner/common/manager/a;)Lcom/mbridge/msdk/mbbanner/common/util/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b:Lcom/mbridge/msdk/mbbanner/common/util/a;

    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;)V
    .locals 7

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq p1, v5, :cond_4

    if-eq p1, v6, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eq v0, v4, :cond_5

    if-ne v0, v6, :cond_a

    :cond_5
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;)V

    goto :goto_1

    :cond_6
    if-ne v0, v3, :cond_a

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    if-eqz p2, :cond_7

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    if-eqz p2, :cond_9

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_9
    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;)V
    .locals 9

    new-instance v3, Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-direct {v3, p1, p2}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->d()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/mbridge/msdk/mbbanner/common/data/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    new-instance v8, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/mbbanner/common/manager/a$b;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/a;Ljava/lang/String;Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/mbbanner/common/listener/b;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;)V

    if-eqz v7, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v7, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->d()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v7, v8, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    :goto_2
    sget-object p1, Lcom/mbridge/msdk/mbbanner/common/manager/a;->g:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "doUnitRotation: Illegal banner request parameters! && unitId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;)V
    .locals 6

    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-direct {v0, p1, p2}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "1"

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->f(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "2"

    :goto_1
    invoke-virtual {v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->e(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(I)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->c(I)V

    const-string v3, "2000123"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a:Landroid/content/Context;

    if-nez v3, :cond_3

    new-instance p1, Lcom/mbridge/msdk/foundation/error/b;

    const p2, 0xd6d99

    invoke-direct {p1, p2}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b:Lcom/mbridge/msdk/mbbanner/common/util/a;

    invoke-virtual {p2, p4, p1}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    return-void

    :cond_3
    if-nez p4, :cond_4

    new-instance p1, Lcom/mbridge/msdk/foundation/error/b;

    const p2, 0xd6d81

    invoke-direct {p1, p2}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b:Lcom/mbridge/msdk/mbbanner/common/util/a;

    invoke-virtual {p2, p4, p1}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->d:Ljava/util/Map;

    if-eqz v3, :cond_5

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->d:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance p1, Lcom/mbridge/msdk/foundation/error/b;

    const p2, 0xd6d90

    const-string p3, "Current unit is loading!"

    invoke-direct {p1, p2, p3}, Lcom/mbridge/msdk/foundation/error/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b:Lcom/mbridge/msdk/mbbanner/common/util/a;

    invoke-virtual {p2, p4, p1}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->d:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/mbbanner/common/data/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbbanner/common/data/b;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;

    iget-object v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->b:Lcom/mbridge/msdk/mbbanner/common/util/a;

    invoke-direct {v1, v3, v0, p4, v5}, Lcom/mbridge/msdk/mbbanner/common/manager/b;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/mbbanner/common/data/b;Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/mbbanner/common/util/a;)V

    new-instance p4, Lcom/mbridge/msdk/mbbanner/common/manager/a$a;

    invoke-direct {p4, p0, p3}, Lcom/mbridge/msdk/mbbanner/common/manager/a$a;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/a;Lcom/mbridge/msdk/mbbanner/common/data/a;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/d;)V

    const-string p1, "2000125"

    invoke-static {p1, v2, v4}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/a;->f:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_5
    return-void
.end method
