.class Lnu/h$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnu/h;->D(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnu/h$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tinker/lib/service/PatchResult;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lnu/h$b;->b(Lcom/tencent/tinker/lib/service/PatchResult;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Lcom/tencent/tinker/lib/service/PatchResult;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "Tinker.HotfixHelper"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lnu/h;->i()Lwu/f;

    move-result-object v2

    invoke-virtual {v2}, Lwu/f;->f()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    invoke-static {}, Lnu/h;->i()Lwu/f;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    invoke-virtual {v2, v3, v4, p1, p2}, Lwu/f;->i(Ljava/lang/String;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-string p1, "WARN"

    if-eqz p0, :cond_3

    :try_start_1
    iget-boolean p2, p0, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    if-eqz p2, :cond_2

    const-string p2, "INFO"

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install result: success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " patchVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, p2, v1, v2}, Luu/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnu/h;->i()Lwu/f;

    move-result-object p2

    invoke-virtual {p2, p0}, Lwu/f;->j(Lcom/tencent/tinker/lib/service/PatchResult;)V

    iget-boolean p2, p0, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/tencent/tinker/lib/service/PatchResult;->e:Ljava/lang/Throwable;

    if-eqz p2, :cond_3

    invoke-static {}, Lnu/h;->i()Lwu/f;

    move-result-object p2

    iget-object v2, p0, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tinker/lib/service/PatchResult;->e:Ljava/lang/Throwable;

    invoke-virtual {p2, v2, v3}, Lwu/f;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p0, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rollback triggered: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, v1, p2}, Luu/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnu/h;->i()Lwu/f;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lwu/f;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lyu/a;->m(Landroid/content/Context;Z)V

    :cond_4
    if-eqz p5, :cond_5

    if-eqz p0, :cond_5

    invoke-static {}, Lnu/h;->i()Lwu/f;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    invoke-virtual {p1, p0, p5}, Lwu/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p0, "reporter callback failed: %s"

    invoke-static {v1, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.tinker.custom.action.PATCH_RESULT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnu/h;->i()Lwu/f;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, p1

    const-string v1, "Tinker.HotfixHelper"

    const-string v3, "onReceive PATCH_RESULT: sDeferredReporter=%s"

    invoke-static {v1, v3, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v2, "patch_result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/tencent/tinker/lib/service/PatchResult;

    const-string v2, "rollback_reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "blacklist_reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "install_cost_ms"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Lnu/h;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iget-object v7, p0, Lnu/h$b;->a:Landroid/content/Context;

    new-instance v2, Lnu/i;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lnu/i;-><init>(Lcom/tencent/tinker/lib/service/PatchResult;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p1

    const-string p1, "onReceive error: %s"

    invoke-static {v1, p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
