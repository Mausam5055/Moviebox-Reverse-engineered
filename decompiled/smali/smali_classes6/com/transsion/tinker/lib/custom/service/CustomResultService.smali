.class public Lcom/transsion/tinker/lib/custom/service/CustomResultService;
.super Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;-><init>()V

    return-void
.end method

.method private e(Lcom/tencent/tinker/lib/service/PatchResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Tinker.CustomResultService"

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.tencent.tinker.custom.action.PATCH_RESULT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "patch_result"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v4, "install_cost_ms"

    iget-wide v5, p1, Lcom/tencent/tinker/lib/service/PatchResult;->totalCostTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const-string v4, "rollback_reason"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "blacklist_reason"

    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string p2, "sendPatchResultBroadcast: success=%s pkg=%s"

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p3, v4, v1

    invoke-static {v2, p2, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "sendPatchResultBroadcast failed: %s"

    invoke-static {v2, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/lib/service/PatchResult;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "Tinker.CustomResultService"

    if-nez p1, :cond_0

    const-string p1, "received null result"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tinker/lib/service/PatchResult;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "onPatchResult: %s"

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lyu/a;->f(Landroid/content/Context;)Lxu/b;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lyu/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    :goto_0
    iget-boolean v4, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/transsion/tinker/lib/custom/api/PatchState;->INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    invoke-static {v2, v4, v3, v5}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lyu/a;->h(Landroid/content/Context;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/tencent/tinker/lib/service/PatchResult;->rawPatchFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;->d(Ljava/io/File;)V

    invoke-direct {p0, p1, v5, v5}, Lcom/transsion/tinker/lib/custom/service/CustomResultService;->e(Lcom/tencent/tinker/lib/service/PatchResult;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;->c(Lcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_3

    :cond_2
    const-string p1, "already on new patch version, no need restart"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->NONE:Lcom/transsion/tinker/lib/custom/api/PatchState;

    iget-object v4, p1, Lcom/tencent/tinker/lib/service/PatchResult;->e:Ljava/lang/Throwable;

    const-string v6, "install_fail"

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v6

    :goto_1
    invoke-static {v0, v1, v3, v4}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v2, Lxu/b;->a:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v2, Lxu/b;->d:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v6, v5}, Lxu/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lou/c;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lyu/a;->e(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/api/PatchState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lyu/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/tinker/lib/custom/api/PatchState;->BLACKLISTED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lyu/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v6

    move-object v5, v0

    goto :goto_2

    :cond_6
    move-object v0, v5

    move-object v5, v6

    goto :goto_2

    :cond_7
    move-object v0, v5

    :goto_2
    invoke-direct {p0, p1, v5, v0}, Lcom/transsion/tinker/lib/custom/service/CustomResultService;->e(Lcom/tencent/tinker/lib/service/PatchResult;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
