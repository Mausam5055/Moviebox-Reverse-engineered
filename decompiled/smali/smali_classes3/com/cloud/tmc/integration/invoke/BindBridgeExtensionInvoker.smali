.class public Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;


# static fields
.field public static final TAG:Ljava/lang/String; = "TmcEngine:BridgeExtensionInvoker"


# instance fields
.field private mApiContext:Lcom/cloud/tmc/kernel/model/ApiContext;

.field private final mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

.field private mCallId:Ljava/lang/String;

.field private mRequestParams:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/ApiContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/ApiContext;)V
    .locals 1
    .param p4    # Lcom/cloud/tmc/kernel/model/ApiContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;)V

    iput-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getParams()Lcom/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mRequestParams:Lcom/google/gson/JsonObject;

    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mCallId:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mApiContext:Lcom/cloud/tmc/kernel/model/ApiContext;

    return-void
.end method

.method private buildActionMethodParam(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    aget-object p2, p2, v0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mRequestParams:Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ParamBinder;-><init>(Lcom/google/gson/JsonObject;)V

    goto :goto_1

    :cond_1
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingRequest;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/RequestBinder;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mRequestParams:Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/RequestBinder;-><init>(Lcom/google/gson/JsonObject;)V

    goto :goto_1

    :cond_2
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/CallbackBinder;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/CallbackBinder;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V

    goto :goto_1

    :cond_3
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingExecutor;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/ExecutorBinder;

    invoke-direct {v2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ExecutorBinder;-><init>()V

    goto :goto_1

    :cond_4
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;-><init>(Lcom/cloud/tmc/kernel/node/Node;)V

    goto :goto_1

    :cond_5
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingApiContext;

    if-eqz v2, :cond_6

    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/ApiContextBinder;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mApiContext:Lcom/cloud/tmc/kernel/model/ApiContext;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/ApiContextBinder;-><init>(Lcom/cloud/tmc/kernel/model/ApiContext;)V

    goto :goto_1

    :cond_6
    instance-of v2, p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingId;

    if-eqz v2, :cond_7

    new-instance v2, Lcom/cloud/tmc/kernel/bridge/extension/bind/IdBinder;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mCallId:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/kernel/bridge/extension/bind/IdBinder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_8

    invoke-interface {v2, p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder;->bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v1

    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method private initParamAnnotation(Ljava/lang/reflect/Method;)Landroidx/collection/y0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Landroidx/collection/y0;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/y0;

    invoke-direct {v0}, Landroidx/collection/y0;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz v1, :cond_7

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_7

    aget-object v4, p1, v3

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v4

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v4, v7

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/cloud/tmc/kernel/bridge/extension/annotation/Bindable;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/annotation/Annotation;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v3, v4}, Landroidx/collection/y0;->l(ILjava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-object v0
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class p3, Lcom/cloud/tmc/kernel/bridge/extension/annotation/ParamRequired;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mRequestParams:Lcom/google/gson/JsonObject;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->size()I

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-direct {p1, p2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    sget-object p2, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->INVALID_PARAM:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    new-array v2, p3, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->initParamAnnotation(Ljava/lang/reflect/Method;)Landroidx/collection/y0;

    move-result-object v3

    move v4, v1

    :goto_0
    const/4 v5, 0x2

    if-ge v4, p3, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v3, v4}, Landroidx/collection/y0;->f(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v6, v7}, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->buildActionMethodParam(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v4
    :try_end_0
    .catch Lcom/cloud/tmc/kernel/extension/RequiredParamNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-direct {p2, p3, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    new-instance p3, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v5, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_1
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/extension/Extension;

    invoke-static {p3, v3}, Lcom/cloud/tmc/kernel/utils/NodeAwareUtils;->handleSetNode(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/extension/Extension;)V

    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/extension/Extension;

    invoke-virtual {p3, v3}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->setTargetExtension(Lcom/cloud/tmc/kernel/extension/Extension;)V

    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {p0, p3, p1, p2, v2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceed(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/cloud/tmc/integration/invoke/InvokeException; {:try_start_1 .. :try_end_1} :catch_1

    const-class p3, Lcom/cloud/tmc/kernel/annotation/AutoCallback;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p3

    if-eqz p3, :cond_6

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AutoCallback but got null!!! "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {p3, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " method: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-direct {p1, p2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    sget-object p2, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->SUCCESS:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of p3, p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    if-eqz p3, :cond_4

    new-instance p2, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-direct {p2, p3, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    move-object p3, p1

    check-cast p3, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    goto :goto_1

    :cond_4
    instance-of p3, p1, Lcom/google/gson/JsonObject;

    if-eqz p3, :cond_5

    new-instance p2, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-direct {p2, p3, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    move-object p3, p1

    check-cast p3, Lcom/google/gson/JsonObject;

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_1

    :cond_5
    new-instance p3, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " return type not recognized "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v5, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    new-instance p2, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-direct {p2, v0, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java exception happened!\nExtension: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nMethod: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "TmcEngine:BridgeExtensionInvoker"

    invoke-static {v2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java exception happen in method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " message: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-direct {p3, p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/BindBridgeExtensionInvoker;->mBridgeResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-direct {p1, p2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    invoke-virtual {p1, p3}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;->sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method
