.class public Lcom/cloud/tmc/kernel/bridge/NativeCallContext;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/cloud/tmc/kernel/node/Node;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/tmc/kernel/bridge/NativeCallContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final FROM_WORKER:Ljava/lang/String; = "fromWorker"

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private callbackId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private node:Lcom/cloud/tmc/kernel/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private params:Lcom/google/gson/JsonObject;

.field private pluginId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private render:Lcom/cloud/tmc/kernel/render/IRender;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->sCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$1;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$1;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->render:Lcom/cloud/tmc/kernel/render/IRender;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->render:Lcom/cloud/tmc/kernel/render/IRender;

    iget-object v0, p1, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->params:Lcom/google/gson/JsonObject;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->params:Lcom/google/gson/JsonObject;

    iget-object v0, p1, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->node:Lcom/cloud/tmc/kernel/node/Node;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->node:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v0, p1, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->id:Ljava/lang/String;

    iget-object v0, p1, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->source:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->callbackId:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->callbackId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;Lcom/cloud/tmc/kernel/bridge/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;-><init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-object v0
.end method

.method public getParams()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->params:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->render:Lcom/cloud/tmc/kernel/render/IRender;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->name:Ljava/lang/String;

    return-void
.end method

.method public setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method

.method public setParams(Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->params:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setRender(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->render:Lcom/cloud/tmc/kernel/render/IRender;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->source:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeCallContext{name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->params:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->pluginId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", pluginId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;->pluginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
