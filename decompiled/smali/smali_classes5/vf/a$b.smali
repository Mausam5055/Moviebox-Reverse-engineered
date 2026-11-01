.class public Lvf/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Z

.field private d:I

.field private e:Luf/c;

.field private f:Luf/d;

.field private g:Lsf/b;

.field private h:Lrf/a;

.field private i:Ljava/io/File;

.field private j:Ljava/io/File;

.field private k:Ljava/io/File;

.field private l:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lvf/a$b;->d:I

    if-eqz p1, :cond_1

    iput-object p1, p0, Lvf/a$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isInMainProcess(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lvf/a$b;->b:Z

    invoke-static {p1}, Lwf/b;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lvf/a$b;->c:Z

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lvf/a$b;->i:Ljava/io/File;

    const-string v1, "Tinker.Tinker"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "patchDirectory is null!"

    invoke-static {v1, v0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lvf/a$b;->j:Ljava/io/File;

    iget-object p1, p0, Lvf/a$b;->i:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lvf/a$b;->k:Ljava/io/File;

    iget-object p1, p0, Lvf/a$b;->i:Ljava/io/File;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "tinker patch directory: %s"

    invoke-static {v1, p1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lvf/a;
    .locals 15

    iget v0, p0, Lvf/a$b;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    iput v0, p0, Lvf/a$b;->d:I

    :cond_0
    iget-object v0, p0, Lvf/a$b;->e:Luf/c;

    if-nez v0, :cond_1

    new-instance v0, Luf/a;

    iget-object v1, p0, Lvf/a$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Luf/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvf/a$b;->e:Luf/c;

    :cond_1
    iget-object v0, p0, Lvf/a$b;->f:Luf/d;

    if-nez v0, :cond_2

    new-instance v0, Luf/b;

    iget-object v1, p0, Lvf/a$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Luf/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvf/a$b;->f:Luf/d;

    :cond_2
    iget-object v0, p0, Lvf/a$b;->g:Lsf/b;

    if-nez v0, :cond_3

    new-instance v0, Lsf/a;

    iget-object v1, p0, Lvf/a$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsf/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvf/a$b;->g:Lsf/b;

    :cond_3
    iget-object v0, p0, Lvf/a$b;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lvf/a$b;->l:Ljava/lang/Boolean;

    :cond_4
    new-instance v0, Lvf/a;

    iget-object v2, p0, Lvf/a$b;->a:Landroid/content/Context;

    iget v3, p0, Lvf/a$b;->d:I

    iget-object v4, p0, Lvf/a$b;->e:Luf/c;

    iget-object v5, p0, Lvf/a$b;->f:Luf/d;

    iget-object v6, p0, Lvf/a$b;->g:Lsf/b;

    iget-object v7, p0, Lvf/a$b;->i:Ljava/io/File;

    iget-object v8, p0, Lvf/a$b;->j:Ljava/io/File;

    iget-object v9, p0, Lvf/a$b;->k:Ljava/io/File;

    iget-object v10, p0, Lvf/a$b;->h:Lrf/a;

    iget-boolean v11, p0, Lvf/a$b;->b:Z

    iget-boolean v12, p0, Lvf/a$b;->c:Z

    iget-object v1, p0, Lvf/a$b;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lvf/a;-><init>(Landroid/content/Context;ILuf/c;Luf/d;Lsf/b;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lrf/a;ZZZLvf/a$a;)V

    return-object v0
.end method

.method public b(Lsf/b;)Lvf/a$b;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lvf/a$b;->g:Lsf/b;

    if-nez v0, :cond_0

    iput-object p1, p0, Lvf/a$b;->g:Lsf/b;

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "listener is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "listener must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Luf/c;)Lvf/a$b;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lvf/a$b;->e:Luf/c;

    if-nez v0, :cond_0

    iput-object p1, p0, Lvf/a$b;->e:Luf/c;

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "loadReporter is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "loadReporter must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Luf/d;)Lvf/a$b;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lvf/a$b;->f:Luf/d;

    if-nez v0, :cond_0

    iput-object p1, p0, Lvf/a$b;->f:Luf/d;

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "patchReporter is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "patchReporter must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(I)Lvf/a$b;
    .locals 2

    iget v0, p0, Lvf/a$b;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lvf/a$b;->d:I

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "tinkerFlag is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/Boolean;)Lvf/a$b;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lvf/a$b;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iput-object p1, p0, Lvf/a$b;->l:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "tinkerLoadVerifyFlag is already set."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v0, "tinkerLoadVerifyFlag must not be null."

    invoke-direct {p1, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
