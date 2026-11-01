.class public final Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->a:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;

    new-instance v0, Lcom/transsion/postdetail/ui/interceptor/c;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/interceptor/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ltt/a;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->k()Ltt/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lrs/a;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->j()Lrs/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->g()Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->b:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lbg/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->h(Lcom/therouter/router/RouteItem;Lbg/b;)V

    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    const/4 v4, 0x0

    const-string v5, "content"

    invoke-static {p2, v5, v3, p1, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lk1/a;->g(Landroid/content/Context;Landroid/net/Uri;)Lk1/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lk1/a;->e()Z

    move-result v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    :cond_3
    :goto_0
    return v2
.end method

.method private static final g()Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;-><init>()V

    return-object v0
.end method

.method private final h(Lcom/therouter/router/RouteItem;Lbg/b;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subject_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lls/a;->a:Lls/a;

    invoke-virtual {v0}, Lls/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lak/k;->b(Lcom/therouter/router/Navigator;Landroid/os/Bundle;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-static {v0}, Lak/k;->p(Lcom/therouter/router/Navigator;)V

    invoke-static {p2}, Lxj/b;->a(Lbg/b;)V

    goto :goto_0

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v2, "VideoFloat"

    const-class v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " open page ----2"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {p2, p1}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-interface {p2, p1}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    :goto_0
    return-void
.end method

.method private static final j()Lrs/a;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/i;

    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv/factory/i;-><init>()V

    return-object v0
.end method

.method private static final k()Ltt/a;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/a;

    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv/factory/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final i(Lcom/therouter/router/RouteItem;Lbg/b;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const-string v0, "postcard"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/ugc_video/detail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "/ugc_video/local_detail"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "/ugc_shorts/detail"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-static {v0, v5, v2, v1}, Lox/e$b;->a(Lox/e;ZILjava/lang/Object;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "/video/detail"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, -0x1

    const-string v8, "extra_series_position"

    if-eqz v0, :cond_e

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-static {v0, v5, v2, v1}, Lox/e$b;->a(Lox/e;ZILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v9, "extra_url"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "extra_subject_id"

    invoke-virtual {v0, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v10, ""

    :cond_2
    const-string v11, "extra_local_path"

    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "extra_resource_id"

    invoke-virtual {v0, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "extra_is_series"

    invoke-virtual {v0, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual {v0, v8, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    const-string v6, "extra_completed"

    invoke-virtual {v0, v6, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v8, "extra_from_deeplink"

    invoke-virtual {v0, v8, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4, v3}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    return-void

    :cond_3
    if-eqz v13, :cond_6

    sget-object v8, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v8}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    move-object v12, v8

    :cond_5
    :goto_0
    invoke-virtual {v0, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isDownloadCompleted  = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "\uff0c path = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "Download_LocalVideoDetailInterceptor"

    invoke-virtual {v0, v11, v8, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v9, :cond_7

    const-string v8, "http"

    const/4 v11, 0x2

    invoke-static {v9, v8, v5, v11, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    move v2, v5

    :goto_1
    if-eqz v12, :cond_c

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_c

    invoke-direct {v7, v13, v12}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v6, :cond_8

    const/16 v24, 0x4

    const/16 v25, 0x0

    const-string v21, "Download_LocalVideoDetailInterceptor"

    const-string v22, "downloading play, open page"

    const/16 v23, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v25}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v8

    new-instance v9, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lbg/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v8

    move-object v4, v9

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_8
    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file is error, show error dialog, c, isOutside = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x4

    const/16 v25, 0x0

    const-string v21, "Download_LocalVideoDetailInterceptor"

    const/16 v23, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v25}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v2, :cond_9

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/transsnet/downloader/R$string;->download_no_local_file_tips:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v14, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v16, v13

    move-object/from16 v17, v12

    invoke-virtual/range {v14 .. v19}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    const/16 v24, 0x4

    const/16 v25, 0x0

    const-string v21, "Download_LocalVideoDetailInterceptor"

    const-string v22, "open page"

    const/16 v23, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v25}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct/range {p0 .. p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->h(Lcom/therouter/router/RouteItem;Lbg/b;)V

    goto/16 :goto_6

    :cond_c
    const/16 v24, 0x4

    const/16 v25, 0x0

    const-string v21, "Download_LocalVideoDetailInterceptor"

    const-string v22, "file is error, show error dialog, "

    const/16 v23, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v25}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v15

    if-eqz v15, :cond_d

    invoke-virtual {v15}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v14, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v16, v13

    move-object/from16 v17, v12

    invoke-virtual/range {v14 .. v19}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_d
    return-void

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lls/a;->a:Lls/a;

    invoke-virtual {v9}, Lls/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Llr/c;->a:Llr/c;

    new-instance v9, Lcom/transsion/postdetail/ui/interceptor/a;

    invoke-direct {v9}, Lcom/transsion/postdetail/ui/interceptor/a;-><init>()V

    invoke-virtual {v0, v9}, Llr/c;->a(Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lys/a;->a:Lys/a;

    new-instance v9, Lcom/transsion/postdetail/ui/interceptor/b;

    invoke-direct {v9}, Lcom/transsion/postdetail/ui/interceptor/b;-><init>()V

    invoke-virtual {v0, v9}, Lys/a;->a(Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-static {v0, v5, v2, v1}, Lox/e$b;->a(Lox/e;ZILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "item_object"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    instance-of v5, v2, Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v5, :cond_f

    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    goto :goto_3

    :cond_f
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_10

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_10
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    :goto_4
    const-string v5, "ep"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v8, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v2, :cond_15

    sget-object v6, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->x(Ljava/lang/String;I)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_11
    if-eqz v1, :cond_14

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_5

    :cond_12
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v7, v1, v5}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    invoke-virtual {v3, v1, v2, v0}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->v(Landroid/content/Context;Lcom/transsion/baselib/db/download/DownloadBean;I)V

    goto :goto_6

    :cond_13
    invoke-interface {v4, v3}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    goto :goto_6

    :cond_14
    :goto_5
    invoke-interface {v4, v3}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    goto :goto_6

    :cond_15
    invoke-interface {v4, v3}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    goto :goto_6

    :cond_16
    invoke-interface {v4, v3}, Lbg/b;->a(Lcom/therouter/router/RouteItem;)V

    :cond_17
    :goto_6
    return-void
.end method
