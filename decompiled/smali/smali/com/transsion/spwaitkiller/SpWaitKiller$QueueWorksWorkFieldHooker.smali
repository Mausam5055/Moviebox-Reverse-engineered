.class final Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/spwaitkiller/SpWaitKiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueueWorksWorkFieldHooker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;",
        "Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;",
        "<init>",
        "()V",
        "reflectionFailed",
        "",
        "sLock",
        "",
        "sWorkField",
        "Ljava/lang/reflect/Field;",
        "looper",
        "Landroid/os/Looper;",
        "proxyWork",
        "",
        "reProxySWork",
        "SpWaitKiller_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private looper:Landroid/os/Looper;

.field private reflectionFailed:Z

.field private sLock:Ljava/lang/Object;

.field private sWorkField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.app.QueuedWork"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getHandler"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.os.Handler"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->looper:Landroid/os/Looper;

    const-string v2, "sWork"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->sWorkField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    const-string v2, "sLock"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->sLock:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    goto :goto_0

    :catch_1
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    goto :goto_0

    :catch_2
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    goto :goto_0

    :catch_3
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    goto :goto_0

    :catch_4
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final proxyWork()V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->sLock:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->sWorkField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->looper:Landroid/os/Looper;

    if-eqz v2, :cond_1

    monitor-enter v0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type java.util.LinkedList<*>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/LinkedList;

    new-instance v5, Lcom/transsion/spwaitkiller/ProxySWork;

    invoke-direct {v5, v4, v2, p0}, Lcom/transsion/spwaitkiller/ProxySWork;-><init>(Ljava/util/LinkedList;Landroid/os/Looper;Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;)V

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method public reProxySWork()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->proxyWork()V

    return-void
.end method
