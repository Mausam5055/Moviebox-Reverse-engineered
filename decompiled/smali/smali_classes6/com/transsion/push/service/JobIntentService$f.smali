.class final Lcom/transsion/push/service/JobIntentService$f;
.super Landroid/app/job/JobServiceEngine;

# interfaces
.implements Lcom/transsion/push/service/JobIntentService$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/service/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/service/JobIntentService$f$a;
    }
.end annotation


# instance fields
.field final a:Lcom/transsion/push/service/JobIntentService;

.field final b:Ljava/lang/Object;

.field c:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/transsion/push/service/JobIntentService;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/push/service/JobIntentService$f;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/push/service/JobIntentService$f;->a:Lcom/transsion/push/service/JobIntentService;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    invoke-static {p0}, Lcom/transsion/push/service/a;->a(Lcom/transsion/push/service/JobIntentService$f;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/transsion/push/service/JobIntentService$e;
    .locals 5

    iget-object v0, p0, Lcom/transsion/push/service/JobIntentService$f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/push/service/JobIntentService$f;->c:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroidx/core/app/i;->a(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroidx/core/app/j;->a(Landroid/app/job/JobWorkItem;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/push/service/JobIntentService$f;->a:Lcom/transsion/push/service/JobIntentService;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v0, Lcom/transsion/push/service/JobIntentService$f$a;

    invoke-direct {v0, p0, v1}, Lcom/transsion/push/service/JobIntentService$f$a;-><init>(Lcom/transsion/push/service/JobIntentService$f;Landroid/app/job/JobWorkItem;)V

    return-object v0

    :cond_1
    return-object v2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "JobServiceEngineImpl"

    const-string v4, "Failed to run mParams.dequeueWork()!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    iput-object p1, p0, Lcom/transsion/push/service/JobIntentService$f;->c:Landroid/app/job/JobParameters;

    iget-object p1, p0, Lcom/transsion/push/service/JobIntentService$f;->a:Lcom/transsion/push/service/JobIntentService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/push/service/JobIntentService;->c(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    iget-object p1, p0, Lcom/transsion/push/service/JobIntentService$f;->a:Lcom/transsion/push/service/JobIntentService;

    invoke-virtual {p1}, Lcom/transsion/push/service/JobIntentService;->b()Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/push/service/JobIntentService$f;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/transsion/push/service/JobIntentService$f;->c:Landroid/app/job/JobParameters;

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
