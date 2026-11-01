.class Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;
.super Lorg/chromium/net/UrlRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;,
        Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;,
        Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/y;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/BlockingQueue;

.field private final e:Lcom/google/common/util/concurrent/y;

.field private final f:J

.field private final g:Lcom/google/net/cronet/okhttptransport/c;

.field private volatile h:Lorg/chromium/net/UrlRequest;


# direct methods
.method constructor <init>(JLcom/google/net/cronet/okhttptransport/c;)V
    .locals 4

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    invoke-static {}, Lcom/google/common/util/concurrent/y;->s()Lcom/google/common/util/concurrent/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lcom/google/common/util/concurrent/y;->s()Lcom/google/common/util/concurrent/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    if-nez v0, :cond_1

    const-wide/32 p1, 0x7fffffff

    iput-wide p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->f:J

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->f:J

    :goto_0
    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->g:Lcom/google/net/cronet/okhttptransport/c;

    return-void
.end method

.method static synthetic a(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic c(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;
    .locals 0

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->h:Lorg/chromium/net/UrlRequest;

    return-object p0
.end method

.method static synthetic d(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method f()Lcom/google/common/util/concurrent/r;
    .locals 1

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    return-object v0
.end method

.method g()Lcom/google/common/util/concurrent/r;
    .locals 1

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    return-object v0
.end method

.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;

    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_CANCELED:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/io/IOException;

    const-string p2, "The request was canceled!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 2

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    invoke-virtual {p1, p3}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    invoke-virtual {p1, p3}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;

    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_FAILED:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p3, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;

    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_READ_COMPLETED:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p3, v1, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 0

    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->g:Lcom/google/net/cronet/okhttptransport/c;

    invoke-virtual {p3}, Lcom/google/net/cronet/okhttptransport/c;->b()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    invoke-virtual {p3, p2}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lcom/google/common/base/m;->u(Z)V

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    new-instance p3, Lokio/Buffer;

    invoke-direct {p3}, Lokio/Buffer;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lcom/google/common/base/m;->u(Z)V

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrlChain()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->g:Lcom/google/net/cronet/okhttptransport/c;

    invoke-virtual {p3}, Lcom/google/net/cronet/okhttptransport/c;->c()I

    move-result p3

    if-gt p2, p3, :cond_1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many follow-up requests: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->g:Lcom/google/net/cronet/okhttptransport/c;

    invoke-virtual {p3}, Lcom/google/net/cronet/okhttptransport/c;->c()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->h:Lorg/chromium/net/UrlRequest;

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/m;->u(Z)V

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$c;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$c;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/m;->u(Z)V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;

    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_SUCCESS:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
