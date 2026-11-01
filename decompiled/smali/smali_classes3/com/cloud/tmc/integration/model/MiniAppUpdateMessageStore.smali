.class public final Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BG\u0012\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u00c6\u0003J\u0015\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u00c6\u0003J\u0015\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u00c6\u0003JK\u0010\u0010\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0004H\u00d6\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "onCheckForUpdate",
        "Ljava/util/WeakHashMap;",
        "",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "onUpdateFailed",
        "onUpdateReady",
        "(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;)V",
        "getOnCheckForUpdate",
        "()Ljava/util/WeakHashMap;",
        "getOnUpdateFailed",
        "getOnUpdateReady",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final onCheckForUpdate:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onUpdateFailed:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onUpdateReady:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onCheckForUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpdateFailed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpdateReady"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onCheckForUpdate:Ljava/util/WeakHashMap;

    iput-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateFailed:Ljava/util/WeakHashMap;

    iput-object p3, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateReady:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    new-instance p3, Ljava/util/WeakHashMap;

    invoke-direct {p3}, Ljava/util/WeakHashMap;-><init>()V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;ILjava/lang/Object;)Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onCheckForUpdate:Ljava/util/WeakHashMap;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateFailed:Ljava/util/WeakHashMap;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateReady:Ljava/util/WeakHashMap;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->copy(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;)Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onCheckForUpdate:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public final component2()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateFailed:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public final component3()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateReady:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public final copy(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;)Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;)",
            "Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;"
        }
    .end annotation

    const-string v0, "onCheckForUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpdateFailed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpdateReady"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;Ljava/util/WeakHashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onCheckForUpdate:Ljava/util/WeakHashMap;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onCheckForUpdate:Ljava/util/WeakHashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateFailed:Ljava/util/WeakHashMap;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateFailed:Ljava/util/WeakHashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateReady:Ljava/util/WeakHashMap;

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateReady:Ljava/util/WeakHashMap;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOnCheckForUpdate()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onCheckForUpdate:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public final getOnUpdateFailed()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateFailed:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public final getOnUpdateReady()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateReady:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onCheckForUpdate:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateFailed:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateReady:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onCheckForUpdate:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateFailed:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->onUpdateReady:Ljava/util/WeakHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiniAppUpdateMessageStore(onCheckForUpdate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onUpdateFailed="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onUpdateReady="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
