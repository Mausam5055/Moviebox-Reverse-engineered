.class public Lcom/mbridge/msdk/foundation/db/middle/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/db/middle/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/foundation/same/buffer/a;

.field private b:Lcom/mbridge/msdk/foundation/db/k;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/foundation/same/buffer/a;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/buffer/a;-><init>(I)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/db/middle/b;->a:Lcom/mbridge/msdk/foundation/same/buffer/a;

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/k;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/k;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/db/middle/b;->b:Lcom/mbridge/msdk/foundation/db/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/db/k;->a()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/foundation/db/middle/b;->a(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/db/middle/b$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/db/middle/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/db/middle/b;)Lcom/mbridge/msdk/foundation/db/k;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/db/middle/b;->b:Lcom/mbridge/msdk/foundation/db/k;

    return-object p0
.end method

.method public static a()Lcom/mbridge/msdk/foundation/db/middle/b;
    .locals 1

    invoke-static {}, Lcom/mbridge/msdk/foundation/db/middle/b$b;->a()Lcom/mbridge/msdk/foundation/db/middle/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/db/middle/b;)Lcom/mbridge/msdk/foundation/same/buffer/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/db/middle/b;->a:Lcom/mbridge/msdk/foundation/same/buffer/a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/middle/b;->a:Lcom/mbridge/msdk/foundation/same/buffer/a;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/buffer/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/db/middle/b;->b:Lcom/mbridge/msdk/foundation/db/k;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/db/k;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/db/middle/b;->a:Lcom/mbridge/msdk/foundation/same/buffer/a;

    invoke-virtual {v1, p1, v0}, Lcom/mbridge/msdk/foundation/same/buffer/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_2
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/foundation/same/buffer/a;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/foundation/same/buffer/a;-><init>(I)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/db/middle/b;->a:Lcom/mbridge/msdk/foundation/same/buffer/a;

    invoke-virtual {v4, v2, v3}, Lcom/mbridge/msdk/foundation/same/buffer/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/buffer/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/mbridge/msdk/foundation/db/middle/b$a;

    invoke-direct {v0, p0, p2, v1}, Lcom/mbridge/msdk/foundation/db/middle/b$a;-><init>(Lcom/mbridge/msdk/foundation/db/middle/b;ZLcom/mbridge/msdk/foundation/same/buffer/a;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public b()Lorg/json/JSONArray;
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/db/middle/b;->a:Lcom/mbridge/msdk/foundation/same/buffer/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/buffer/a;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
