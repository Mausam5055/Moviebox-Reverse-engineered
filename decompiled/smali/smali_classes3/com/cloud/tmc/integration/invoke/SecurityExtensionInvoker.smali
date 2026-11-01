.class public Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;


# static fields
.field private static final TAG:Ljava/lang/String; = "Tmcintegration:ExtensionInvoker:Security"


# instance fields
.field private mAccessController:Lcom/cloud/tmc/kernel/security/AccessController;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/security/AccessController;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;->mAccessController:Lcom/cloud/tmc/kernel/security/AccessController;

    return-void
.end method


# virtual methods
.method public onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/extension/Extension;

    instance-of v2, v1, Lcom/cloud/tmc/kernel/security/Guard;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/cloud/tmc/kernel/security/Guard;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const-class v5, Lcom/cloud/tmc/kernel/annotation/UsePermission;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/kernel/annotation/UsePermission;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/cloud/tmc/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Lcom/cloud/tmc/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    new-instance v1, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    invoke-interface {v5}, Lcom/cloud/tmc/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lcom/cloud/tmc/kernel/annotation/UsePermission;->desc()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;

    invoke-direct {v2, v1}, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/cloud/tmc/kernel/security/Permission;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v1, v1, Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    if-eqz v1, :cond_0

    const-class v1, Lcom/cloud/tmc/kernel/annotation/ActionFilter;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/annotation/ActionFilter;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/annotation/ActionFilter;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/annotation/ActionFilter;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    invoke-direct {v2, v1, v1}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;

    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/cloud/tmc/kernel/security/Permission;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    new-instance v9, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;-><init>(Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;Ljava/util/List;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;->mAccessController:Lcom/cloud/tmc/kernel/security/AccessController;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    invoke-interface {p1, p2, v8, v9}, Lcom/cloud/tmc/kernel/security/AccessController;->check(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->pending()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method
