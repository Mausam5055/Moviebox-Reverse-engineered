.class Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;
.super Lorg/chromium/net/UrlRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Job"
.end annotation


# instance fields
.field private builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

.field private endTimeMs:J

.field private glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

.field private volatile isCancelled:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;

.field private request:Lorg/chromium/net/UrlRequest;

.field private responseStartTimeMs:J

.field private startTime:J

.field final synthetic this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)V
    .locals 1

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)V

    return-void
.end method

.method static synthetic access$102(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->priority:Lcom/bumptech/glide/Priority;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->clearListeners()V

    return-void
.end method

.method static synthetic access$200(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Lorg/chromium/net/UrlRequest;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    return-object p0
.end method

.method static synthetic access$202(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lorg/chromium/net/UrlRequest;)Lorg/chromium/net/UrlRequest;
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    return-object p1
.end method

.method static synthetic access$300(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->isCancelled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;ZLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->onRequestFinished(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;ZLjava/nio/ByteBuffer;)V

    return-void
.end method

.method private clearListeners()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->isCancelled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeLogResult(ZLjava/lang/Exception;ZLjava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "ChromiumSerializer"

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Successfully completed request, url: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", duration: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->startTime:J

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", file size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    move-result p2

    div-int/lit16 p2, p2, 0x400

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "kb"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x6

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    const-string p1, "Request failed"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;->onRequestFailed(Ljava/lang/Exception;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySuccess(Ljava/nio/ByteBuffer;)V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;->onRequestComplete(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRequestFinished(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;ZLjava/nio/ByteBuffer;)V
    .locals 8
    .param p2    # Lorg/chromium/net/CronetException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    invoke-static {v1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$400(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$900(Lorg/chromium/net/UrlResponseInfo;Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->endTimeMs:J

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->maybeLogResult(ZLjava/lang/Exception;ZLjava/nio/ByteBuffer;)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p4}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->notifySuccess(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->notifyFailure(Ljava/lang/Exception;)V

    :goto_1
    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    invoke-static {p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$1000(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Lcom/bumptech/glide/integration/cronet/DataLogger;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    invoke-static {p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$1000(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Lcom/bumptech/glide/integration/cronet/DataLogger;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->startTime:J

    iget-wide v4, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->responseStartTimeMs:J

    iget-wide v6, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->endTimeMs:J

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/bumptech/glide/integration/cronet/DataLogger;->logNetworkData(Lorg/chromium/net/UrlResponseInfo;JJJ)V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    invoke-static {p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$1100(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;->put(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method addListener(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method init(Lcom/bumptech/glide/load/model/GlideUrl;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->startTime:J

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    return-void
.end method

.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2
    .param p2    # Lorg/chromium/net/UrlResponseInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$800()Lcom/google/common/base/q;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$3;

    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->priority:Lcom/bumptech/glide/Priority;

    invoke-direct {v0, p0, v1, p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$3;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;Lorg/chromium/net/UrlResponseInfo;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 2

    invoke-static {}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$800()Lcom/google/common/base/q;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;

    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->priority:Lcom/bumptech/glide/Priority;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->getNextBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V

    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->responseStartTimeMs:J

    invoke-static {}, Lcom/bumptech/glide/integration/cronet/BufferQueue;->builder()Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->getFirstBuffer(Lorg/chromium/net/UrlResponseInfo;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    invoke-static {}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$800()Lcom/google/common/base/q;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$1;

    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->priority:Lcom/bumptech/glide/Priority;

    invoke-direct {v0, p0, v1, p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$1;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;Lorg/chromium/net/UrlResponseInfo;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeListener(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->isCancelled:Z

    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    invoke-static {p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$400(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->isCancelled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
