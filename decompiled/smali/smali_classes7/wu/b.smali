.class public Lwu/b;
.super Luf/b;


# instance fields
.field private c:Lou/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lou/c;)V
    .locals 0

    invoke-direct {p0, p1}, Luf/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lwu/b;->c:Lou/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-super {p0, p1, p2, p3, p4}, Luf/b;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    if-eq p4, v1, :cond_4

    if-eq p4, v0, :cond_3

    const/4 v2, 0x5

    if-eq p4, v2, :cond_2

    const/4 v2, 0x6

    if-eq p4, v2, :cond_1

    const/4 v2, 0x7

    if-eq p4, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, "classN_dex"

    goto :goto_0

    :cond_1
    const-string p4, "resource"

    goto :goto_0

    :cond_2
    const-string p4, "so"

    goto :goto_0

    :cond_3
    const-string p4, "dex_opt"

    goto :goto_0

    :cond_4
    const-string p4, "dex"

    :goto_0
    const-string v2, "null"

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_5
    move-object p2, v2

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p1, v0

    const/4 p4, 0x1

    aput-object p3, p1, p4

    const/4 p3, 0x2

    aput-object p2, p1, p3

    aput-object v2, p1, v1

    const-string p2, "Tinker.CustomPatchReporter"

    const-string p3, "patch extract FAILED: type=%s, filename=%s, extractTo=%s, patchFile=%s. If type=dex, the most likely cause is base.apk/dex CRC mismatch: re-install base.apk on device and regenerate the patch."

    invoke-static {p2, p3, p1}, Lwf/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/io/File;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Luf/b;->b(Ljava/io/File;I)V

    iget-object v0, p0, Lwu/b;->c:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lou/c;->e(Ljava/io/File;I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Tinker.CustomPatchReporter"

    const-string p2, "onPatchPackageCheckFail: patch=%s errorCode=%d"

    invoke-static {p1, p2, v0}, Lwf/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Luf/b;->c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "Tinker.CustomPatchReporter"

    const-string p2, "onPatchInfoCorrupted: patch=%s old=%s new=%s"

    invoke-static {p1, p2, v0}, Lwf/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 2

    invoke-super {p0, p1, p2}, Luf/b;->d(Ljava/io/File;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lwu/b;->c:Lou/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lou/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, "null"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const/4 p1, 0x1

    aput-object v0, p2, p1

    const-string p1, "Tinker.CustomPatchReporter"

    const-string v0, "onPatchException: patch=%s throwable=%s"

    invoke-static {p1, v0, p2}, Lwf/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/io/File;ZJ)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Luf/b;->e(Ljava/io/File;ZJ)V

    iget-object v0, p0, Lwu/b;->c:Lou/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3, p4}, Lou/c;->i(Ljava/lang/String;ZJ)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 p1, 0x1

    aput-object p2, p4, p1

    const/4 p1, 0x2

    aput-object p3, p4, p1

    const-string p1, "Tinker.CustomPatchReporter"

    const-string p2, "onPatchResult: patch=%s success=%b costMs=%d"

    invoke-static {p1, p2, p4}, Lwf/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/io/File;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Luf/b;->f(Ljava/io/File;Ljava/util/List;Ljava/lang/Throwable;)V

    const-string v0, "null"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const/4 p1, 0x2

    aput-object v0, p3, p1

    const-string p1, "Tinker.CustomPatchReporter"

    const-string p2, "onPatchDexOptFail: patch=%s dexCount=%d throwable=%s"

    invoke-static {p1, p2, p3}, Lwf/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Luf/b;->g(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;)V

    const-string v0, "null"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const/4 p1, 0x1

    aput-object p3, p2, p1

    const/4 p1, 0x2

    aput-object v0, p2, p1

    const-string p1, "Tinker.CustomPatchReporter"

    const-string p3, "onPatchVersionCheckFail: patch=%s patchFileVersion=%s oldPatchInfo=%s"

    invoke-static {p1, p3, p2}, Lwf/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public h(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Luf/b;->h(Landroid/content/Intent;)V

    iget-object v0, p0, Lwu/b;->c:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lou/c;->f()V

    :cond_0
    const-string v0, "onPatchServiceStart: intent=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Tinker.CustomPatchReporter"

    invoke-static {p1, v0, v1}, Lwf/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
