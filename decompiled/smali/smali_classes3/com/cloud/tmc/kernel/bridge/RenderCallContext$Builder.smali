.class public Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/RenderCallContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private keep:Z

.field private param:Lcom/google/gson/JsonObject;

.field private target:Lcom/cloud/tmc/kernel/render/IRender;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;)V
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

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->eventId:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->target:Lcom/cloud/tmc/kernel/render/IRender;

    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->keep:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Lcom/google/gson/JsonObject;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->target:Lcom/cloud/tmc/kernel/render/IRender;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;-><init>(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)V

    return-object v0
.end method

.method public eventId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public keep(Z)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->keep:Z

    return-object p0
.end method

.method public param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
