.class public final Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;
.super Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;


# instance fields
.field private k:I

.field private l:Ljava/lang/String;

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;

.field private o:I

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/usercenter/profile/j0;

    invoke-direct {p1}, Lcom/transsion/usercenter/profile/j0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->m:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/usercenter/profile/k0;

    invoke-direct {p1}, Lcom/transsion/usercenter/profile/k0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->n:Lkotlin/Lazy;

    const/16 p1, 0xa

    iput p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->o:I

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->p:Ljava/lang/String;

    return-void
.end method

.method public static synthetic O()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->e0()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic P(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->g0(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q()Lcom/transsion/usercenter/profile/b;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->f0()Lcom/transsion/usercenter/profile/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic R(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->o()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic S(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic T(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Lcom/transsion/usercenter/profile/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->a0()Lcom/transsion/usercenter/profile/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic U(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    return p0
.end method

.method public static final synthetic V(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic W(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->b0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic X(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->p:Ljava/lang/String;

    return-void
.end method

.method private final Y()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final a0()Lcom/transsion/usercenter/profile/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/profile/b;

    return-object v0
.end method

.method private final b0()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private final c0()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_1
    return v3
.end method

.method private final d0(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$loadNewSubject$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$loadNewSubject$1;-><init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final e0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final f0()Lcom/transsion/usercenter/profile/b;
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

.method private static final g0(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/PublishEvent;->getPostId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->d0(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public A()Lcom/transsion/moviedetailapi/enum/PostListSource;
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/enum/PostListSource;->PROFILE:Lcom/transsion/moviedetailapi/enum/PostListSource;

    return-object v0
.end method

.method public B()Lcom/transsion/moviedetailapi/enum/ProfileSubSource;
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->POSTS:Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/moviedetailapi/enum/ProfileSubSource;->LIKES:Lcom/transsion/moviedetailapi/enum/ProfileSubSource;

    :goto_0
    return-object v0
.end method

.method public E(Z)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->Y()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->c0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$a;-><init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->n(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$b;-><init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public F(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "source"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "userId"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->l:Ljava/lang/String;

    iget p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->b0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->c0()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance p1, Lcom/transsion/usercenter/profile/l0;

    invoke-direct {p1, p0}, Lcom/transsion/usercenter/profile/l0;-><init>(Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;)V

    new-instance v5, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$onCreate$$inlined$observeEvent$1;

    invoke-direct {v5, v0, p1, v1}, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel$onCreate$$inlined$observeEvent$1;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    const-string p1, "0"

    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->p:Ljava/lang/String;

    return-void
.end method

.method public Z()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->o:I

    return v0
.end method

.method public h0(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->o:I

    return-void
.end method

.method public w(I)Ljava/lang/String;
    .locals 0

    iget p1, p0, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;->k:I

    if-nez p1, :cond_0

    const-string p1, "profiledetail_posts"

    goto :goto_0

    :cond_0
    const-string p1, "profiledetail_likes"

    :goto_0
    return-object p1
.end method
