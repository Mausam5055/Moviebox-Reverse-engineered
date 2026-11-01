.class public abstract Lxu/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lou/c;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Tinker.AutoRollbackMgr"

    if-nez p0, :cond_0

    const-string p0, "tryRollback: context is null, skip rollback for patchId=%s reason=%s"

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    invoke-static {v3, p0, p3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v4

    invoke-virtual {v4}, Lvf/a;->a()V

    sget-object v4, Lcom/transsion/tinker/lib/custom/api/PatchState;->ROLLBACK:Lcom/transsion/tinker/lib/custom/api/PatchState;

    invoke-static {p0, v4, p1, p2}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lyu/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "auto rollback executed, patchId=%s, reason=%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-interface {p3, p1, p2}, Lou/c;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rollback_fail:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/transsion/tinker/lib/custom/api/PatchState;->BLACKLISTED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    invoke-static {p0, v4, p1, v0}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lyu/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v2

    const-string p0, "auto rollback failed: %s"

    invoke-static {v3, p0, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-interface {p3, p1, v0}, Lou/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
