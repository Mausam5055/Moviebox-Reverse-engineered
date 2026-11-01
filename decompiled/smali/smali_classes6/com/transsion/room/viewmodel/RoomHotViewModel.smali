.class public final Lcom/transsion/room/viewmodel/RoomHotViewModel;
.super Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;


# instance fields
.field private k:I

.field private final l:Lkotlin/Lazy;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private final o:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;-><init>(Landroid/app/Application;)V

    const/16 p1, 0xa

    iput p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->k:I

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/transsion/room/viewmodel/j;

    invoke-direct {v0}, Lcom/transsion/room/viewmodel/j;-><init>()V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->l:Lkotlin/Lazy;

    const-string p1, "0"

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->n:Ljava/lang/String;

    new-instance p1, Lcom/transsion/room/viewmodel/k;

    invoke-direct {p1}, Lcom/transsion/room/viewmodel/k;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->o:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic O()Leq/a;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->d0()Leq/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic P(Lcom/transsion/room/viewmodel/RoomHotViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->c0(Lcom/transsion/room/viewmodel/RoomHotViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q()Lcom/transsion/usercenter/profile/b;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->b0()Lcom/transsion/usercenter/profile/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic R(Lcom/transsion/room/viewmodel/RoomHotViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->o()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic S(Lcom/transsion/room/viewmodel/RoomHotViewModel;)Lcom/transsion/usercenter/profile/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->X()Lcom/transsion/usercenter/profile/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic T(Lcom/transsion/room/viewmodel/RoomHotViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic U(Lcom/transsion/room/viewmodel/RoomHotViewModel;)Leq/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->Z()Leq/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic V(Lcom/transsion/room/viewmodel/RoomHotViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->n:Ljava/lang/String;

    return-void
.end method

.method private final X()Lcom/transsion/usercenter/profile/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/b;

    return-object v0
.end method

.method private final Z()Leq/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq/a;

    return-object v0
.end method

.method private final a0(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/room/viewmodel/RoomHotViewModel$loadNewSubject$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/room/viewmodel/RoomHotViewModel$loadNewSubject$1;-><init>(Lcom/transsion/room/viewmodel/RoomHotViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final b0()Lcom/transsion/usercenter/profile/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/usercenter/profile/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/b;

    return-object v0
.end method

.method private static final c0(Lcom/transsion/room/viewmodel/RoomHotViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/PublishEvent;->getPostId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->a0(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final d0()Leq/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Leq/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq/a;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/transsion/moviedetailapi/enum/PostListSource;
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/enum/PostListSource;->ROOM:Lcom/transsion/moviedetailapi/enum/PostListSource;

    return-object v0
.end method

.method public E(Z)V
    .locals 6

    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->W()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->t()Lcom/transsion/moviedetailapi/PostRankType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/PostRankType;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/room/viewmodel/RoomHotViewModel;->Y(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public F(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, "subject_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->m:Ljava/lang/String;

    const-string v0, "rank_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.transsion.moviedetailapi.PostRankType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/moviedetailapi/PostRankType;

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->M(Lcom/transsion/moviedetailapi/PostRankType;)V

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance p1, Lcom/transsion/room/viewmodel/l;

    invoke-direct {p1, p0}, Lcom/transsion/room/viewmodel/l;-><init>(Lcom/transsion/room/viewmodel/RoomHotViewModel;)V

    new-instance v3, Lcom/transsion/room/viewmodel/RoomHotViewModel$onCreate$$inlined$observeEvent$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v3, v2, p1, v1}, Lcom/transsion/room/viewmodel/RoomHotViewModel$onCreate$$inlined$observeEvent$1;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public W()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->k:I

    return v0
.end method

.method public final Y(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1;

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/transsion/room/viewmodel/RoomHotViewModel$getPostSubject$1;-><init>(Lcom/transsion/room/viewmodel/RoomHotViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public e0(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/room/viewmodel/RoomHotViewModel;->k:I

    return-void
.end method

.method public w(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_NEW:Lcom/transsion/moviedetailapi/PostRankType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p1, "roomdetail_new"

    goto :goto_0

    :cond_0
    const-string p1, "roomdetail_hot"

    :goto_0
    return-object p1
.end method
