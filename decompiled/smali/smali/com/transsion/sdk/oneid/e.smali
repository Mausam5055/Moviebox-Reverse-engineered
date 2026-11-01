.class public Lcom/transsion/sdk/oneid/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static volatile n:Lcom/transsion/sdk/oneid/e;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

.field private d:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

.field private e:J

.field private f:J

.field private g:Lcom/transsion/sdk/oneid/c;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/concurrent/locks/ReentrantLock;

.field private final j:Landroid/content/Context;

.field private k:Lcom/transsion/sdk/oneid/data/OdIdInfo;

.field private l:Ljava/util/concurrent/ConcurrentHashMap;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/HandlerThread;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->e:J

    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->f:J

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/e;->j()V

    iget-object p1, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;
    .locals 2

    sget-object v0, Lcom/transsion/sdk/oneid/e;->n:Lcom/transsion/sdk/oneid/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/sdk/oneid/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/sdk/oneid/e;->n:Lcom/transsion/sdk/oneid/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/sdk/oneid/e;

    invoke-direct {v1, p0}, Lcom/transsion/sdk/oneid/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/sdk/oneid/e;->n:Lcom/transsion/sdk/oneid/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/transsion/sdk/oneid/e;->n:Lcom/transsion/sdk/oneid/e;

    return-object p0
.end method

.method private c(ILcom/transsion/sdk/oneid/data/AppIdInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onOdidRequestRetry"

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryTimes:I

    iget-wide v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0xbb8

    iput-wide v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    :goto_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    const/16 v1, 0x12f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    iget-wide v1, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/transsion/sdk/oneid/e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->e:J

    :goto_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/transsion/sdk/oneid/e;->e:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 6

    const-string v0, "onFpPostComplete"

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->f:J

    :try_start_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Ln00/b;->b(Landroid/content/Context;)Ln00/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "last_post_time"

    :try_start_1
    iget-wide v2, p0, Lcom/transsion/sdk/oneid/e;->f:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ln00/b;->c(Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fp_hash"

    invoke-virtual {v0, v1, p1}, Ln00/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private g(Ljava/lang/String;ILcom/transsion/sdk/oneid/data/AppIdInfo;)V
    .locals 8

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOdidRequestComplete appId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-string p1, "msg"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "time"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "odid"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->odid:Ljava/lang/String;

    iput v2, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryTimes:I

    iput-wide v4, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->lastRequestTime:J

    const-wide/16 v0, 0x3e8

    mul-long/2addr v6, v0

    iput-wide v6, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->waitTime:J

    iput-object p1, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->msg:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {p1}, Ln00/b;->b(Landroid/content/Context;)Ln00/b;

    move-result-object p1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->l:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/transsion/sdk/oneid/e$b;

    invoke-direct {v2, p0}, Lcom/transsion/sdk/oneid/e$b;-><init>(Lcom/transsion/sdk/oneid/e;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appIdInfoListJson : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    const-string v1, "appid_info_list"

    invoke-virtual {p1, v1, v0}, Ln00/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    const/16 v0, 0x12f

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p2, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OneID Worker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :goto_3
    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    :goto_4
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Ln00/b;->b(Landroid/content/Context;)Ln00/b;

    move-result-object v0

    const-string v1, "appid_info_list"

    invoke-virtual {v0, v1}, Ln00/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppId Records : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/transsion/sdk/oneid/e$a;

    invoke-direct {v2, p0}, Lcom/transsion/sdk/oneid/e$a;-><init>(Lcom/transsion/sdk/oneid/e;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->l:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->l:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check appId record : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    const/16 v1, 0x130

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    sget v1, Lcom/transsion/sdk/oneid/OneID;->d:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFpIdChanged type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    iget-object v2, v1, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->vaid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "oneid"

    const-string v3, "one_id_first_launch"

    const/4 v4, 0x0

    :try_start_0
    iget v5, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x64

    const-wide/16 v7, 0x3e8

    if-eq v5, v6, :cond_23

    const/16 v2, 0xc8

    const-wide/16 v14, 0x0

    const/16 v9, 0xc9

    if-eq v5, v2, :cond_19

    if-eq v5, v9, :cond_17

    const-string v2, "code"

    const/16 v3, 0x12d

    const/16 v10, 0x12e

    const/4 v11, 0x4

    const-string v12, " data = "

    const-string v6, "code = "

    const-string v16, "OneID disable or network unavailable"

    const/16 v13, 0x12f

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    const/16 v5, 0x130

    invoke-virtual {v3, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-boolean v3, Lcom/transsion/sdk/oneid/OneID;->c:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/sdk/oneid/b;->p(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/transsion/sdk/oneid/e;->k()V

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/sdk/oneid/data/AppIdInfo;

    if-nez v3, :cond_1

    new-instance v3, Lcom/transsion/sdk/oneid/data/AppIdInfo;

    invoke-direct {v3}, Lcom/transsion/sdk/oneid/data/AppIdInfo;-><init>()V

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->k:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    if-eqz v0, :cond_1

    iput v2, v0, Lcom/transsion/sdk/oneid/data/OdIdInfo;->appid:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_11

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Ln00/l;->d()Ln00/l;

    move-result-object v7

    invoke-virtual {v7}, Ln00/l;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide/16 v9, 0xbb8

    goto :goto_1

    :cond_2
    const-wide/16 v9, 0x1770

    :goto_1
    iget-wide v7, v3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->lastRequestTime:J

    cmp-long v11, v5, v7

    if-ltz v11, :cond_4

    sub-long v11, v5, v7

    iget-wide v14, v3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->waitTime:J

    cmp-long v11, v11, v14

    if-ltz v11, :cond_3

    goto :goto_2

    :cond_3
    add-long/2addr v7, v14

    sub-long/2addr v7, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    :cond_4
    :goto_2
    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v5, v13, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Appid : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delay "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms refresh odid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_5
    :goto_3
    invoke-static/range {v16 .. v16}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v4

    :pswitch_1
    const-string v2, "-->WHAT_REQUEST_ODID"

    invoke-static {v2}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget v2, v0, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/sdk/oneid/data/AppIdInfo;

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v3, v13, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-boolean v3, Lcom/transsion/sdk/oneid/OneID;->c:Z

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/sdk/oneid/b;->p(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->k:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    if-eqz v3, :cond_25

    iput v2, v3, Lcom/transsion/sdk/oneid/data/OdIdInfo;->appid:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--> mOdidInfo set appID :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->k:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    invoke-virtual {v5}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    new-instance v3, Ln00/j;

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->k:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    invoke-direct {v3, v5}, Ln00/j;-><init>(Lcom/transsion/sdk/oneid/data/OdIdInfo;)V

    invoke-virtual {v3}, Ln00/j;->a()Ln00/i;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Ln00/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Ln00/i;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget v5, v3, Ln00/i;->a:I

    if-nez v5, :cond_7

    iget-object v3, v3, Ln00/i;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0}, Lcom/transsion/sdk/oneid/e;->g(Ljava/lang/String;ILcom/transsion/sdk/oneid/data/AppIdInfo;)V

    goto/16 :goto_12

    :cond_7
    const/4 v3, 0x3

    if-ne v5, v3, :cond_8

    const-string v3, "onOdidRequestGatewayError"

    invoke-static {v3}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-static {v3, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v3, Landroid/os/Message;->arg1:I

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_12

    :cond_8
    if-eq v5, v11, :cond_25

    invoke-direct {v1, v2, v0}, Lcom/transsion/sdk/oneid/e;->c(ILcom/transsion/sdk/oneid/data/AppIdInfo;)V

    goto/16 :goto_12

    :cond_9
    :goto_4
    invoke-static/range {v16 .. v16}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v4

    :pswitch_2
    const-string v3, "-->WHAT_POST_ID_CHANGE"

    invoke-static {v3}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    iget-object v8, v7, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->pre_id:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v5, :cond_d

    :try_start_2
    new-instance v5, Ln00/h;

    invoke-direct {v5, v3}, Ln00/h;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Ln00/h;->a()Ln00/i;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Ln00/i;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Ln00/i;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget v5, v3, Ln00/i;->a:I

    if-nez v5, :cond_c

    iput-wide v14, v1, Lcom/transsion/sdk/oneid/e;->e:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    iget-object v3, v3, Ln00/i;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/transsion/sdk/oneid/b;->h(Landroid/content/Context;Ljava/util/List;)V

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->f(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_12

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    goto/16 :goto_12

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_c
    if-eq v5, v11, :cond_25

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-static {v2, v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->d(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_12

    :goto_6
    :try_start_5
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_d
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/transsion/sdk/oneid/b;->h(Landroid/content/Context;Ljava/util/List;)V

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_e
    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->f(Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_3
    const-string v5, "-->WHAT_POST_FP_DATA"

    invoke-static {v5}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v5, Lcom/transsion/sdk/oneid/OneID;->c:Z

    if-eqz v5, :cond_12

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v5}, Lcom/transsion/sdk/oneid/b;->p(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_8

    :cond_f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ln00/g;

    iget-object v7, v1, Lcom/transsion/sdk/oneid/e;->c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    invoke-direct {v5, v7}, Ln00/g;-><init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V

    invoke-virtual {v5}, Ln00/g;->a()Ln00/i;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Ln00/i;->a:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Ln00/i;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget v6, v5, Ln00/i;->a:I

    if-nez v6, :cond_11

    iput-wide v14, v1, Lcom/transsion/sdk/oneid/e;->e:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, v5, Ln00/i;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->f(Ljava/lang/String;)V

    goto/16 :goto_12

    :catch_3
    move-exception v0

    goto :goto_7

    :cond_10
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-static {v2, v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_12

    :goto_7
    :try_start_7
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_11
    if-eq v6, v11, :cond_25

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->d(Landroid/os/Message;)V

    goto/16 :goto_12

    :cond_12
    :goto_8
    invoke-static/range {v16 .. v16}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iput-wide v14, v1, Lcom/transsion/sdk/oneid/e;->e:J

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v4

    :pswitch_4
    const-string v0, "-->WHAT_POST_FP_HASH"

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v0, Lcom/transsion/sdk/oneid/OneID;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_a

    :cond_13
    invoke-static {}, Ln00/l;->d()Ln00/l;

    move-result-object v0

    invoke-virtual {v0}, Ln00/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "GslbSdk new domain is not ready"

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->d(Landroid/os/Message;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return v4

    :cond_14
    :try_start_8
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Ln00/b;->b(Landroid/content/Context;)Ln00/b;

    move-result-object v0

    const-string v2, "fp_hash"

    invoke-virtual {v0, v2}, Ln00/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    :catch_4
    const-string v0, ""

    :goto_9
    :try_start_9
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    invoke-virtual {v2}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-static {v0, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_12

    :cond_15
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/transsion/sdk/oneid/e;->f(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_16
    :goto_a
    invoke-static/range {v16 .. v16}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iput-wide v14, v1, Lcom/transsion/sdk/oneid/e;->e:J

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v4

    :cond_17
    const-string v0, "-->WHAT_QUIT"

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v0, :cond_25

    :try_start_a
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/HandlerThread;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_18
    :goto_b
    :try_start_b
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_12

    :goto_c
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_19
    invoke-static {}, Lcom/transsion/sdk/oneid/b;->o()V

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Ln00/b;->b(Landroid/content/Context;)Ln00/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Ln00/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Lcom/transsion/sdk/oneid/OneID;->d:I

    if-lez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First launch delay "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/transsion/sdk/oneid/OneID;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec init"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    sget v0, Lcom/transsion/sdk/oneid/OneID;->d:I

    int-to-long v5, v0

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_5
    :try_start_d
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Ln00/b;->b(Landroid/content/Context;)Ln00/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ln00/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const-string v0, "-->WHAT_INIT 2.0.2.1"

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/sdk/oneid/R$string;->oneid_process_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/sdk/oneid/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "Only works in the main process"

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    return v4

    :cond_1c
    :try_start_e
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->g:Lcom/transsion/sdk/oneid/c;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/transsion/sdk/oneid/c;

    invoke-direct {v0}, Lcom/transsion/sdk/oneid/c;-><init>()V

    iput-object v0, v1, Lcom/transsion/sdk/oneid/e;->g:Lcom/transsion/sdk/oneid/c;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->g:Lcom/transsion/sdk/oneid/c;

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v0, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    :try_start_f
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    :cond_1d
    :goto_d
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    const-string v2, "ire-oneid.shalltry.com"

    const-string v3, "oneid-dev-sg.shalltry.com"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    new-instance v0, Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/transsion/sdk/oneid/data/GroupFpInfo;-><init>(Landroid/content/Context;Landroid/os/Handler$Callback;)V

    iput-object v0, v1, Lcom/transsion/sdk/oneid/e;->c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    new-instance v2, Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    invoke-direct {v2, v0}, Lcom/transsion/sdk/oneid/data/GroupHashInfo;-><init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V

    iput-object v2, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    new-instance v0, Lcom/transsion/sdk/oneid/data/OdIdInfo;

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    invoke-direct {v0, v2}, Lcom/transsion/sdk/oneid/data/OdIdInfo;-><init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V

    iput-object v0, v1, Lcom/transsion/sdk/oneid/e;->k:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> new OdidInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->k:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    iget-wide v2, v1, Lcom/transsion/sdk/oneid/e;->f:J

    cmp-long v0, v2, v14

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Ln00/b;->b(Landroid/content/Context;)Ln00/b;

    move-result-object v0

    const-string v2, "last_post_time"

    invoke-virtual {v0, v2}, Ln00/b;->a(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    mul-long/2addr v2, v7

    iput-wide v2, v1, Lcom/transsion/sdk/oneid/e;->f:J

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, v1, Lcom/transsion/sdk/oneid/e;->f:J

    cmp-long v0, v2, v5

    if-ltz v0, :cond_20

    sub-long/2addr v2, v5

    const-wide/32 v5, 0x5265c00

    cmp-long v0, v2, v5

    if-ltz v0, :cond_1f

    goto :goto_e

    :cond_1f
    const-string v0, "Post time not yet reached"

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    goto :goto_10

    :cond_20
    :goto_e
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    invoke-static {}, Ln00/l;->d()Ln00/l;

    move-result-object v2

    invoke-virtual {v2}, Ln00/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v2, 0x12c

    const-wide/16 v9, 0xbb8

    goto :goto_f

    :cond_21
    const/16 v2, 0x12c

    const-wide/16 v9, 0x1770

    :goto_f
    invoke-virtual {v0, v2, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_22
    :goto_10
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_12

    :cond_23
    const-string v3, "-->WHAT_GET_PROP_RET"

    invoke-static {v3}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "UNKNOWN"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    if-eqz v3, :cond_25

    iget-object v3, v3, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iget-object v3, v3, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v3, v3, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iput-object v0, v3, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    invoke-virtual {v5, v3}, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->updateDidsHash(Lcom/transsion/sdk/oneid/data/UniqueIdInfo;)V

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->k:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    iput-object v0, v3, Lcom/transsion/sdk/oneid/data/OdIdInfo;->tsid:Ljava/lang/String;

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v3}, Ln00/b;->b(Landroid/content/Context;)Ln00/b;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :try_start_10
    invoke-virtual {v3, v2, v0}, Ln00/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oneid_time"

    invoke-virtual {v3, v0, v5}, Ln00/b;->c(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_12

    :catch_7
    move-exception v0

    :try_start_11
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    goto :goto_12

    :cond_24
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v2, v2, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iget-object v2, v2, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    new-instance v2, Lcom/transsion/sdk/oneid/data/IdChangeInfo;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v3, "tsid"

    :try_start_12
    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v5, v5, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iget-object v5, v5, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v0}, Lcom/transsion/sdk/oneid/data/IdChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/sdk/oneid/e;->e(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->c:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v2, v2, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iput-object v0, v2, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    invoke-virtual {v3, v2}, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->updateDidsHash(Lcom/transsion/sdk/oneid/data/UniqueIdInfo;)V

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->k:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    iput-object v0, v2, Lcom/transsion/sdk/oneid/data/OdIdInfo;->tsid:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_12

    :goto_11
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    :cond_25
    :goto_12
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/sdk/oneid/data/AppIdInfo;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/transsion/sdk/oneid/data/AppIdInfo;->odid:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public l()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "retry"

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/transsion/sdk/oneid/OneID;->c:Z

    if-eqz v2, :cond_4

    iget-wide v3, p0, Lcom/transsion/sdk/oneid/e;->f:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/e;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->a:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    const-string v0, "Post time not yet reached"

    goto :goto_3

    :cond_5
    const-string v0, "OneID disable"

    :goto_3
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    return-void
.end method
