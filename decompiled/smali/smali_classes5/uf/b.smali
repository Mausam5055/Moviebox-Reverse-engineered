.class public Luf/b;
.super Ljava/lang/Object;

# interfaces
.implements Luf/d;


# static fields
.field private static b:Z


# instance fields
.field protected final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luf/b;->a:Landroid/content/Context;

    return-void
.end method

.method private i(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    .locals 3

    invoke-static {p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    aput-object v0, v1, p4

    const/4 p4, 0x2

    aput-object p2, v1, p4

    const/4 p2, 0x3

    aput-object p3, v1, p2

    const-string p2, "Tinker.DefaultPatchReporter"

    const-string p3, "patchReporter onPatchTypeExtractFail: file extract fail type: %s, path: %s, extractTo: %s, filename: %s"

    invoke-static {p2, p3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Luf/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lvf/a;->b(Ljava/io/File;)V

    return-void
.end method

.method public b(Ljava/io/File;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter onPatchPackageCheckFail: package check failed. path: %s, code: %d"

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x3

    if-eq p2, v0, :cond_0

    const/4 v0, -0x4

    if-eq p2, v0, :cond_0

    const/4 v0, -0x8

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object p2, p0, Luf/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lvf/a;->b(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "patchReporter onPatchInfoCorrupted: patch info is corrupted. old: %s, new: %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "Tinker.DefaultPatchReporter"

    invoke-static {p2, p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Luf/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object p1

    invoke-virtual {p1}, Lvf/a;->a()V

    return-void
.end method

.method public d(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter onPatchException: patch exception path: %s, throwable: %s"

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "tinker patch exception, welcome to submit issue to us: https://github.com/Tencent/tinker/issues"

    invoke-static {v0, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "tinker patch exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p2, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Luf/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object p2

    invoke-virtual {p2}, Lvf/a;->v()V

    iget-object p2, p0, Luf/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lvf/a;->b(Ljava/io/File;)V

    return-void
.end method

.method public e(Ljava/io/File;ZJ)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

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

    const-string p1, "Tinker.DefaultPatchReporter"

    const-string p2, "patchReporter onPatchResult: patch all result path: %s, success: %b, cost: %d"

    invoke-static {p1, p2, p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean p1, Luf/b;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Luf/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lwf/c;->b(Landroid/content/Context;)Lwf/c;

    move-result-object p1

    invoke-virtual {p1}, Lwf/c;->e()V

    :cond_0
    return-void
.end method

.method public f(Ljava/io/File;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Tinker.DefaultPatchReporter"

    const-string v4, "patchReporter onPatchDexOptFail: dex opt fail path: %s, dex size: %d"

    invoke-static {v1, v4, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "onPatchDexOptFail:"

    invoke-static {v1, p3, v3, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkDexOptExist failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v1, "checkDexOptFormat failed"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Luf/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lvf/a;->b(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    :goto_0
    sput-boolean v0, Luf/b;->b:Z

    invoke-direct {p0, p2}, Luf/b;->i(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public g(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    const-string p1, "Tinker.DefaultPatchReporter"

    const-string p3, "patchReporter onPatchVersionCheckFail: patch version exist. path: %s, version: %s"

    invoke-static {p1, p3, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public h(Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Tinker.DefaultPatchReporter"

    const-string v3, "patchReporter onPatchServiceStart: patch service start"

    invoke-static {v2, v3, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean v0, Luf/b;->b:Z

    iget-object v0, p0, Luf/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lwf/c;->b(Landroid/content/Context;)Lwf/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lwf/c;->f(Landroid/content/Intent;)V

    return-void
.end method
