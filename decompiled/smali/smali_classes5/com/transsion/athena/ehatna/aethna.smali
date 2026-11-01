.class public Lcom/transsion/athena/ehatna/aethna;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/transsion/athena/ehatna/aethna;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/transsion/athena/ehatna/athena;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private volatile f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    return-void
.end method

.method public static b()Lcom/transsion/athena/ehatna/aethna;
    .locals 2

    sget-object v0, Lcom/transsion/athena/ehatna/aethna;->a:Lcom/transsion/athena/ehatna/aethna;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/athena/ehatna/aethna;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/athena/ehatna/aethna;->a:Lcom/transsion/athena/ehatna/aethna;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/athena/ehatna/aethna;

    invoke-direct {v1}, Lcom/transsion/athena/ehatna/aethna;-><init>()V

    sput-object v1, Lcom/transsion/athena/ehatna/aethna;->a:Lcom/transsion/athena/ehatna/aethna;

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
    sget-object v0, Lcom/transsion/athena/ehatna/aethna;->a:Lcom/transsion/athena/ehatna/aethna;

    return-object v0
.end method


# virtual methods
.method public a(JJ)J
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iget-wide v0, p1, Lcom/transsion/athena/ehatna/athena;->a:J

    add-long/2addr v0, p3

    iget-wide p1, p1, Lcom/transsion/athena/ehatna/athena;->b:J

    sub-long/2addr v0, p1

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/transsion/athena/data/Track;)V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iget-wide v0, v0, Lcom/transsion/athena/ehatna/athena;->a:J

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackErTs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iget-wide v4, v4, Lcom/transsion/athena/ehatna/athena;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide v2, 0x17c376f1800L

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/athena/data/Track;->setBootId(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/transsion/athena/ehatna/aethna;->f:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->f:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    const-wide v1, 0x17c376f1800L

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v8, Lcom/transsion/athena/ehatna/athena;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    move-object v2, v8

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/athena/ehatna/athena;-><init>(JJLjava/lang/String;)V

    iput-object v8, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 v0, 0x927c0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lk4/a;->a(Landroid/content/Context;)Lk4/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "base_time"

    :try_start_1
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-wide v2, v0, Lcom/transsion/athena/ehatna/athena;->a:J

    const-string v4, "serverTime"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-wide v2, v0, Lcom/transsion/athena/ehatna/athena;->b:J

    const-string v4, "elapsedRealtime"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/athena/ehatna/athena;->c:Ljava/lang/String;

    const-string v2, "bootId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lk4/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance p1, Lcom/transsion/athena/ehatna/athena;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/athena/ehatna/athena;-><init>(JJLjava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iput-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    return p1
.end method

.method public c()J
    .locals 5

    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/transsion/athena/ehatna/athena;->a:J

    iget-wide v3, v0, Lcom/transsion/athena/ehatna/athena;->b:J

    sub-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d()V
    .locals 8

    const-string v0, "base_time"

    :try_start_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lk4/a;->a(Landroid/content/Context;)Lk4/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lk4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baseTimeJs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/transsion/athena/ehatna/athena;

    invoke-direct {v2, v1}, Lcom/transsion/athena/ehatna/athena;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/proc/sys/kernel/random/boot_id"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_1
    throw v0

    :catch_2
    move-object v2, v1

    :catch_3
    if-eqz v2, :cond_3

    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_3
    move-object v3, v1

    :catch_5
    :goto_2
    iput-object v3, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    if-eqz v2, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iget-object v3, v3, Lcom/transsion/athena/ehatna/athena;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iget-wide v2, v2, Lcom/transsion/athena/ehatna/athena;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    iget-wide v6, v6, Lcom/transsion/athena/ehatna/athena;->b:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->d:Z

    goto :goto_3

    :cond_4
    iput-object v1, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lk4/a;->a(Landroid/content/Context;)Lk4/a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lk4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/athena/ehatna/aethna;->f:Z

    return v0
.end method

.method public f()Z
    .locals 6

    iget-wide v0, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/athena/ehatna/aethna;->e:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/ehatna/aethna;->b:Lcom/transsion/athena/ehatna/athena;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/athena/ehatna/athena;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/athena/ehatna/aethna;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
