.class final Lcom/transsion/push/service/JobIntentService$f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/push/service/JobIntentService$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/service/JobIntentService$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/job/JobWorkItem;

.field final synthetic b:Lcom/transsion/push/service/JobIntentService$f;


# direct methods
.method constructor <init>(Lcom/transsion/push/service/JobIntentService$f;Landroid/app/job/JobWorkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/service/JobIntentService$f$a;->b:Lcom/transsion/push/service/JobIntentService$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/push/service/JobIntentService$f$a;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/push/service/JobIntentService$f$a;->b:Lcom/transsion/push/service/JobIntentService$f;

    iget-object v0, v0, Lcom/transsion/push/service/JobIntentService$f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/push/service/JobIntentService$f$a;->b:Lcom/transsion/push/service/JobIntentService$f;

    iget-object v1, v1, Lcom/transsion/push/service/JobIntentService$f;->c:Landroid/app/job/JobParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/transsion/push/service/JobIntentService$f$a;->a:Landroid/app/job/JobWorkItem;

    invoke-static {v1, v2}, Landroidx/core/app/k;->a(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    :try_start_2
    const-string v2, "JobServiceEngineImpl"

    const-string v3, "IllegalArgumentException: Failed to run mParams.completeWork(mJobWork)!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string v2, "JobServiceEngineImpl"

    const-string v3, "SecurityException: Failed to run mParams.completeWork(mJobWork)!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/service/JobIntentService$f$a;->a:Landroid/app/job/JobWorkItem;

    invoke-static {v0}, Landroidx/core/app/j;->a(Landroid/app/job/JobWorkItem;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
