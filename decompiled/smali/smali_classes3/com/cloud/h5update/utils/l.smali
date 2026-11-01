.class public final Lcom/cloud/h5update/utils/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/h5update/utils/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/h5update/utils/l;

    invoke-direct {v0}, Lcom/cloud/h5update/utils/l;-><init>()V

    sput-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/h5update/bean/PreloadResource;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/h5update/utils/l;->o(Lcom/cloud/h5update/bean/PreloadResource;Landroid/content/Context;)V

    return-void
.end method

.method private final d(Lcom/cloud/h5update/bean/PreloadResource;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/cloud/h5update/utils/l;->i(Lcom/cloud/h5update/bean/PreloadResource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/h5update/utils/l;->h(Ljava/lang/String;)Lcom/cloud/h5update/bean/DownloadEntity;

    move-result-object v1

    const-string v2, "failed to delete file:"

    if-eqz v1, :cond_2

    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Lcom/cloud/h5update/bean/DownloadEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cloud/h5update/bean/DownloadEntity;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p1, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lgg/b;->a:Lgg/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lgg/b;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/cloud/h5update/utils/l;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/h5update/download/DownloadManager;->g:Lcom/cloud/h5update/download/DownloadManager$a;

    invoke-virtual {p1}, Lcom/cloud/h5update/download/DownloadManager$a;->a()Lcom/cloud/h5update/download/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cloud/h5update/download/DownloadManager;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_1
    sget-object v0, Lgg/b;->a:Lgg/b;

    invoke-virtual {v0, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/PreloadResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/cloud/h5update/utils/l;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/PreloadResource;->getEncryptedStaticZip()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->f()Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lgg/b;->a:Lgg/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgg/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    sget-object v0, Lgg/b;->a:Lgg/b;

    invoke-virtual {v0, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method

.method private final g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/h5update/utils/l;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lgg/b;->a:Lgg/b;

    const-string v0, "create file dir success"

    invoke-virtual {p2, v0}, Lgg/b;->b(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private final j(Lcom/cloud/h5update/bean/DownloadEntity;)Ljava/io/File;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getFileName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private final l(Lcom/cloud/h5update/bean/UpdateEntity;)V
    .locals 3

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getUpdateMode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lgg/b;->a:Lgg/b;

    const-string v0, "updateEntity.updateMode == null"

    invoke-virtual {p1, v0}, Lgg/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getUpdateMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getUpdateMode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object p1, Lcom/cloud/h5update/service/LocalH5UpdateService;->a:Lcom/cloud/h5update/service/LocalH5UpdateService$a;

    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/h5update/service/LocalH5UpdateService$a;->a(Landroid/content/Context;)V

    goto :goto_3

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    sget-object p1, Lcom/cloud/h5update/service/LocalH5UpdateJobService;->a:Lcom/cloud/h5update/service/LocalH5UpdateJobService$a;

    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/h5update/service/LocalH5UpdateJobService$a;->a(Landroid/content/Context;)V

    goto :goto_3

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    sget-object p1, Lcom/cloud/h5update/service/LocalH5UpdateService;->a:Lcom/cloud/h5update/service/LocalH5UpdateService$a;

    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cloud/h5update/service/LocalH5UpdateService$a;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/cloud/h5update/service/LocalH5UpdateJobService;->a:Lcom/cloud/h5update/service/LocalH5UpdateJobService$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/h5update/service/LocalH5UpdateJobService$a;->a(Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, p1}, Lcom/cloud/h5update/utils/l;->e(Lcom/cloud/h5update/bean/UpdateEntity;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private final m()Z
    .locals 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static final o(Lcom/cloud/h5update/bean/PreloadResource;Landroid/content/Context;)V
    .locals 6

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Lt6/b;->onZipDownloaded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    invoke-virtual {v1, p0}, Lcom/cloud/h5update/utils/l;->i(Lcom/cloud/h5update/bean/PreloadResource;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cloud/h5update/utils/l;->h(Ljava/lang/String;)Lcom/cloud/h5update/bean/DownloadEntity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/cloud/h5update/utils/l;->j(Lcom/cloud/h5update/bean/DownloadEntity;)Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/h5update/bean/PreloadResource;->getEncryptedStaticZip()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    invoke-virtual {v4, v5, v3}, Lcom/cloud/h5update/utils/h$a;->u(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {v1, p1, v3}, Lcom/cloud/h5update/utils/l;->r(Landroid/content/Context;Ljava/io/File;)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v4, v3}, Lt6/b;->onUnZipDownloadFinish(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    :cond_5
    sget-object p1, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_update_url_version"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    move-object v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/cloud/h5update/bean/PreloadResource;->getVersion()Ljava/lang/Long;

    move-result-object v2

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/cloud/h5update/utils/j;->g(Ljava/lang/String;J)V

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object p1

    if-eqz p1, :cond_a

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v2

    :goto_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v4, 0x68

    const-string v5, "ERROR_VALID"

    invoke-interface {p1, v0, v4, v5}, Lt6/b;->onError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_a
    sget-object p1, Lgg/b;->a:Lgg/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "md5\u6bd4\u5bf9\u5931\u8d25:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgg/b;->c(Ljava/lang/String;)V

    :goto_6
    if-eqz p0, :cond_c

    invoke-direct {v1, p0}, Lcom/cloud/h5update/utils/l;->d(Lcom/cloud/h5update/bean/PreloadResource;)V

    :cond_c
    return-void
.end method

.method private final r(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lgg/b;->a:Lgg/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u5b89\u88c5zip\u6587\u4ef6, \u6587\u4ef6\u8def\u5f84:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgg/b;->g(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/h5update/utils/l;->s(Landroid/content/Context;Ljava/io/File;)Z

    return-void
.end method

.method private final s(Landroid/content/Context;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p1, Lcom/cloud/h5update/utils/m;->a:Lcom/cloud/h5update/utils/m;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zipFile.parentFile.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Lcom/cloud/h5update/utils/m;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object v1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v2, 0x69

    const-string v3, "ERROR_UNZIP"

    invoke-interface {v1, p2, v2, v3}, Lt6/b;->onError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    sget-object p2, Lgg/b;->a:Lgg/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred while install zip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgg/b;->g(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->d()Lcom/cloud/h5update/TH5Update;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update;->l()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    invoke-virtual {v0, p1}, Lcom/cloud/h5update/utils/j;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lcom/cloud/h5update/bean/UpdateEntity;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lgg/b;->a:Lgg/b;

    const-string v0, "update task is going on"

    invoke-virtual {p1, v0}, Lgg/b;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/h5update/TH5Update$a;->p(Z)V

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getPreloadResource()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/h5update/bean/PreloadResource;

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getVersion()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last_update_url_version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/cloud/h5update/utils/j;->c(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/cloud/h5update/utils/j;->b(Ljava/lang/String;I)I

    move-result v3

    int-to-long v8, v3

    :cond_4
    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getVersion()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-ltz v3, :cond_5

    sget-object v3, Lgg/b;->a:Lgg/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "h5update no need to update for version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getVersion()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgg/b;->g(Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v3}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v3, v2}, Lt6/b;->onNoNeedDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v3, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    invoke-virtual {v3, v2}, Lcom/cloud/h5update/utils/l;->i(Lcom/cloud/h5update/bean/PreloadResource;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cloud/h5update/download/DownloadManager;->g:Lcom/cloud/h5update/download/DownloadManager$a;

    invoke-virtual {v5}, Lcom/cloud/h5update/download/DownloadManager$a;->a()Lcom/cloud/h5update/download/DownloadManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/cloud/h5update/download/DownloadManager;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v4}, Lcom/cloud/h5update/TH5Update$a;->d()Lcom/cloud/h5update/TH5Update;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cloud/h5update/TH5Update;->l()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/cloud/h5update/utils/l;->n(Landroid/content/Context;Lcom/cloud/h5update/bean/PreloadResource;)V

    invoke-virtual {v4}, Lcom/cloud/h5update/TH5Update$a;->i()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/cloud/h5update/utils/a;->a:Lcom/cloud/h5update/utils/a;

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v4, ""

    :cond_7
    invoke-virtual {v3, v4, v2}, Lcom/cloud/h5update/utils/a;->b(Ljava/lang/String;Lcom/cloud/h5update/bean/PreloadResource;)V

    goto/16 :goto_0

    :cond_8
    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {p1, v1}, Lcom/cloud/h5update/TH5Update$a;->p(Z)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->d()Lcom/cloud/h5update/TH5Update;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update;->l()Landroid/app/Application;

    move-result-object v0

    const-string v1, "tupdate"

    invoke-direct {p0, v0, v1}, Lcom/cloud/h5update/utils/l;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/cloud/h5update/bean/DownloadEntity;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    const-class v2, Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v1, p1, v2}, Lcom/cloud/h5update/utils/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/h5update/bean/DownloadEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final i(Lcom/cloud/h5update/bean/PreloadResource;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/PreloadResource;->getVersion()Ljava/lang/Long;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "downloadUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "temp_"

    const-string v2, ".zip"

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v2, v4, v0, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final n(Landroid/content/Context;Lcom/cloud/h5update/bean/PreloadResource;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/h5update/download/DownloadManager;->g:Lcom/cloud/h5update/download/DownloadManager$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/download/DownloadManager$a;->a()Lcom/cloud/h5update/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/h5update/download/DownloadManager;->f()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/h5update/utils/k;

    invoke-direct {v1, p2, p1}, Lcom/cloud/h5update/utils/k;-><init>(Lcom/cloud/h5update/bean/PreloadResource;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final p(Lcom/cloud/h5update/bean/UpdateEntity;)V
    .locals 6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getVersion()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    const-string v1, "last_update_version"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/h5update/utils/j;->c(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cloud/h5update/utils/j;->b(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getVersion()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_3

    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v2, 0x66

    const-string v3, "ERROR_VERSION"

    invoke-interface {v0, v1, v2, v3}, Lt6/b;->onError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    sget-object v0, Lgg/b;->a:Lgg/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no need update for version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/UpdateEntity;->getVersion()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgg/b;->g(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/h5update/utils/l;->l(Lcom/cloud/h5update/bean/UpdateEntity;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final q(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(Ljava/lang/String;Lcom/cloud/h5update/bean/DownloadEntity;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    invoke-virtual {v0, p1, p2}, Lcom/cloud/h5update/utils/j;->h(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
