.class public abstract Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor$ITinkerHotplugProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_TARGET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mInstalled:Z

.field private mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_TARGET;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->mTarget:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->mInstalled:Z

    return-void
.end method


# virtual methods
.method protected decorate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_TARGET;)TT_TARGET;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-object p1
.end method

.method protected abstract fetchTarget()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_TARGET;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected abstract inject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_TARGET;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public declared-synchronized install()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tinker/loader/hotplug/interceptor/InterceptFailedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->fetchTarget()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->mTarget:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->decorate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->inject(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v1, "Tinker.Interceptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was already hooked."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->mInstalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->mTarget:Ljava/lang/Object;

    new-instance v1, Lcom/tencent/tinker/loader/hotplug/interceptor/InterceptFailedException;

    invoke-direct {v1, v0}, Lcom/tencent/tinker/loader/hotplug/interceptor/InterceptFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public declared-synchronized uninstall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tinker/loader/hotplug/interceptor/InterceptFailedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->mInstalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->mTarget:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->inject(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->mTarget:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->mInstalled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/tencent/tinker/loader/hotplug/interceptor/InterceptFailedException;

    invoke-direct {v1, v0}, Lcom/tencent/tinker/loader/hotplug/interceptor/InterceptFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
