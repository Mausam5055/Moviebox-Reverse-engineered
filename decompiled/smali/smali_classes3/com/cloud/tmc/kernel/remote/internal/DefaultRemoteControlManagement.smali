.class public Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/remote/RemoteControlManagement;


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;->mCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected hasRemoteAnnotation(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRemoteExtension(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/remote/internal/DefaultRemoteControlManagement;->hasRemoteAnnotation(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
