.class public Lwu/a;
.super Luf/a;


# instance fields
.field private b:Lou/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lou/c;)V
    .locals 0

    invoke-direct {p0, p1}, Luf/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lwu/a;->b:Lou/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Luf/a;->a(Ljava/lang/Throwable;I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "Tinker.CustomLoadReporter"

    const-string v1, "onLoadException: errorCode=%d throwable=%s"

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lwu/a;->b:Lou/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lou/c;->a(Ljava/lang/Throwable;I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/io/File;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Luf/a;->b(Ljava/io/File;I)V

    :try_start_0
    iget-object p1, p0, Luf/a;->a:Landroid/content/Context;

    sget-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->NONE:Lcom/transsion/tinker/lib/custom/api/PatchState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package_check_fail_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "Tinker.CustomLoadReporter"

    const-string v0, "onLoadPackageCheckFail: reset PatchStateStore failed: %s"

    invoke-static {p1, v0, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/io/File;IZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Luf/a;->c(Ljava/io/File;IZ)V

    return-void
.end method

.method public d(ILjava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Luf/a;->d(ILjava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/io/File;IJ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Luf/a;->e(Ljava/io/File;IJ)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    const/4 v2, 0x2

    aput-object p1, v4, v2

    const-string p1, "Tinker.CustomLoadReporter"

    const-string v2, "onLoadResult: loadCode=%d costMs=%d patchDir=%s"

    invoke-static {p1, v2, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 v2, -0x2

    if-eq p2, v2, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    const/4 v2, -0x8

    if-ne p2, v2, :cond_2

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "disarm startup watchdog: loadCode=%d"

    invoke-static {p1, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lnu/h;->o()V

    :cond_2
    iget-object p1, p0, Lwu/a;->b:Lou/c;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2, p3, p4}, Lou/c;->k(IJ)V

    :cond_3
    return-void
.end method

.method public f(Ljava/io/File;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Luf/a;->f(Ljava/io/File;I)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Luf/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public h(Ljava/io/File;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Luf/a;->h(Ljava/io/File;I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "Tinker.CustomLoadReporter"

    const-string v1, "onLoadPatchListenerReceiveFail: patchFile=%s errorCode=%d"

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lwu/a;->b:Lou/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lou/c;->e(Ljava/io/File;I)V

    :cond_1
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Luf/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
