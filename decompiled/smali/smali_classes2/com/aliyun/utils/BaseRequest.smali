.class public abstract Lcom/aliyun/utils/BaseRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/utils/BaseRequest$MsgDispatcher;,
        Lcom/aliyun/utils/BaseRequest$OnRequestListener;
    }
.end annotation


# static fields
.field public static final DATA_KEY_EXTRA:Ljava/lang/String; = "data_extra"

.field public static final WHAT_FAIL:I = 0x0

.field public static final WHAT_SUCCESS:I = 0x1

.field private static sThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

.field private innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

.field public mContextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

.field protected wantStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/aliyun/utils/BaseRequest;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    new-instance v0, Lcom/aliyun/utils/BaseRequest$1;

    invoke-direct {v0, p0}, Lcom/aliyun/utils/BaseRequest$1;-><init>(Lcom/aliyun/utils/BaseRequest;)V

    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->mContextWeak:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/aliyun/utils/BaseRequest;->outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/utils/BaseRequest;)Lcom/aliyun/utils/BaseRequest$OnRequestListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/utils/BaseRequest;->outerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/aliyun/utils/BaseRequest;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/utils/BaseRequest;->dealMsg(Landroid/os/Message;)V

    return-void
.end method

.method private dealMsg(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "data_extra"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAsync()V
    .locals 2

    new-instance v0, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    invoke-direct {v0, p0}, Lcom/aliyun/utils/BaseRequest$MsgDispatcher;-><init>(Lcom/aliyun/utils/BaseRequest;)V

    iput-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    sget-object v0, Lcom/aliyun/utils/BaseRequest;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aliyun/utils/BaseRequest$2;

    invoke-direct {v1, p0}, Lcom/aliyun/utils/BaseRequest$2;-><init>(Lcom/aliyun/utils/BaseRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSync()V
    .locals 0

    invoke-virtual {p0}, Lcom/aliyun/utils/BaseRequest;->runInBackground()V

    return-void
.end method

.method public abstract runInBackground()V
.end method

.method public sendFailResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "data_extra"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public sendSuccessResult(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest;->innerListener:Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_extra"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/aliyun/utils/BaseRequest;->handler:Lcom/aliyun/utils/BaseRequest$MsgDispatcher;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/utils/BaseRequest;->wantStop:Z

    invoke-virtual {p0}, Lcom/aliyun/utils/BaseRequest;->stopInner()V

    return-void
.end method

.method public abstract stopInner()V
.end method
