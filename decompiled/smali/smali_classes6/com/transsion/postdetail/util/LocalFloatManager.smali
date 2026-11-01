.class public final Lcom/transsion/postdetail/util/LocalFloatManager;
.super Lcom/transsion/videofloat/manager/b;


# static fields
.field public static final b:Lcom/transsion/postdetail/util/LocalFloatManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/util/LocalFloatManager;

    invoke-direct {v0}, Lcom/transsion/postdetail/util/LocalFloatManager;-><init>()V

    sput-object v0, Lcom/transsion/postdetail/util/LocalFloatManager;->b:Lcom/transsion/postdetail/util/LocalFloatManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/b;-><init>()V

    return-void
.end method

.method public static synthetic b(Lpx/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/util/LocalFloatManager;->k(Lpx/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lpx/a;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lpx/a;->p()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lpx/a;->p()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_2
    return-object v2
.end method

.method private final d(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oneroom://com.community.oneroom?type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/video/detail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "extra_resource_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra_local_path"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra_url"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "channel=video_float&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra_page_from"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "media_notification"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extra_completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "append(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final e(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/player/mediasession/MediaItem;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/util/LocalFloatManager;->f(Lcom/transsion/baselib/db/download/DownloadBean;)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v17, Lcom/transsion/player/mediasession/MediaItem;

    move-object/from16 v0, v17

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v15, 0x38b8

    const/16 v16, 0x0

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/transsion/player/mediasession/MediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v17
.end method

.method private final f(Lcom/transsion/baselib/db/download/DownloadBean;)Landroid/app/PendingIntent;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/push/api/IPushProvider;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/push/api/IPushProvider;

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/util/LocalFloatManager;->d(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "getApp(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/transsion/push/api/IPushProvider;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/postdetail/util/LocalFloatManager;->g()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private final g()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    :goto_0
    return v0
.end method

.method private static final k(Lpx/a;)Lkotlin/Unit;
    .locals 7

    sget-object v0, Lcom/transsion/postdetail/util/LocalFloatManager;->b:Lcom/transsion/postdetail/util/LocalFloatManager;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/util/LocalFloatManager;->c(Lpx/a;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/util/LocalFloatManager;->i()V

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/util/LocalFloatManager;->d(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " open page deeplink:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "VideoFloat"

    invoke-virtual {v1, v3, v0, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " getCurPlayingBean null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "video_float"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final n(Lpx/a;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/util/LocalFloatManager$saveHistoryInner$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Lcom/transsion/postdetail/util/LocalFloatManager$saveHistoryInner$1;-><init>(Lpx/a;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method static synthetic o(Lcom/transsion/postdetail/util/LocalFloatManager;Lpx/a;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/util/LocalFloatManager;->n(Lpx/a;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public j(Lpx/a;)V
    .locals 4

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-class v1, Lcom/transsion/postdetail/util/LocalFloatManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --- openDetail"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "VideoFloat"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/transsion/postdetail/util/a;

    invoke-direct {v0, p1}, Lcom/transsion/postdetail/util/a;-><init>(Lpx/a;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/util/LocalFloatManager;->n(Lpx/a;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public l(Lpx/a;)Z
    .locals 14

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v3

    invoke-virtual {p1}, Lpx/a;->c()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v3, v1

    :goto_2
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    if-le v3, v2, :cond_2

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCanPlay()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v5, v4

    :cond_4
    if-nez v5, :cond_5

    return v1

    :cond_5
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v8, v1

    goto :goto_4

    :cond_6
    :goto_3
    move-object v8, v0

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/transsnet/downloader/manager/g;->h(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    sget-object v0, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lpx/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_8
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local----playNext , ep:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", nextEp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoFloat"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lao/e;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v2

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/transsion/player/enum/PlayMimeType;->DEFAULT:Lcom/transsion/player/enum/PlayMimeType;

    invoke-direct {p0, v5}, Lcom/transsion/postdetail/util/LocalFloatManager;->e(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_a

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v1

    invoke-virtual {p1, v1}, Lpx/a;->z(I)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v1

    invoke-virtual {p1, v1}, Lpx/a;->H(I)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lpx/a;->G(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lpx/a;->F(J)V

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->clearScreen()V

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->stop()V

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->reset()V

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->prepare()V

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_a
    return v4
.end method

.method public m(Lpx/a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/transsion/postdetail/util/LocalFloatManager;->o(Lcom/transsion/postdetail/util/LocalFloatManager;Lpx/a;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
