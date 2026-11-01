.class public Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/NativeCallContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public callbackId:Ljava/lang/String;

.field public dispatcherOnWorkerThread:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public node:Lcom/cloud/tmc/kernel/node/Node;

.field public params:Lcom/google/gson/JsonObject;

.field public render:Lcom/cloud/tmc/kernel/render/IRender;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;-><init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;Lcom/cloud/tmc/kernel/bridge/a;)V

    return-object v0
.end method

.method public callbackId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->callbackId:Ljava/lang/String;

    return-object p0
.end method

.method public dispatcherOnWorkerThread(Z)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->dispatcherOnWorkerThread:Z

    return-object p0
.end method

.method public generateLegacyNativeId()Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-object p0
.end method

.method public params(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->params:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public render(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->render:Lcom/cloud/tmc/kernel/render/IRender;

    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->source:Ljava/lang/String;

    return-object p0
.end method
