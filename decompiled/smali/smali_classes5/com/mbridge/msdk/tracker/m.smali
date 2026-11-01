.class public final Lcom/mbridge/msdk/tracker/m;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/tracker/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/tracker/m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/tracker/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/tracker/k;

    invoke-direct {v0, p1, p0}, Lcom/mbridge/msdk/tracker/k;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;)V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/tracker/k;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/mbridge/msdk/tracker/k;->a(Lcom/mbridge/msdk/tracker/x;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/tracker/m;)Lcom/mbridge/msdk/tracker/k;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/tracker/x;)Lcom/mbridge/msdk/tracker/m;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/mbridge/msdk/tracker/m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/tracker/m;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/mbridge/msdk/tracker/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/tracker/m;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/tracker/x;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private b(Lcom/mbridge/msdk/tracker/e;)Z
    .locals 1

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/k;->a(Lcom/mbridge/msdk/tracker/e;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static b()[Lcom/mbridge/msdk/tracker/m;
    .locals 4

    sget-object v0, Lcom/mbridge/msdk/tracker/m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mbridge/msdk/tracker/m;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/tracker/m;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "TrackManager"

    const-string v3, "getAllTrackManager error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/mbridge/msdk/tracker/m$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/tracker/m$a;-><init>(Lcom/mbridge/msdk/tracker/m;)V

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v1}, Lcom/mbridge/msdk/tracker/k;->h()Lcom/mbridge/msdk/tracker/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/j;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TrackManager"

    const-string v2, "flush error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/k;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/tracker/e;)Z
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/m;->b(Lcom/mbridge/msdk/tracker/e;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/tracker/e;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/tracker/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/tracker/m;->a(Lcom/mbridge/msdk/tracker/e;)Z

    move-result p1

    return p1
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->o()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/mbridge/msdk/tracker/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/tracker/m;->d(Lcom/mbridge/msdk/tracker/e;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/mbridge/msdk/tracker/e;)V
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean p1, Lcom/mbridge/msdk/tracker/a;->a:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/m;->b(Lcom/mbridge/msdk/tracker/e;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/e;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "trackEvent error"

    const-string v2, "TrackManager"

    if-eqz v0, :cond_3

    const-string v3, "ts"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    new-instance v3, Lcom/mbridge/msdk/tracker/m$b;

    invoke-direct {v3, p0, p1, v0}, Lcom/mbridge/msdk/tracker/m$b;-><init>(Lcom/mbridge/msdk/tracker/m;Lcom/mbridge/msdk/tracker/e;Lorg/json/JSONObject;)V

    :try_start_1
    iget-object p1, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/k;->h()Lcom/mbridge/msdk/tracker/j;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/j;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_4

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public e()[J
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->g()Lcom/mbridge/msdk/tracker/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/tracker/l;->a()[J

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->w()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/m;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "TrackManager"

    const-string v1, "MBridgeTrackManager is already running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/m;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m;->a:Lcom/mbridge/msdk/tracker/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
