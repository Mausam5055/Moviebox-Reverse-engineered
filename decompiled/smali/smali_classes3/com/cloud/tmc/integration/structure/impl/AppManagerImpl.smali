.class public final Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;
.super Lcom/cloud/tmc/kernel/node/NodeInstance;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/AppManager;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/integration/structure/App;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl$1;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl$1;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>(Landroid/os/Parcel;)V

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public declared-synchronized exitApp(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->removeChild(Lcom/cloud/tmc/kernel/node/Node;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized findApp(J)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChild(J)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->getAppStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized findAppByToken(J)Lcom/cloud/tmc/integration/structure/App;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildAt(I)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getAppStack()Ljava/util/Stack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/integration/structure/App;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startApp(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/App;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "App"

    const-string v1, "Start create app"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->printPerformanceLog(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/AppFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/AppFactory;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/AppFactory;->createApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/App;->init(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    const-string p1, "mAppStack size > 1 !!!"

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
