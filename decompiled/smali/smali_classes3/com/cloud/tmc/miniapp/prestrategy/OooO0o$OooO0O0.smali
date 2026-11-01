.class public final Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    const-string v0, "Prefetch:StrategyExecuteManager"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getDataType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StrategyTask execute. (appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExpiredTime()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "Prefetch:StrategyExecuteManager"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getDataType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this strategy(appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has expired."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0o0:Landroid/util/LruCache;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-boolean v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0O0:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "Prefetch:StrategyExecuteManager"

    const-string v3, "no network, push wait queue."

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception v1

    goto/16 :goto_0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getNetType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    sget v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0OO:I

    if-eq v1, v3, :cond_2

    const-string v1, "Prefetch:StrategyExecuteManager"

    const-string v3, "this strategy require wifi. push wait queue."

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_2
    :try_start_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getDataType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_7

    const/16 v2, 0x32

    if-eq v1, v2, :cond_5

    const/16 v2, 0x34

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;-><init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;->OooO00o()V

    goto :goto_2

    :cond_5
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;->OooO00o()V

    goto :goto_2

    :cond_7
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getMiniappType()I

    move-result v0

    if-ne v0, v3, :cond_9

    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;-><init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o()V

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0OO;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0OO;->OooO00o()V

    goto :goto_2

    :goto_0
    monitor-exit v0

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    const-string v1, "Prefetch:StrategyExecuteManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    return-void
.end method
