.class public final Lcom/transsion/room/adapter/c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/transsion/room/adapter/c;->a:Ljava/lang/String;

    new-instance p1, Lcom/transsion/room/adapter/b;

    invoke-direct {p1}, Lcom/transsion/room/adapter/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/room/adapter/c;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic g()Lcom/transsion/moviedetailapi/IMovieDetailService;
    .locals 1

    invoke-static {}, Lcom/transsion/room/adapter/c;->i()Lcom/transsion/moviedetailapi/IMovieDetailService;

    move-result-object v0

    return-object v0
.end method

.method private final h()Lcom/transsion/moviedetailapi/IMovieDetailService;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/adapter/c;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/IMovieDetailService;

    return-object v0
.end method

.method private static final i()Lcom/transsion/moviedetailapi/IMovieDetailService;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/moviedetailapi/IMovieDetailService;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/IMovieDetailService;

    return-object v0
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_HOT:Lcom/transsion/moviedetailapi/PostRankType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_NEW:Lcom/transsion/moviedetailapi/PostRankType;

    :goto_0
    const-string v1, "subject_id"

    iget-object v2, p0, Lcom/transsion/room/adapter/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rank_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0}, Lcom/transsion/room/adapter/c;->h()Lcom/transsion/moviedetailapi/IMovieDetailService;

    move-result-object p1

    if-eqz p1, :cond_1

    const-class v1, Lcom/transsion/room/viewmodel/RoomHotViewModel;

    invoke-interface {p1, v0, v1}, Lcom/transsion/moviedetailapi/IMovieDetailService;->e(Landroid/os/Bundle;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/baseui/fragment/EmptyFragment;

    invoke-direct {p1}, Lcom/transsion/baseui/fragment/EmptyFragment;-><init>()V

    :cond_2
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
