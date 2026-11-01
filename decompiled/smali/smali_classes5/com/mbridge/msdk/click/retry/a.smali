.class public Lcom/mbridge/msdk/click/retry/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/click/retry/a$c;,
        Lcom/mbridge/msdk/click/retry/a$b;
    }
.end annotation


# static fields
.field public static e:Ljava/lang/String; = "mtg_retry_report=1"

.field public static f:I = 0x2710

.field public static g:I = 0x3

.field public static h:I = 0x32

.field public static i:I = 0x927c0

.field private static j:I = 0x0

.field private static k:I = 0x0

.field public static l:I = 0x0

.field public static m:I = 0x1

.field public static n:I = 0x2

.field public static o:I = 0x3

.field public static p:I = 0x4

.field public static q:I = 0x5


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/click/retry/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mbridge/msdk/click/retry/c;

.field private c:Landroid/content/BroadcastReceiver;

.field private final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/mbridge/msdk/click/retry/c;

    sget v1, Lcom/mbridge/msdk/click/retry/a;->h:I

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/click/retry/c;-><init>(I)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->b:Lcom/mbridge/msdk/click/retry/c;

    new-instance v0, Lcom/mbridge/msdk/click/retry/a$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/click/retry/a$c;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->d:Landroid/os/Handler;

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->b(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->d0()I

    move-result v1

    sput v1, Lcom/mbridge/msdk/click/retry/a;->g:I

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->f0()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/mbridge/msdk/click/retry/a;->f:I

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->g0()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/mbridge/msdk/click/retry/a;->i:I

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->c0()I

    move-result v1

    sput v1, Lcom/mbridge/msdk/click/retry/a;->j:I

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->e0()I

    move-result v0

    sput v0, Lcom/mbridge/msdk/click/retry/a;->k:I

    invoke-direct {p0}, Lcom/mbridge/msdk/click/retry/a;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/click/retry/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/retry/a;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/click/retry/a$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/click/retry/a$a;-><init>(Lcom/mbridge/msdk/click/retry/a;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->c:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/click/retry/a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/f;->a()Lcom/mbridge/msdk/foundation/same/report/f;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mbridge/msdk/foundation/same/report/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/retry/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/retry/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/retry/a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/click/retry/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/click/retry/b;)V
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/click/retry/b;->a()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    move-object v5, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v1, ""

    move-object v5, v1

    move-object v6, v5

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/retry/b;->b()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/retry/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/retry/b;->h()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/retry/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/mbridge/msdk/click/retry/a;->d:Landroid/os/Handler;

    sget v1, Lcom/mbridge/msdk/click/retry/a;->f:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->b:Lcom/mbridge/msdk/click/retry/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/click/retry/c;->a(Ljava/lang/String;)Lcom/mbridge/msdk/click/retry/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/retry/a;->b:Lcom/mbridge/msdk/click/retry/c;

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/click/retry/c;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/retry/b;->c()J

    move-result-wide v3

    sget v5, Lcom/mbridge/msdk/click/retry/a;->i:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/click/retry/b;->a(I)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/retry/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/z0;->c(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/mbridge/msdk/click/retry/a;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/mbridge/msdk/click/retry/a;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/click/retry/b;->a()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/retry/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/retry/b;->i()Z

    move-result v5

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/retry/b;->j()Z

    move-result v6

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/retry/b;->h()I

    move-result v7

    invoke-static/range {v1 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_2

    :cond_1
    sget p1, Lcom/mbridge/msdk/click/retry/b;->l:I

    if-eq p2, p1, :cond_3

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/click/retry/a;->a(Lcom/mbridge/msdk/click/retry/b;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/click/retry/b;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/retry/b;->c()J

    move-result-wide v3

    sget v5, Lcom/mbridge/msdk/click/retry/a;->i:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/retry/b;->e()I

    move-result v0

    sget v1, Lcom/mbridge/msdk/click/retry/a;->g:I

    if-ge v0, v1, :cond_3

    sget v0, Lcom/mbridge/msdk/click/retry/b;->l:I

    if-eq p2, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/click/retry/a;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/click/retry/b;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->b:Lcom/mbridge/msdk/click/retry/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/click/retry/c;

    sget v1, Lcom/mbridge/msdk/click/retry/a;->h:I

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/click/retry/c;-><init>(I)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->b:Lcom/mbridge/msdk/click/retry/c;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->b:Lcom/mbridge/msdk/click/retry/c;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/click/retry/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/click/retry/b;)Z

    return-void
.end method

.method private a(I)Z
    .locals 1

    sget v0, Lcom/mbridge/msdk/click/retry/a;->p:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/mbridge/msdk/click/retry/a;->o:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/click/retry/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/click/retry/a;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static b()Lcom/mbridge/msdk/click/retry/a;
    .locals 1

    invoke-static {}, Lcom/mbridge/msdk/click/retry/a$b;->a()Lcom/mbridge/msdk/click/retry/a;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Z
    .locals 1

    sget v0, Lcom/mbridge/msdk/click/retry/a;->m:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/mbridge/msdk/click/retry/a;->n:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/a;->b:Lcom/mbridge/msdk/click/retry/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/retry/c;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/mbridge/msdk/click/retry/b;->l:I

    invoke-direct {p0, v1, v2}, Lcom/mbridge/msdk/click/retry/a;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/click/retry/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/click/retry/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/mbridge/msdk/click/retry/a;->q:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;ZZI)V
    .locals 4

    invoke-direct {p0, p7}, Lcom/mbridge/msdk/click/retry/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mbridge/msdk/click/retry/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mbridge/msdk/click/retry/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/retry/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/click/retry/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/click/retry/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/click/retry/b;

    if-nez v1, :cond_2

    new-instance v1, Lcom/mbridge/msdk/click/retry/b;

    invoke-direct {v1, p1, p2}, Lcom/mbridge/msdk/click/retry/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Lcom/mbridge/msdk/click/retry/b;->b(I)V

    invoke-virtual {v1, p5}, Lcom/mbridge/msdk/click/retry/b;->a(Z)V

    invoke-virtual {v1, p6}, Lcom/mbridge/msdk/click/retry/b;->b(Z)V

    invoke-virtual {v1, p3}, Lcom/mbridge/msdk/click/retry/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v1, p4}, Lcom/mbridge/msdk/click/retry/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/mbridge/msdk/click/retry/b;->d()I

    move-result p1

    sget p3, Lcom/mbridge/msdk/click/retry/b;->l:I

    if-eq p1, p3, :cond_3

    invoke-virtual {v1, p2}, Lcom/mbridge/msdk/click/retry/b;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-direct {p0, p7}, Lcom/mbridge/msdk/click/retry/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/mbridge/msdk/click/retry/a;->j:I

    if-nez p1, :cond_6

    :cond_4
    invoke-direct {p0, p7}, Lcom/mbridge/msdk/click/retry/a;->b(I)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/mbridge/msdk/click/retry/a;->k:I

    if-nez p1, :cond_6

    :cond_5
    sget p1, Lcom/mbridge/msdk/click/retry/a;->q:I

    if-ne p7, p1, :cond_9

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1}, Lcom/mbridge/msdk/click/retry/b;->c()J

    move-result-wide p3

    sget p5, Lcom/mbridge/msdk/click/retry/a;->i:I

    int-to-long p5, p5

    add-long/2addr p3, p5

    cmp-long p1, p1, p3

    if-gez p1, :cond_8

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/click/retry/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/click/retry/b;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/click/retry/b;->d()I

    move-result p1

    sget p2, Lcom/mbridge/msdk/click/retry/b;->k:I

    if-ne p1, p2, :cond_a

    invoke-virtual {v1}, Lcom/mbridge/msdk/click/retry/b;->e()I

    move-result p1

    sget p2, Lcom/mbridge/msdk/click/retry/a;->g:I

    if-gt p1, p2, :cond_7

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/click/retry/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/click/retry/a;->a(Lcom/mbridge/msdk/click/retry/b;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/mbridge/msdk/click/retry/b;->d()I

    move-result p1

    sget p2, Lcom/mbridge/msdk/click/retry/b;->k:I

    if-ne p1, p2, :cond_a

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/click/retry/a;->a(Lcom/mbridge/msdk/click/retry/b;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/click/retry/a;->a(Lcom/mbridge/msdk/click/retry/b;)V

    :cond_a
    :goto_1
    return-void
.end method
