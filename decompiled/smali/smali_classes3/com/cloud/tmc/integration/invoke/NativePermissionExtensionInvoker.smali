.class public Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;


# instance fields
.field private mResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;->mResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;)Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;->mResponseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    return-object p0
.end method


# virtual methods
.method public onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/Page;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/extension/Extension;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    const-class v3, Lcom/cloud/tmc/kernel/annotation/NativePermissionRequire;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/annotation/NativePermissionRequire;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/annotation/NativePermissionRequire;->value()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/annotation/NativePermissionRequire;->value()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/annotation/NativePermissionRequire;->value()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-static {v0, v5}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-class v8, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestProxy;

    invoke-static {v8}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestProxy;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestProxy;->getRequestCode()I

    move-result v9

    new-instance v10, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;-><init>(Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-static {v8}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestProxy;

    invoke-interface {p1, v9, v10}, Lcom/cloud/tmc/integration/permission/TmcNativePermissionRequestProxy;->addPermRequestCallback(ILcom/cloud/tmc/integration/permission/IPermissionRequestCallback;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, p1, v9}, Landroidx/core/app/ActivityCompat;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->pending()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    move-result-object p1

    return-object p1
.end method
