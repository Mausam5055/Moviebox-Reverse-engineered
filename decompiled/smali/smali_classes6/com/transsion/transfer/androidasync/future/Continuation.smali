.class public Lcom/transsion/transfer/androidasync/future/Continuation;
.super Lcom/transsion/transfer/androidasync/future/n;

# interfaces
.implements Lbv/c;
.implements Ljava/lang/Runnable;
.implements Lcom/transsion/transfer/androidasync/future/a;


# instance fields
.field callback:Lbv/a;

.field cancelCallback:Ljava/lang/Runnable;

.field private inNext:Z

.field mCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lbv/c;",
            ">;"
        }
    .end annotation
.end field

.field started:Z

.field private waiting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/future/Continuation;-><init>(Lbv/a;)V

    return-void
.end method

.method public constructor <init>(Lbv/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/androidasync/future/Continuation;-><init>(Lbv/a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lbv/a;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/n;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->callback:Lbv/a;

    return-void
.end method

.method static bridge synthetic b(Lcom/transsion/transfer/androidasync/future/Continuation;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->waiting:Z

    return-void
.end method

.method static bridge synthetic c(Lcom/transsion/transfer/androidasync/future/Continuation;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/Continuation;->next()V

    return-void
.end method

.method private hook(Lbv/c;)Lbv/c;
    .locals 1

    instance-of v0, p1, Lcom/transsion/transfer/androidasync/future/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/transfer/androidasync/future/b;

    invoke-interface {v0, p0}, Lcom/transsion/transfer/androidasync/future/b;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    :cond_0
    return-object p1
.end method

.method private next()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->inNext:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->waiting:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbv/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->inNext:Z

    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->waiting:Z

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/Continuation;->wrap()Lbv/a;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lbv/c;->onContinue(Lcom/transsion/transfer/androidasync/future/Continuation;Lbv/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v2, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->inNext:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/future/Continuation;->reportCompleted(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    iput-boolean v2, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->inNext:Z

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->waiting:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/future/Continuation;->reportCompleted(Ljava/lang/Exception;)V

    return-void
.end method

.method private wrap()Lbv/a;
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/future/Continuation$a;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/future/Continuation$a;-><init>(Lcom/transsion/transfer/androidasync/future/Continuation;)V

    return-object v0
.end method


# virtual methods
.method public add(Lbv/c;)Lcom/transsion/transfer/androidasync/future/Continuation;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/future/Continuation;->hook(Lbv/c;)Lbv/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Lcom/transsion/transfer/androidasync/future/c;)Lcom/transsion/transfer/androidasync/future/Continuation;
    .locals 1

    invoke-interface {p1, p0}, Lcom/transsion/transfer/androidasync/future/b;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    new-instance v0, Lcom/transsion/transfer/androidasync/future/Continuation$b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/androidasync/future/Continuation$b;-><init>(Lcom/transsion/transfer/androidasync/future/Continuation;Lcom/transsion/transfer/androidasync/future/c;)V

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/future/Continuation;->add(Lbv/c;)Lcom/transsion/transfer/androidasync/future/Continuation;

    return-object p0
.end method

.method public cancel()Z
    .locals 1

    invoke-super {p0}, Lcom/transsion/transfer/androidasync/future/n;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCallback()Lbv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->callback:Lbv/a;

    return-object v0
.end method

.method public getCancelCallback()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public insert(Lbv/c;)Lcom/transsion/transfer/androidasync/future/Continuation;
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->mCallbacks:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/future/Continuation;->hook(Lbv/c;)Lbv/c;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public onContinue(Lcom/transsion/transfer/androidasync/future/Continuation;Lbv/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/transsion/transfer/androidasync/future/Continuation;->setCallback(Lbv/a;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/Continuation;->start()Lcom/transsion/transfer/androidasync/future/Continuation;

    return-void
.end method

.method reportCompleted(Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/n;->setComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->callback:Lbv/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/future/Continuation;->start()Lcom/transsion/transfer/androidasync/future/Continuation;

    return-void
.end method

.method public setCallback(Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->callback:Lbv/a;

    return-void
.end method

.method public setCancelCallback(Lcom/transsion/transfer/androidasync/future/a;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/transfer/androidasync/future/Continuation$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/androidasync/future/Continuation$1;-><init>(Lcom/transsion/transfer/androidasync/future/Continuation;Lcom/transsion/transfer/androidasync/future/a;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setCancelCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->cancelCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public start()Lcom/transsion/transfer/androidasync/future/Continuation;
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/future/Continuation;->started:Z

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/future/Continuation;->next()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
