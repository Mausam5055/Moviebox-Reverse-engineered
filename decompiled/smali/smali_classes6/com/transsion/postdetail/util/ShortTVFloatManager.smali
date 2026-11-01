.class public final Lcom/transsion/postdetail/util/ShortTVFloatManager;
.super Lcom/transsion/videofloat/manager/b;


# static fields
.field public static final b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

.field private static final c:Los/a;

.field private static final d:Lkotlin/Lazy;

.field private static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;

    invoke-direct {v0}, Lcom/transsion/postdetail/util/ShortTVFloatManager;-><init>()V

    sput-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Los/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Los/a;

    sput-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->c:Los/a;

    new-instance v0, Lcom/transsion/postdetail/util/i;

    invoke-direct {v0}, Lcom/transsion/postdetail/util/i;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/util/j;

    invoke-direct {v0}, Lcom/transsion/postdetail/util/j;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->e:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/b;-><init>()V

    return-void
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->x()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lpx/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->q(Lpx/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lpx/a;Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->s(Lpx/a;Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->i()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/postdetail/util/ShortTVFloatManager;)Lcom/transsnet/downloader/manager/g;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->j()Lcom/transsnet/downloader/manager/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/postdetail/util/ShortTVFloatManager;)Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->l()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h()Los/a;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->c:Los/a;

    return-object v0
.end method

.method private static final i()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final j()Lcom/transsnet/downloader/manager/g;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method

.method private final l()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    return-object v0
.end method

.method private final m(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/util/ShortTVFloatManager$getShortTvEpisodeList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p1, p3, v0}, Lcom/transsion/postdetail/util/ShortTVFloatManager$getShortTvEpisodeList$1;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final n(Lpx/a;Ljava/util/List;)V
    .locals 11

    if-eqz p2, :cond_9

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/ShortTVItem;

    sget-object v1, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    invoke-virtual {v1}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljs/k;

    instance-of v5, v4, Ljs/e;

    if-eqz v5, :cond_1

    check-cast v4, Ljs/e;

    invoke-virtual {v4}, Ljs/e;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    check-cast v2, Ljs/k;

    if-eqz v2, :cond_6

    instance-of v1, v2, Ljs/e;

    if-eqz v1, :cond_6

    check-cast v2, Ljs/e;

    invoke-virtual {v2}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->setId(Ljava/lang/String;)V

    :cond_5
    :goto_3
    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNewData----\u8bbe\u7f6e\u64ad\u653e\u6570\u636e  ep:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "VideoFloat"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljs/e;->h(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->toMediaSource()Lao/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    instance-of v4, v2, Llo/f;

    if-eqz v4, :cond_7

    move-object v3, v2

    check-cast v3, Llo/f;

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Llo/f;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lao/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDataSource----updateShortTvInfoList  ep:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",inPlayerList:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "VideoFloat"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->addDataSource(Lao/e;)Z

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static final q(Lpx/a;)Lkotlin/Unit;
    .locals 6

    sget-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    invoke-virtual {v0}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->o()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lpx/a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lpx/a;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oneroom://com.community.oneroom?type=/shorts/detail&id="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ep="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "&ms="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "&channel=video_float"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final s(Lpx/a;Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->n(Lpx/a;Ljava/util/List;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final u(Lpx/a;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Lcom/transsion/postdetail/util/ShortTVFloatManager$saveHistoryInner$1;-><init>(Lpx/a;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method static synthetic v(Lcom/transsion/postdetail/util/ShortTVFloatManager;Lpx/a;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->u(Lpx/a;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final x()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->x1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHORT_TV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/util/l;

    invoke-direct {v0, p1}, Lcom/transsion/postdetail/util/l;-><init>(Lpx/a;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->u(Lpx/a;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public r(Lpx/a;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljs/k;

    instance-of v5, v3, Ljs/e;

    if-eqz v5, :cond_0

    check-cast v3, Ljs/e;

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v4

    :goto_2
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lpx/a;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_2
    move-object v5, v4

    :goto_3
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :goto_4
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljs/k;

    if-le v3, v2, :cond_5

    instance-of v6, v5, Ljs/e;

    if-eqz v6, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move v3, v1

    move-object v5, v4

    :goto_6
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lpx/a;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_7

    :cond_7
    move-object v6, v4

    :goto_7
    move-object v7, v5

    check-cast v7, Ljs/e;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljs/e;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shorttv-----playNext, size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ep:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nextEp:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VideoFloat"

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v2, v6}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v5, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v3, 0x5

    if-le v0, v3, :cond_a

    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljs/k;

    instance-of v1, v0, Ljs/e;

    if-eqz v1, :cond_a

    check-cast v0, Ljs/e;

    invoke-static {v0}, Ljs/l;->b(Ljs/e;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    sget-object v1, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    invoke-virtual {p1}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljs/e;->c()I

    move-result v0

    new-instance v3, Lcom/transsion/postdetail/util/k;

    invoke-direct {v3, p1}, Lcom/transsion/postdetail/util/k;-><init>(Lpx/a;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->m(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    :cond_a
    if-eqz p1, :cond_d

    check-cast v5, Ljs/e;

    invoke-virtual {v5}, Ljs/e;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lpx/a;->z(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lpx/a;->F(J)V

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    invoke-virtual {v5}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    :cond_b
    const-string v3, ""

    :cond_c
    invoke-interface {v2, v3, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_d
    return v6
.end method

.method public t(Lpx/a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->v(Lcom/transsion/postdetail/util/ShortTVFloatManager;Lpx/a;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/util/List;)V
    .locals 7

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shorttv-----setPlayList:"

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
