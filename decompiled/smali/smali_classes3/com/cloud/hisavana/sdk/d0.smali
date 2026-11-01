.class public final Lcom/cloud/hisavana/sdk/d0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/d0;

.field private static final b:Lcom/cloud/hisavana/sdk/d0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/d0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/d0;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    new-instance v0, Lcom/cloud/hisavana/sdk/d0$a;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/d0$a;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Lcom/cloud/hisavana/sdk/d0$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 10

    sget-object v0, Lcom/cloud/hisavana/sdk/b0;->a:Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/b0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v8, p1

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v8, p1

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method private final g(Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Lcom/cloud/hisavana/sdk/d0$a;

    invoke-static {p1}, Lkotlin/io/FilesKt;->w(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "getDefault(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/d0$a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final h(Ljava/io/File;)Z
    .locals 7

    const-string v0, "DefaultMaterialManager"

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x4

    :try_start_0
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->g(I)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object v1

    new-instance v3, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveDefaultAdMaterial, sourceFile is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->c(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v3}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->a(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, v3, v2}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->e(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :goto_2
    const/4 v2, 0x0

    :goto_3
    :try_start_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_4
    :goto_4
    const/4 p1, 0x0

    return p1

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_5
    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/cloud/hisavana/sdk/o4;
    .locals 4

    const-string v0, "ads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/cloud/hisavana/sdk/o4;

    invoke-direct {v3, v2}, Lcom/cloud/hisavana/sdk/o4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    if-nez v1, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Lcom/cloud/hisavana/sdk/o4;->b(Lcom/cloud/hisavana/sdk/o4;)V

    :goto_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final b()V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "default_ad_data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La7/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v6, v5}, Lcom/cloud/hisavana/sdk/d0;->g(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {v6, v5}, Lcom/cloud/hisavana/sdk/d0;->h(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "default_file_save_finished"

    invoke-virtual {v0, v1, v2}, Lj7/a;->o(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultMaterialManager"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final c(I)V
    .locals 1

    if-lez p1, :cond_0

    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/net/HttpRequest;->k(I)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 10

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/cloud/hisavana/sdk/d0$b;

    invoke-direct {v9, p1}, Lcom/cloud/hisavana/sdk/d0$b;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->c0(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/functions/Function0;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    const-string v1, "codeSeatId"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "count"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-interface/range {p4 .. p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/o4;->a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/o4;->a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/o4;->c()Lcom/cloud/hisavana/sdk/o4;

    move-result-object v1

    invoke-virtual {p0, v4, v1, v3, v6}, Lcom/cloud/hisavana/sdk/d0;->f(Ljava/lang/String;Lcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    sget-object v1, Lcom/cloud/hisavana/sdk/b0;->a:Lcom/cloud/hisavana/sdk/b0;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Lcom/cloud/hisavana/sdk/b0;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v9

    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-ne v1, v13, :cond_2

    const/4 v1, 0x1

    move v10, v1

    goto :goto_0

    :cond_2
    move v10, v12

    :goto_0
    new-instance v14, Lcom/cloud/hisavana/sdk/d0$c;

    move-object v1, v14

    move-object v2, v8

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/d0$c;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/cloud/hisavana/sdk/o4;Lkotlin/jvm/functions/Function0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    move v4, v9

    move v8, v10

    move-object v9, v11

    move-object v10, v14

    invoke-static/range {v2 .. v10}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    invoke-direct {p0, v11}, Lcom/cloud/hisavana/sdk/d0;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getClickUrl(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ssplocalhost=true"

    const/4 v4, 0x0

    invoke-static {v1, v3, v12, v13, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/d0;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
