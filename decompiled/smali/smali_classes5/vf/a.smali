.class public Lvf/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvf/a$b;
    }
.end annotation


# static fields
.field private static o:Lvf/a;

.field private static p:Z


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/io/File;

.field final c:Lsf/b;

.field final d:Luf/c;

.field final e:Luf/d;

.field final f:Ljava/io/File;

.field final g:Ljava/io/File;

.field final h:Lrf/a;

.field final i:Z

.field final j:Z

.field final k:Z

.field l:I

.field m:Lvf/c;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILuf/c;Luf/d;Lsf/b;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lrf/a;ZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvf/a;->n:Z

    iput-object p1, p0, Lvf/a;->a:Landroid/content/Context;

    iput-object p5, p0, Lvf/a;->c:Lsf/b;

    iput-object p3, p0, Lvf/a;->d:Luf/c;

    iput-object p4, p0, Lvf/a;->e:Luf/d;

    iput p2, p0, Lvf/a;->l:I

    iput-object p6, p0, Lvf/a;->b:Ljava/io/File;

    iput-object p7, p0, Lvf/a;->f:Ljava/io/File;

    iput-object p8, p0, Lvf/a;->g:Ljava/io/File;

    iput-object p9, p0, Lvf/a;->h:Lrf/a;

    iput-boolean p10, p0, Lvf/a;->i:Z

    iput-boolean p12, p0, Lvf/a;->k:Z

    iput-boolean p11, p0, Lvf/a;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILuf/c;Luf/d;Lsf/b;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lrf/a;ZZZLvf/a$a;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lvf/a;-><init>(Landroid/content/Context;ILuf/c;Luf/d;Lsf/b;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lrf/a;ZZZ)V

    return-void
.end method

.method public static d(Lvf/a;)V
    .locals 1

    sget-object v0, Lvf/a;->o:Lvf/a;

    if-nez v0, :cond_0

    sput-object p0, Lvf/a;->o:Lvf/a;

    return-void

    :cond_0
    new-instance p0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "Tinker instance is already set."

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Landroid/content/Context;)Lvf/a;
    .locals 2

    sget-boolean v0, Lvf/a;->p:Z

    if-eqz v0, :cond_1

    const-class v0, Lvf/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvf/a;->o:Lvf/a;

    if-nez v1, :cond_0

    new-instance v1, Lvf/a$b;

    invoke-direct {v1, p0}, Lvf/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lvf/a$b;->a()Lvf/a;

    move-result-object p0

    sput-object p0, Lvf/a;->o:Lvf/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lvf/a;->o:Lvf/a;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "you must install tinker before get tinker sInstance"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lvf/a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->cleanPatch(Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lvf/a;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvf/a;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lvf/a;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvf/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lvf/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public f()Lrf/a;
    .locals 1

    iget-object v0, p0, Lvf/a;->h:Lrf/a;

    return-object v0
.end method

.method public g()Luf/c;
    .locals 1

    iget-object v0, p0, Lvf/a;->d:Luf/c;

    return-object v0
.end method

.method public h()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lvf/a;->b:Ljava/io/File;

    return-object v0
.end method

.method public i()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lvf/a;->f:Ljava/io/File;

    return-object v0
.end method

.method public j()Lsf/b;
    .locals 1

    iget-object v0, p0, Lvf/a;->c:Lsf/b;

    return-object v0
.end method

.method public k()Luf/d;
    .locals 1

    iget-object v0, p0, Lvf/a;->e:Luf/d;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lvf/a;->l:I

    return v0
.end method

.method public m()Lvf/c;
    .locals 1

    iget-object v0, p0, Lvf/a;->m:Lvf/c;

    return-object v0
.end method

.method public n(Landroid/content/Intent;Ljava/lang/Class;Ltf/a;)V
    .locals 5

    const/4 v0, 0x1

    sput-boolean v0, Lvf/a;->p:Z

    invoke-static {p3, p2}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->k(Ltf/a;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lvf/a;->t()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p3, v1

    const-string p2, "1.9.15.2"

    aput-object p2, p3, v0

    const-string p2, "Tinker.Tinker"

    const-string v0, "try to install tinker, isEnable: %b, version: %s"

    invoke-static {p2, v0, p3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lvf/a;->t()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p1, "tinker is disabled"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    new-instance p3, Lvf/c;

    invoke-direct {p3}, Lvf/c;-><init>()V

    iput-object p3, p0, Lvf/a;->m:Lvf/c;

    invoke-virtual {p0}, Lvf/a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lvf/c;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object p1, p0, Lvf/a;->d:Luf/c;

    iget-object p3, p0, Lvf/a;->b:Ljava/io/File;

    iget-object v0, p0, Lvf/a;->m:Lvf/c;

    iget v2, v0, Lvf/c;->p:I

    iget-wide v3, v0, Lvf/c;->q:J

    invoke-interface {p1, p3, v2, v3, v4}, Luf/c;->e(Ljava/io/File;IJ)V

    iget-boolean p1, p0, Lvf/a;->n:Z

    if-nez p1, :cond_1

    const-string p1, "tinker load fail!"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string p2, "intentResult must not be null."

    invoke-direct {p1, p2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()Z
    .locals 1

    iget v0, p0, Lvf/a;->l:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForDex(I)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    iget v0, p0, Lvf/a;->l:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForNativeLib(I)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    iget v0, p0, Lvf/a;->l:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForResource(I)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lvf/a;->i:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lvf/a;->j:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget v0, p0, Lvf/a;->l:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabled(I)Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lvf/a;->n:Z

    return v0
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lvf/a;->l:I

    return-void
.end method

.method public w(Z)V
    .locals 0

    iput-boolean p1, p0, Lvf/a;->n:Z

    return-void
.end method
