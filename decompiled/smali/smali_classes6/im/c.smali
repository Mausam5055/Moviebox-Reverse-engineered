.class public final Lim/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/lib_web/zip/loader/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/c$a;
    }
.end annotation


# static fields
.field public static final d:Lim/c$a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/transsion/lib_web/LoadUrlData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lim/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lim/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lim/c;->d:Lim/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/lib_web/LoadUrlData;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadUrlData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    sget-object p1, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    invoke-virtual {p2}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/c;->v(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_b

    const-string v3, "yy://__QUEUE_MESSAGE__"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v3, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    iget-object v4, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v4}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/lib_web/download_render/c;->h(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "<interceptRequest> url:"

    const-string v6, "DR_WebviewRenderIgnorePageUrlFileLoader"

    if-eqz v4, :cond_2

    :try_start_1
    sget-object v3, Lgm/i;->a:Lgm/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pageData is not null return"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-virtual {v3, v2}, Lcom/transsion/lib_web/download_render/c;->f(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/data/FileData;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lgm/i;->a:Lgm/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileData is null return"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "application/octet-stream"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v1

    :cond_4
    sget-object v4, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    iget-object v7, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/transsion/lib_web/download_render/utils/a;->j(Ljava/lang/String;)V

    iget-object v7, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/lib_web/download_render/utils/CacheType;->ALL:Lcom/transsion/lib_web/download_render/utils/CacheType;

    invoke-virtual {v4, v7, v8}, Lcom/transsion/lib_web/download_render/utils/a;->o(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/CacheType;)V

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->htmlUseRemoteEnable()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

    invoke-virtual {v7}, Lcom/transsion/lib_web/download_render/utils/d;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v3, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/lib_web/download_render/utils/a;->h(Ljava/lang/String;)V

    sget-object v3, Lgm/i;->a:Lgm/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is html use remote"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileOperateStatus$lib_web_release()Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    move-result-object v7

    sget-object v8, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->NONE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    if-eq v7, v8, :cond_6

    iget-object v7, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v7}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/transsion/lib_web/download_render/utils/a;->f(Ljava/lang/String;)V

    sget-object v4, Lgm/i;->a:Lgm/i;

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileOperateStatus$lib_web_release()Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->getType()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileOperateStatus:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unNormal return"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_6
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileLocalPath$lib_web_release()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    iget-object v3, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/lib_web/download_render/utils/a;->g(Ljava/lang/String;)V

    sget-object v3, Lgm/i;->a:Lgm/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileLocalPath is null return"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_7
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v3, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/lib_web/download_render/utils/a;->g(Ljava/lang/String;)V

    sget-object v3, Lgm/i;->a:Lgm/i;

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not exist return"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_8
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/webkit/WebResourceResponse;

    const-string v11, "UTF-8"

    const-string v13, "OK"

    if-eqz p1, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v9

    if-nez v9, :cond_a

    :cond_9
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :cond_a
    invoke-virtual {v0, v9}, Lim/c;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    const/16 v12, 0xc8

    move-object v9, v7

    move-object v10, v3

    invoke-direct/range {v9 .. v15}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    iget-object v9, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v9}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/transsion/lib_web/download_render/utils/a;->i(Ljava/lang/String;)V

    sget-object v4, Lgm/i;->a:Lgm/i;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mimeType:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", length:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", file:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " exist"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7

    :catchall_0
    sget-object v2, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    iget-object v3, v0, Lim/c;->c:Lcom/transsion/lib_web/LoadUrlData;

    invoke-virtual {v3}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/lib_web/download_render/utils/a;->d(Ljava/lang/String;)V

    :cond_b
    :goto_1
    return-object v1
.end method

.method public b(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/lib_web/zip/loader/c$b;->a(Lcom/transsion/lib_web/zip/loader/c;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
