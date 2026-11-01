.class public Lsf/a;
.super Ljava/lang/Object;

# interfaces
.implements Lsf/b;


# instance fields
.field protected final a:Landroid/content/Context;

.field private b:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsf/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic b(Lsf/a;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lsf/a;->b:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private e()V
    .locals 4

    :try_start_0
    new-instance v0, Lsf/a$a;

    invoke-direct {v0, p0}, Lsf/a$a;-><init>(Lsf/a;)V

    iput-object v0, p0, Lsf/a;->b:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lsf/a;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/tinker/lib/service/TinkerPatchForeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lsf/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lsf/a;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsf/a;->c(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method protected c(Ljava/lang/String;Z)I
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lsf/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsf/a;->e()V

    iget-object v1, p0, Lsf/a;->a:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->j(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lsf/a;->a:Landroid/content/Context;

    invoke-static {p2}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object p2

    invoke-virtual {p2}, Lvf/a;->g()Luf/c;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1, v0}, Luf/c;->h(Ljava/io/File;I)V

    :goto_0
    return v0
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lsf/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v0

    invoke-virtual {v0}, Lvf/a;->t()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lsf/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnableWithSharedPreferences(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_1

    return v2

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Lvf/a;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x4

    return p1

    :cond_3
    iget-object p1, p0, Lsf/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lwf/b;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x3

    return p1

    :cond_4
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmJit()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, -0x5

    return p1

    :cond_5
    invoke-virtual {v0}, Lvf/a;->m()Lvf/c;

    move-result-object p1

    invoke-virtual {v0}, Lvf/a;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget-boolean p1, p1, Lvf/c;->e:Z

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lvf/a;->h()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :try_start_0
    invoke-static {p1, v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->readAndCheckPropertyWithLock(Ljava/io/File;Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p1, p1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_7

    const/4 p1, -0x6

    return p1

    :catchall_0
    :cond_7
    :goto_0
    iget-object p1, p0, Lsf/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lwf/c;->b(Landroid/content/Context;)Lwf/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lwf/c;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, -0x7

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1

    :cond_9
    :goto_1
    const/4 p1, -0x1

    return p1
.end method
