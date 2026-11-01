.class public final Lcom/apm/insight/k/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/apm/insight/k/d;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private volatile b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apm/insight/k/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/apm/insight/k/d;
    .locals 2

    sget-object v0, Lcom/apm/insight/k/d;->a:Lcom/apm/insight/k/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apm/insight/k/d;

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apm/insight/k/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apm/insight/k/d;->a:Lcom/apm/insight/k/d;

    :cond_0
    sget-object v0, Lcom/apm/insight/k/d;->a:Lcom/apm/insight/k/d;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/apm/insight/k/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/apm/insight/runtime/n;->a(J)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/apm/insight/h/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/io/File;

    aput-object p1, v4, v0

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    aput-object v3, v4, p1

    invoke-static {v1, p0, v4}, Lcom/apm/insight/k/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;)Lcom/apm/insight/l/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apm/insight/l/f;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/apm/insight/a;->b(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;JZ)V
    .locals 8

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/apm/insight/k/e;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apm/insight/k/d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/apm/insight/l/j;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    const/4 v4, 0x0

    invoke-static {p2, p3, v3, v4, v4}, Lcom/apm/insight/e;->a(JLcom/apm/insight/CrashType;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/apm/insight/k/e;->b()Z

    move-result v3

    invoke-static {v1, v2, v0, p1, v3}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    if-eqz p4, :cond_5

    invoke-static {}, Lcom/apm/insight/Npth;->isStopUpload()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p4, "upload_scene"

    const-string v2, "direct"

    invoke-virtual {p1, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "crash_uuid"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/apm/insight/runtime/a;->h()Z

    move-result p4

    const/4 v2, 0x2

    if-eqz p4, :cond_3

    const-string p4, "anr_trace"

    invoke-static {p2, p3, p4}, Lcom/apm/insight/runtime/n;->a(JLjava/lang/String;)Ljava/util/HashMap;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/io/File;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lcom/apm/insight/l/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/apm/insight/k/d;->b:Landroid/content/Context;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apm/insight/runtime/n$a;

    iget-object v5, v5, Lcom/apm/insight/runtime/n$a;->a:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/apm/insight/l/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-array v3, v2, [Ljava/io/File;

    :cond_4
    array-length p4, v3

    add-int/lit8 p4, p4, -0x1

    iget-object v4, p0, Lcom/apm/insight/k/d;->b:Landroid/content/Context;

    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apm/insight/l/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    aput-object v4, v3, p4

    array-length p4, v3

    sub-int/2addr p4, v2

    invoke-static {p2, p3}, Lcom/apm/insight/runtime/n;->a(J)Ljava/io/File;

    move-result-object p2

    aput-object p2, v3, p4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/apm/insight/k/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;)Lcom/apm/insight/l/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apm/insight/l/f;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/l/j;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_1
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/apm/insight/k/e;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/apm/insight/k/d;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/apm/insight/l/j;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lcom/apm/insight/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apm/insight/l/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/apm/insight/k/e;->a()Z

    move-result v4

    invoke-static {v2, v3, v1, p1, v4}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    const-string v3, "upload_scene"

    const-string v4, "direct"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/apm/insight/k/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/l/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apm/insight/l/f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    return v0

    :goto_0
    invoke-static {p1}, Lcom/apm/insight/a;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/apm/insight/k/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apm/insight/k/d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/apm/insight/l/j;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/apm/insight/l/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/apm/insight/k/e;->b()Z

    move-result v3

    invoke-static {v1, v2, v0, p1, v3}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/apm/insight/k/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/l/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apm/insight/l/f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-static {p1}, Lcom/apm/insight/a;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/apm/insight/runtime/m;->a()Lcom/apm/insight/runtime/p;

    move-result-object v0

    new-instance v1, Lcom/apm/insight/k/d$1;

    invoke-direct {v1, p0, p1}, Lcom/apm/insight/k/d$1;-><init>(Lcom/apm/insight/k/d;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
