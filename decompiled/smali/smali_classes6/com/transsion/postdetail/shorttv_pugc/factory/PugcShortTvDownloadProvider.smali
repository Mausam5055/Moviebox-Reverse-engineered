.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lst/c;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lst/j;

.field private final c:Llj/m0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/shorttv_pugc/factory/c;

    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv_pugc/factory/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$a;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;)V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->c:Llj/m0;

    return-void
.end method

.method public static synthetic f()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->h()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic g(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;)Lst/j;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->b:Lst/j;

    return-object p0
.end method

.method private static final h()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final i()Lcom/transsnet/downloader/manager/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method

.method private final j(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 32

    new-instance v12, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-object v0, v12

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->videoUGCId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/transsion/shorttv_pugc/bean/Cover;

    move-object v5, v13

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x1d7

    const/16 v24, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v13 .. v24}, Lcom/transsion/shorttv_pugc/bean/Cover;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/GifBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    move-object v13, v14

    const/16 v19, 0xf

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v20}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v21, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-object/from16 v14, v21

    const/16 v29, 0x7f

    const/16 v30, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v21 .. v30}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->videoUGCPosition()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v17

    new-instance v16, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-object/from16 v15, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v21, 0xa

    invoke-direct/range {v16 .. v22}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v16

    const v25, 0xff0bac

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v31, v12

    move-object/from16 v12, v17

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v26}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->setPlayUrl(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v0, "activity"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v1

    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v6

    const/16 v15, 0x1f04

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v1 .. v16}, Lcom/transsnet/downloader/DownloadManagerApi;->g0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;

    iget v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-nez p1, :cond_3

    return-object v3

    :cond_3
    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    iput v4, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$fetchDownloadList$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->P(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {p0, p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->j(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object v3
.end method

.method public c()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->i()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->c:Llj/m0;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->x(Llj/m0;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->b:Lst/j;

    return-void
.end method

.method public d(Lst/j;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->b:Lst/j;

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->i()Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->c:Llj/m0;

    invoke-interface {p1, v0}, Lcom/transsnet/downloader/manager/g;->e(Llj/m0;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;

    iget v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-nez p1, :cond_3

    return-object v3

    :cond_3
    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    iput v4, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider$getDownloadUGCVideo$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p2, :cond_5

    invoke-direct {p0, p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvDownloadProvider;->j(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v3

    :cond_5
    return-object v3
.end method
