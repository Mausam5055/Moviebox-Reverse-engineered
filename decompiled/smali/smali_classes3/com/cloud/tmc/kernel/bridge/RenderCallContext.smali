.class public Lcom/cloud/tmc/kernel/bridge/RenderCallContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    }
.end annotation


# static fields
.field public static final TYPE_CALL:Ljava/lang/String; = "call"

.field public static final TYPE_CALLBACK:Ljava/lang/String; = "callback"


# instance fields
.field private action:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private keep:Z

.field private param:Lcom/google/gson/JsonObject;

.field private target:Lcom/cloud/tmc/kernel/render/IRender;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->b(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->eventId:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->a(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->action:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->d(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->param:Lcom/google/gson/JsonObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->param:Lcom/google/gson/JsonObject;

    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->f(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->type:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->c(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->keep:Z

    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->e(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->target:Lcom/cloud/tmc/kernel/render/IRender;

    return-void
.end method

.method public static newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;-><init>(Lcom/cloud/tmc/kernel/render/IRender;)V

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeep()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->keep:Z

    return v0
.end method

.method public getParam()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->param:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getTarget()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->target:Lcom/cloud/tmc/kernel/render/IRender;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->action:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setKeep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->keep:Z

    return-void
.end method

.method public setParam(Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->param:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->type:Ljava/lang/String;

    return-void
.end method
