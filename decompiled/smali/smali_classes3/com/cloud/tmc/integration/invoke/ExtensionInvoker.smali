.class public abstract Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;,
        Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionInvoker"


# instance fields
.field protected final invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

.field private isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

.field protected targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end field

.field protected final targetNode:Lcom/cloud/tmc/kernel/node/Node;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    iget-object p1, p1, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    return-void
.end method


# virtual methods
.method public attacheTargetExtensions(Lcom/cloud/tmc/kernel/extension/Extension;)V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public attacheTargetExtensions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceed(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->a(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->b(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->c(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->b(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;->onComplete(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->b(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Java exception happened!\nExtension: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nMethod: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TmcKernel:ExtensionInvoker"

    invoke-static {p3, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;->onFail(Ljava/lang/Throwable;)V

    :cond_3
    throw p1
.end method

.method protected abstract onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected final proceed(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/integration/invoke/InvokeException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance v3, Lcom/cloud/tmc/integration/invoke/InvokeException;

    invoke-direct {v3, v0}, Lcom/cloud/tmc/integration/invoke/InvokeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    new-instance v3, Lcom/cloud/tmc/integration/invoke/InvokeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/cloud/tmc/integration/invoke/InvokeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    const-string v3, "TmcKernel:ExtensionInvoker"

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only single extension is accepted in last invoker"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    iget-object v0, v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->isOwner:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    iput-object p1, v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {v0, p2, p3, p4}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lcom/cloud/tmc/integration/invoke/InvokeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :goto_4
    new-instance p2, Lcom/cloud/tmc/integration/invoke/InvokeException;

    invoke-direct {p2, p1}, Lcom/cloud/tmc/integration/invoke/InvokeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_5
    throw p1
.end method

.method protected final proceedSafe(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceed(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "TmcKernel:ExtensionInvoker"

    const-string p4, "extension invoke exception!"

    invoke-static {p2, p4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
