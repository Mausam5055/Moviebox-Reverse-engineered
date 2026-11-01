.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/Sj;


# static fields
.field private static final Sj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->Sj:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/Sj;-><init>()V

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    return-object v0
.end method


# virtual methods
.method public broadcastPermissionListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->Sj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->onGranted()V

    goto :goto_1

    :cond_1
    invoke-interface {v2, p2}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->onDenied(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    sget-object p2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->Sj:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
