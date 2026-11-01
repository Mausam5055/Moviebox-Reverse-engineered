.class public Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionInvoker:Resolve"

.field private static final sDefaultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;


# instance fields
.field private mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker$1;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker$1;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->sDefaultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/resolver/ResultResolver;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    if-nez p1, :cond_0

    const-string p1, "TmcKernel:ExtensionInvoker:Resolve"

    const-string p2, "use default resolver!"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->sDefaultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 9

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    instance-of v2, v1, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->mutable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;->onStart(Ljava/util/List;)V

    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v3

    move-object v5, v4

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/extension/Extension;

    instance-of v7, v6, Lcom/cloud/tmc/kernel/scheduler/Interruptable;

    if-eqz v7, :cond_5

    if-nez v4, :cond_4

    new-instance v4, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;

    invoke-direct {v4}, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;-><init>()V

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->setInterrupted(Z)V

    :goto_1
    move-object v7, v6

    check-cast v7, Lcom/cloud/tmc/kernel/scheduler/Interruptable;

    invoke-interface {v7, v4}, Lcom/cloud/tmc/kernel/scheduler/Interruptable;->setInterruptor(Lcom/cloud/tmc/kernel/scheduler/Interruptor;)V

    :cond_5
    :try_start_0
    iget-object v7, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    new-instance v8, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-direct {v8, v6}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;-><init>(Ljava/lang/Object;)V

    iput-object v8, v7, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    iget-object v7, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    invoke-virtual {v7, p1, p2, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    invoke-interface {v1, v6, v5}, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;->onProgress(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, p1

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v1, :cond_7

    invoke-interface {v1, v6}, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;->onInterrupt(Lcom/cloud/tmc/kernel/extension/Extension;)V

    :cond_7
    move-object v6, v3

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_8

    invoke-interface {v1, v6, v3}, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;->onException(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    if-eqz p1, :cond_9

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/resolver/ResultResolver;->resolve(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    :cond_9
    if-eqz v3, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "return defaultValue due to exception "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " in ext: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TmcKernel:ExtensionInvoker:Resolve"

    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    :cond_a
    invoke-static {v5}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method
