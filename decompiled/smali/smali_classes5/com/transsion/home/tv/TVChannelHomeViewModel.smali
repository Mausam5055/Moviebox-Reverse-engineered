.class public final Lcom/transsion/home/tv/TVChannelHomeViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/tv/TVChannelHomeViewModel$a;
    }
.end annotation


# static fields
.field public static final p:Lcom/transsion/home/tv/TVChannelHomeViewModel$a;

.field public static final q:I


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Lkotlin/Lazy;

.field private final g:Lcom/google/gson/Gson;

.field private h:Ljava/lang/String;

.field private i:Lcom/transsion/home/tv/bean/Pager;

.field private j:Z

.field private k:J

.field private l:Lcom/transsion/home/tv/bean/PendingRefreshResult;

.field private m:Z

.field private n:Z

.field private final o:Lcom/transsion/home/tv/TVChannelHomeViewModel$localeChangedReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/tv/TVChannelHomeViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/tv/TVChannelHomeViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->p:Lcom/transsion/home/tv/TVChannelHomeViewModel$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->b:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->c:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->d:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->e:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/home/tv/a;

    invoke-direct {p1}, Lcom/transsion/home/tv/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->g:Lcom/google/gson/Gson;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->h:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->j:Z

    new-instance p1, Lcom/transsion/home/tv/TVChannelHomeViewModel$localeChangedReceiver$1;

    invoke-direct {p1, p0}, Lcom/transsion/home/tv/TVChannelHomeViewModel$localeChangedReceiver$1;-><init>(Lcom/transsion/home/tv/TVChannelHomeViewModel;)V

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->o:Lcom/transsion/home/tv/TVChannelHomeViewModel$localeChangedReceiver$1;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_LOCALE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/transsion/commercialization/pslink/c;->a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private final A(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->r()Lql/a;

    move-result-object v0

    invoke-interface {v0, p3}, Lql/a;->c(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p3

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p3

    new-instance v0, Lcom/transsion/home/tv/TVChannelHomeViewModel$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/home/tv/TVChannelHomeViewModel$e;-><init>(Lcom/transsion/home/tv/TVChannelHomeViewModel;J)V

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method private static final C()Lql/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lql/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql/a;

    return-object v0
.end method

.method private final D(J)V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->k:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->l:Lcom/transsion/home/tv/bean/PendingRefreshResult;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->getChannelDone()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->getOperateDone()Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->m:Z

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->getChannelFailed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->getChannelData()Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->getChannelData()Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->getPager()Lcom/transsion/home/tv/bean/Pager;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->i:Lcom/transsion/home/tv/bean/Pager;

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->getOperateData()Lcom/transsion/home/bean/SubOperateData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->l(Lcom/transsion/home/bean/SubOperateData;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->getChannelData()Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->getItems()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :cond_6
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->k(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v4, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->i:Lcom/transsion/home/tv/bean/Pager;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/home/tv/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v1

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh merge success operate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " channels="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " hasMore="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TVChannelHomeViewModel"

    invoke-virtual {v3, v0, p1, p2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->d:Landroidx/lifecycle/b0;

    new-instance p2, Lcom/transsion/home/tv/bean/TvChannelRefreshResult;

    invoke-virtual {p0}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->s()Z

    move-result v0

    invoke-direct {p2, v2, v0}, Lcom/transsion/home/tv/bean/TvChannelRefreshResult;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->d:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static synthetic c()Lql/a;
    .locals 1

    invoke-static {}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->C()Lql/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/home/tv/TVChannelHomeViewModel;Ljava/util/List;Z)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->k(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/home/tv/TVChannelHomeViewModel;)Lcom/transsion/home/tv/bean/Pager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->i:Lcom/transsion/home/tv/bean/Pager;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/home/tv/TVChannelHomeViewModel;JLcom/transsion/home/tv/bean/TvChannelListDataBean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->v(JLcom/transsion/home/tv/bean/TvChannelListDataBean;)V

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/home/tv/TVChannelHomeViewModel;JLcom/transsion/home/bean/SubOperateData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->w(JLcom/transsion/home/bean/SubOperateData;)V

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/home/tv/TVChannelHomeViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->y(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/home/tv/TVChannelHomeViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->n:Z

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/home/tv/TVChannelHomeViewModel;Lcom/transsion/home/tv/bean/Pager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->i:Lcom/transsion/home/tv/bean/Pager;

    return-void
.end method

.method private final k(Ljava/util/List;Z)Ljava/util/List;
    .locals 38

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/home/R$string;->home_tv_all_channels:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/moviedetailapi/bean/PostItemType;->TV_CHANNEL_HEADER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/transsion/home/bean/OperateItem;

    move-object v3, v1

    const v35, 0x7ffffffc

    const/16 v36, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v3 .. v36}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Lcom/transsion/home/tv/bean/TvChannelItem;

    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    move-object v4, v3

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TV_CHANNEL_ITEM:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v6

    const v36, 0x3ffffffd    # 1.9999996f

    const/16 v37, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v4 .. v37}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private final l(Lcom/transsion/home/bean/SubOperateData;)Ljava/util/List;
    .locals 37

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/transsion/home/tv/TVChannelHomeViewModel$convertOperateDataToList$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/transsion/home/tv/TVChannelHomeViewModel$convertOperateDataToList$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/SubOperateData;->getTrendingTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/SubOperateData;->getTrendingTitle()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    new-instance v2, Lcom/transsion/home/bean/OperateItem;

    move-object v3, v2

    const v35, 0x7ffffffc

    const/16 v36, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v3 .. v36}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/SubOperateData;->getOps()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {v0, v1}, Lrl/h;->c(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method private final r()Lql/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql/a;

    return-object v0
.end method

.method private final v(JLcom/transsion/home/tv/bean/TvChannelListDataBean;)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->k:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->l:Lcom/transsion/home/tv/bean/PendingRefreshResult;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->setChannelDone(Z)V

    invoke-virtual {v0, p3}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->setChannelData(Lcom/transsion/home/tv/bean/TvChannelListDataBean;)V

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->setChannelFailed(Z)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->D(J)V

    return-void
.end method

.method private final w(JLcom/transsion/home/bean/SubOperateData;)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->k:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->l:Lcom/transsion/home/tv/bean/PendingRefreshResult;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->setOperateDone(Z)V

    invoke-virtual {v0, p3}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->setOperateData(Lcom/transsion/home/bean/SubOperateData;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->D(J)V

    return-void
.end method

.method private final y(Ljava/lang/String;)V
    .locals 12

    iget-boolean v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->m:Z

    iput-object p1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->h:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->i:Lcom/transsion/home/tv/bean/Pager;

    iput-boolean v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->j:Z

    iget-wide v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->k:J

    new-instance v11, Lcom/transsion/home/tv/bean/PendingRefreshResult;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v11

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/transsion/home/tv/bean/PendingRefreshResult;-><init>(Ljava/lang/String;ZZZLcom/transsion/home/bean/SubOperateData;Lcom/transsion/home/tv/bean/TvChannelListDataBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->l:Lcom/transsion/home/tv/bean/PendingRefreshResult;

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->A(JLjava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->z(JLjava/lang/String;)V

    return-void
.end method

.method private final z(JLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->r()Lql/a;

    move-result-object v0

    const-string v1, "1"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, p3}, Lql/a;->d(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p3

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p3

    new-instance v0, Lcom/transsion/home/tv/TVChannelHomeViewModel$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/home/tv/TVChannelHomeViewModel$d;-><init>(Lcom/transsion/home/tv/TVChannelHomeViewModel;J)V

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/transsion/home/tv/bean/CountryItem;)V
    .locals 3

    const-string v0, "country"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->b:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v0, Lrl/e;->a:Lrl/e;

    invoke-virtual {v0}, Lrl/e;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->g:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "default_tv_country"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/transsion/home/tv/bean/CountryItem;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->l:Lcom/transsion/home/tv/bean/PendingRefreshResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/tv/bean/PendingRefreshResult;->getChannelData()Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/tv/bean/TvChannelItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/tv/bean/TvChannelItem;->getChannelId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->o:Lcom/transsion/home/tv/TVChannelHomeViewModel$localeChangedReceiver$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final q()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->i:Lcom/transsion/home/tv/bean/Pager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/tv/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t()V
    .locals 8

    const-string v0, "TVChannelHomeViewModel"

    sget-object v1, Lrl/e;->a:Lrl/e;

    invoke-virtual {v1}, Lrl/e;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "default_tv_country"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    xor-int/lit8 v4, v3, 0x1

    if-nez v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->g:Lcom/google/gson/Gson;

    const-class v5, Lcom/transsion/home/tv/bean/CountryItem;

    invoke-virtual {v3, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/tv/bean/CountryItem;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->b:Landroidx/lifecycle/b0;

    invoke-virtual {v3, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v1}, Lcom/transsion/home/tv/bean/CountryItem;->getCountryName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadCountryList use cache country="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/transsion/home/tv/bean/CountryItem;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->y(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore country from cache failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->r()Lql/a;

    move-result-object v0

    invoke-interface {v0}, Lql/a;->a()Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;

    invoke-direct {v1, p0, v4}, Lcom/transsion/home/tv/TVChannelHomeViewModel$b;-><init>(Lcom/transsion/home/tv/TVChannelHomeViewModel;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final u()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->m:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->n:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->i:Lcom/transsion/home/tv/bean/Pager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/home/tv/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->n:Z

    iput-boolean v1, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->j:Z

    invoke-direct {p0}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->r()Lql/a;

    move-result-object v1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->h:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lql/a;->d(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object v1

    sget-object v2, Lsg/d;->a:Lsg/d;

    invoke-virtual {v2}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v1

    new-instance v2, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;

    invoke-direct {v2, p0, v0}, Lcom/transsion/home/tv/TVChannelHomeViewModel$c;-><init>(Lcom/transsion/home/tv/TVChannelHomeViewModel;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void

    :cond_3
    :goto_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v2, "TVChannelHomeViewModel"

    const-string v3, "loadMoreChannels: nextPage is null, ignore"

    invoke-virtual {v0, v2, v3, v1}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->h:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->m:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/tv/TVChannelHomeViewModel;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/home/tv/TVChannelHomeViewModel;->y(Ljava/lang/String;)V

    return-void
.end method
