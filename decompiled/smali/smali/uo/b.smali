.class public final Luo/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/postdetailapi/IPostDetailApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic p()V
    .locals 0

    invoke-static {}, Luo/b;->q()V

    return-void
.end method

.method private static final q()V
    .locals 1

    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/h;->p()V

    return-void
.end method


# virtual methods
.method public a(Lcom/therouter/router/RouteItem;Lbg/b;)V
    .locals 1

    const-string v0, "routeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->a:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;->a()Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->i(Lcom/therouter/router/RouteItem;Lbg/b;)V

    sget-object v0, Lcom/transsion/postdetail/shorttv/c;->a:Lcom/transsion/postdetail/shorttv/c$a;

    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/c$a;->a()Lcom/transsion/postdetail/shorttv/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/postdetail/shorttv/c;->d(Lcom/therouter/router/RouteItem;Lbg/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Landroidx/fragment/app/Fragment;
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment$a;->a(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Landroidx/fragment/app/Fragment;
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment$a;->a(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomTabItem;I)Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment$a;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment$a;->a(Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 15

    sget-object v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->O:Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;

    if-nez p7, :cond_0

    const-string v1, ""

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p7

    :goto_0
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;->a(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;->loadMoreCacheData(Z)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;
    .locals 1

    const-string v0, "pool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lbp/a0;

    invoke-direct {v0, p1, p2, p3}, Lbp/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-object v0
.end method

.method public i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public j(Landroid/app/Application;)V
    .locals 7

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTv"

    const-string v3, "---------------initShortTv--------------"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Llr/c;->a:Llr/c;

    new-instance v1, Lcom/transsion/postdetail/shorttv/factory/i;

    invoke-direct {v1}, Lcom/transsion/postdetail/shorttv/factory/i;-><init>()V

    invoke-virtual {v0, p1, v1}, Llr/c;->d(Landroid/app/Application;Lrs/a;)V

    sget-object v0, Lys/a;->a:Lys/a;

    new-instance v1, Lcom/transsion/postdetail/shorttv/factory/a;

    invoke-direct {v1}, Lcom/transsion/postdetail/shorttv/factory/a;-><init>()V

    invoke-virtual {v0, p1, v1}, Lys/a;->c(Landroid/app/Application;Ltt/a;)V

    return-void
.end method

.method public k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;->a(Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment$a;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment$a;->a(Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;)V
    .locals 8

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lox/c;->a:Lox/c;

    invoke-virtual {v0, p1}, Lox/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8d44\u6e90\u88ab\u5220\u9664\uff0c\u79fb\u9664pip,tag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "VideoFloat"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lox/c;->a()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Luo/a;

    invoke-direct {v0}, Luo/a;-><init>()V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public n(Landroidx/fragment/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;->insertRoomCacheData()V

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;
    .locals 1

    const-string v0, "pool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lbp/n;

    invoke-direct {v0, p1, p2, p3}, Lbp/n;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-object v0
.end method
