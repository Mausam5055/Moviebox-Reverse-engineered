.class public final Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;
.super Lcom/transsion/videofloat/manager/b;


# static fields
.field public static final b:Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;

.field private static c:Ljava/util/Map;

.field private static final d:Lkotlin/Lazy;

.field private static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;

    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;-><init>()V

    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->b:Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->c:Ljava/util/Map;

    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/i;

    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/hepler/i;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/j;

    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/hepler/j;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->e:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/b;-><init>()V

    return-void
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->w()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lrv/a;
    .locals 1

    invoke-static {}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->v()Lrv/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lgo/a;Lpx/a;Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->r(Lgo/a;Lpx/a;Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;)Lrv/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->l()Lrv/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->m()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method private final g(Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Lcom/transsion/player/mediasession/MediaItem;
    .locals 19

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgo/a;->t()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object v11, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgo/a;->c()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v5, v0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {p0 .. p2}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->h(Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Landroid/app/PendingIntent;

    move-result-object v9

    new-instance v0, Lcom/transsion/player/mediasession/MediaItem;

    move-object v2, v0

    const/16 v17, 0x3cb8

    const/16 v18, 0x0

    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/transsion/player/mediasession/MediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final h(Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Landroid/app/PendingIntent;
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/push/api/IPushProvider;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/push/api/IPushProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oneroom://com.community.oneroom?type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/ugc_video/detail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "extra_resource_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ugc_video_type"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lgo/a;->u()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ops"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lgo/a;->q()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, p2

    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "extra_page_from"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "media_notification"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    const-string v3, "getApp(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lcom/transsion/push/api/IPushProvider;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const/high16 p2, 0x24000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object p2, p1

    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->j()I

    move-result v1

    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private final j()I
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

.method private final k(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager$getPlayInfo$1;

    invoke-direct {v5, p1, p2, v0}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager$getPlayInfo$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_1
    :goto_0
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final l()Lrv/a;
    .locals 1

    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrv/a;

    return-object v0
.end method

.method private final m()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    return-object v0
.end method

.method private final n(Lpx/a;Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getSignCookie()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "cookie"

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getSignCookie()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sget-object v4, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stream-----getPlayInfoSuccess,\u5f00\u59cb\u64ad\u653e, se:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "VideoFloat"

    invoke-virtual {v4, v7, v5, v6}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Lao/e;

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->i(Ljava/lang/String;)Lcom/transsion/player/enum/PlayMimeType;

    move-result-object v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct {v0, v5, v6}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->g(Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v13

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v11, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v15}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v3}, Lao/e;->q(Ljava/util/Map;)V

    invoke-virtual/range {p1 .. p1}, Lpx/a;->v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setUgcVideoId(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getIdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpx/a;->K(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lpx/a;->F(J)V

    invoke-virtual/range {p1 .. p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/player/orplayer/g;->reset()V

    invoke-virtual/range {p1 .. p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    invoke-virtual/range {p1 .. p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/player/orplayer/g;->prepare()V

    invoke-virtual/range {p1 .. p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->play()V

    return-void
.end method

.method private static final r(Lgo/a;Lpx/a;Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Lkotlin/Unit;
    .locals 1

    if-nez p3, :cond_0

    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lgo/a;->l()I

    move-result p2

    invoke-virtual {p0}, Lgo/a;->e()I

    move-result p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ugc-----playNext,nextSe:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",nextEp:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u4e0b\u4e00\u96c6\u6570\u636e\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u64ad\u653e"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    const-string p3, "VideoFloat"

    invoke-virtual {p1, p3, p0, p2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    sget-object p0, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->b:Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->n(Lpx/a;Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final t(Lpx/a;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lpx/a;->q()I

    move-result v1

    invoke-virtual {p1}, Lpx/a;->c()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lpx/a;->n()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveHistory--key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "VideoFloat"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lpx/a;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager$saveHistoryInner$2;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager$saveHistoryInner$2;-><init>(Lpx/a;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final v()Lrv/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lrv/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrv/a;

    return-object v0
.end method

.method private static final w()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final i(Ljava/lang/String;)Lcom/transsion/player/enum/PlayMimeType;
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toUpperCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DASH"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/transsion/player/enum/PlayMimeType;->DASH:Lcom/transsion/player/enum/PlayMimeType;

    goto :goto_0

    :cond_0
    const-string v0, "HLS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/player/enum/PlayMimeType;->HLS:Lcom/transsion/player/enum/PlayMimeType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/player/enum/PlayMimeType;->DEFAULT:Lcom/transsion/player/enum/PlayMimeType;

    :goto_0
    return-object p1
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public p(Lpx/a;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "VideoFloat"

    const-string v2, "openDetail--1"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->t(Lpx/a;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpx/a;->v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lpv/b;->b(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public q(Lpx/a;)Z
    .locals 11

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

    check-cast v3, Lgo/a;

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lgo/a;->e()I

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

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lgo/a;

    if-eqz p1, :cond_2

    invoke-virtual {v5}, Lgo/a;->e()I

    move-result v5

    invoke-virtual {p1}, Lpx/a;->c()I

    move-result v6

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    check-cast v3, Lgo/a;

    const/4 v0, 0x1

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgo/a;

    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {v2}, Lgo/a;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lgo/a;->l()I

    move-result v7

    invoke-virtual {v2}, Lgo/a;->e()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ugc-----playNext, name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",nextSe:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",nextEp:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VideoFloat"

    invoke-virtual {v5, v7, v6, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lpx/a;->v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v4

    :cond_5
    new-instance v1, Lcom/transsion/ugcvideodetail/hepler/k;

    invoke-direct {v1, v2, p1, v3}, Lcom/transsion/ugcvideodetail/hepler/k;-><init>(Lgo/a;Lpx/a;Lgo/a;)V

    invoke-direct {p0, v4, v1}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->k(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return v0

    :cond_6
    return v1
.end method

.method public s(Lpx/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->t(Lpx/a;)V

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 7

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream-----setPlayList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "VideoFloat"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
