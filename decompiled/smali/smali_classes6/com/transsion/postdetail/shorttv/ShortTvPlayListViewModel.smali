.class public final Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;


# instance fields
.field private final b:Lcom/transsion/postdetail/shorttv/a;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/b0;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->n:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    sget-object p1, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {p1}, Lzg/c$a;->a()Lzg/c;

    move-result-object p1

    const-class v0, Lcom/transsion/postdetail/shorttv/a;

    invoke-virtual {p1, v0}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/shorttv/a;

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->b:Lcom/transsion/postdetail/shorttv/a;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->c:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->d:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->e:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->g:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->h:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->j:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->k:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->l:Landroidx/lifecycle/b0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->m:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->k(Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-void
.end method

.method private final k(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;

    invoke-direct {v1}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setFavoriteNum(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setHasFavorite(Z)V

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setFavoriteTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setSubjectId(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$updateFavorite$1$1;

    const/4 p1, 0x0

    invoke-direct {v5, p0, v1, p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$updateFavorite$1$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method


# virtual methods
.method public final d(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 11

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v2

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v6

    new-instance v8, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;ZLcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 p1, 0x0

    const/4 v7, 0x0

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final g()Lcom/transsion/postdetail/shorttv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->b:Lcom/transsion/postdetail/shorttv/a;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i:Landroidx/lifecycle/b0;

    const-string v1, "ad_cancel"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
