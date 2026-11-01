.class public Lcom/cloud/tmc/kernel/node/NodeInstance;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/node/DataNode;
.implements Lcom/cloud/tmc/kernel/node/ValueStore;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NodeInstance"

.field protected static sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

.field private static sNodeIdBase:I

.field private static sNodeIdCounter:I


# instance fields
.field private mAlreadyFinalized:Z

.field private final mChildNodes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/kernel/node/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mNodeId:J

.field private mParentNode:Lcom/cloud/tmc/kernel/node/Node;

.field private final mValueStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdBase:I

    const/4 v0, 0x1

    sput v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mAlreadyFinalized:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

    sget v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdBase:I

    sget v1, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/cloud/tmc/kernel/node/NodeInstance;->sNodeIdCounter:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mNodeId:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mAlreadyFinalized:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mNodeId:J

    const-class v0, Lcom/cloud/tmc/kernel/node/NodeInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/node/Node;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->onInitialized()V

    return-void
.end method

.method public static bindExtensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    sput-object p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    return-void
.end method

.method public static getBoundExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    return-object v0
.end method


# virtual methods
.method public synthetic addFixedView(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/node/a;->a(Lcom/cloud/tmc/kernel/node/Node;Landroid/view/View;)V

    return-void
.end method

.method public bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/cloud/tmc/kernel/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "NodeInstance"

    const-string v1, "getStringValue error!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChild(J)Lcom/cloud/tmc/kernel/node/Node;
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/node/Node;

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getChildAt(I)Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/node/Node;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public getData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getData(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iget-object p2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "NodeInstance"

    const-string v1, "getData Exception"

    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getGroup()Lcom/cloud/tmc/kernel/security/Group;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    return-object v0
.end method

.method public getIndexOfChild(Lcom/cloud/tmc/kernel/node/Node;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/node/Node;

    if-ne p1, v4, :cond_1

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "NodeInstance"

    const-string v1, "getStringValue error!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getJsonArrayValue(Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Lcom/google/gson/JsonArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "NodeInstance"

    const-string v1, "getStringValue error!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJsonValue(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Lcom/google/gson/JsonObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "NodeInstance"

    const-string v1, "getStringValue error!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLongValue(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p1

    const-string v0, "NodeInstance"

    const-string v1, "getStringValue error!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNodeId()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mNodeId:J

    return-wide v0
.end method

.method public getParentNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "NodeInstance"

    const-string v1, "getStringValue error!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public inquiry(Ljava/util/List;Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;",
            "Lcom/cloud/tmc/kernel/security/Accessor$InquiryCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public isChildless()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized onFinalized()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->exitNode(Lcom/cloud/tmc/kernel/node/Node;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mAlreadyFinalized:Z

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onInitialized()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->enterNode(Lcom/cloud/tmc/kernel/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public peekChild()Lcom/cloud/tmc/kernel/node/Node;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/node/Node;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public popChild()Lcom/cloud/tmc/kernel/node/Node;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/node/Node;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pushChild(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1, p0}, Lcom/cloud/tmc/kernel/node/Node;->setParentNode(Lcom/cloud/tmc/kernel/node/Node;)V

    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putBooleanValue(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIntValue(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putJsonArrayValue(Ljava/lang/String;Lcom/google/gson/JsonArray;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putJsonValue(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLongValue(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mValueStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeChild(Lcom/cloud/tmc/kernel/node/Node;)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mChildNodes:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setData(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mDataStore:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setParentNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method

.method public usePermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public waitOnFinalized()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mFinalizedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mAlreadyFinalized:Z

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    return v0

    :goto_0
    const-string v2, "NodeInstance"

    const-string v3, "Interrupted!"

    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mNodeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/cloud/tmc/kernel/node/NodeInstance;->mParentNode:Lcom/cloud/tmc/kernel/node/Node;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
