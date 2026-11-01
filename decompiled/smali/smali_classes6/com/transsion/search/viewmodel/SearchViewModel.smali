.class public final Lcom/transsion/search/viewmodel/SearchViewModel;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Lkotlin/Lazy;

.field private i:Lio/reactivex/rxjava3/disposables/c;

.field private final j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

.field private final k:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->b:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->c:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->d:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->e:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->f:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->g:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/search/viewmodel/a;

    invoke-direct {p1}, Lcom/transsion/search/viewmodel/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->h:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    invoke-direct {p1}, Lcom/transsion/search/widget/BoundaryLinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    new-instance p1, Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    invoke-direct {p1}, Lcom/transsion/search/widget/BoundaryLinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->k:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->l:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/search/viewmodel/b;

    invoke-direct {p1}, Lcom/transsion/search/viewmodel/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->m:Lkotlin/Lazy;

    return-void
.end method

.method private final A(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lyq/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyq/j;->e(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/search/viewmodel/SearchViewModel$e;

    invoke-direct {v1, p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$e;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method private static final B()Lyq/j;
    .locals 1

    new-instance v0, Lyq/j;

    invoke-direct {v0}, Lyq/j;-><init>()V

    return-object v0
.end method

.method private final F()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->w()Z

    move-result v0

    return v0
.end method

.method public static synthetic c()Z
    .locals 1

    invoke-static {}, Lcom/transsion/search/viewmodel/SearchViewModel;->x()Z

    move-result v0

    return v0
.end method

.method public static synthetic d()Lyq/j;
    .locals 1

    invoke-static {}, Lcom/transsion/search/viewmodel/SearchViewModel;->B()Lyq/j;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->b:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->e:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->c:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->d:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/search/viewmodel/SearchViewModel;)Lyq/j;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lyq/j;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;Lcom/transsion/search/bean/SearchSuggestEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/search/viewmodel/SearchViewModel;->v(Ljava/lang/String;Lcom/transsion/search/bean/SearchSuggestEntity;)V

    return-void
.end method

.method private final n()Lyq/j;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyq/j;

    return-object v0
.end method

.method private final v(Ljava/lang/String;Lcom/transsion/search/bean/SearchSuggestEntity;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchSuggestEntity;->getKeyword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    move-object v0, p1

    :cond_3
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->l:Landroidx/lifecycle/b0;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchSuggestEntity;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_6

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->k:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->k:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/search/activity/SearchManagerActivity;->m:Lcom/transsion/search/activity/SearchManagerActivity$a;

    const-string v1, "no associative word results when the user enters query longer than 2 characters"

    invoke-virtual {p1, v1}, Lcom/transsion/search/activity/SearchManagerActivity$a;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key_word"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchSuggestEntity;->getOps()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    const-string p2, ""

    :cond_5
    const-string v0, "ops"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sug_source"

    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/transsion/search/fragment/BaseSearchMainFragment;->Companion:Lcom/transsion/search/fragment/BaseSearchMainFragment$a;

    invoke-virtual {p2}, Lcom/transsion/search/fragment/BaseSearchMainFragment$a;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "search_id"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lhj/i;->a:Lhj/i;

    const-string v0, "search_suggest"

    invoke-virtual {p2, v0, p1}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void
.end method

.method private static final x()Z
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_search_suggest_use_google"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

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

.method private final z(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lyq/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyq/j;->b(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/search/viewmodel/SearchViewModel$c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$c;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/search/viewmodel/SearchViewModel$d;

    invoke-direct {v2, p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$d;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/j;->B(Llz/f;Llz/f;)Lio/reactivex/rxjava3/disposables/c;

    return-void
.end method


# virtual methods
.method public final C(IILjava/lang/String;)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/search/net/RequestSearchEntity;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/search/net/RequestSearchEntity;-><init>(IILjava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lyq/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lyq/j;->h(Lcom/transsion/search/net/RequestSearchEntity;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance p2, Lcom/transsion/search/viewmodel/SearchViewModel$f;

    invoke-direct {p2, p0}, Lcom/transsion/search/viewmodel/SearchViewModel$f;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final D(IILjava/lang/String;)V
    .locals 7

    const-string v0, "keyword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/search/net/RequestSearchEntity;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/search/net/RequestSearchEntity;-><init>(IILjava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/search/viewmodel/SearchViewModel$searchWork$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$searchWork$1;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Lcom/transsion/search/net/RequestSearchEntity;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final E(IILjava/lang/String;I)V
    .locals 7

    const-string v0, "keyword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/search/net/RequestSearchEntity;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/search/net/RequestSearchEntity;-><init>(IILjava/lang/String;I)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/search/viewmodel/SearchViewModel$searchWorkV2$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$searchWorkV2$1;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Lcom/transsion/search/net/RequestSearchEntity;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final k()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lyq/j;

    move-result-object v0

    invoke-virtual {v0}, Lyq/j;->d()Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/search/viewmodel/SearchViewModel$a;

    invoke-direct {v1, p0}, Lcom/transsion/search/viewmodel/SearchViewModel$a;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->i:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->i:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->z(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->A(Ljava/lang/String;)V

    return-void
.end method

.method public final q()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final r()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gp_sug"

    goto :goto_0

    :cond_0
    const-string v0, "mb_sug"

    :goto_0
    return-object v0
.end method

.method public final t()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->l:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final u()Lcom/transsion/search/widget/BoundaryLinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/search/net/RequestJoinGroupEntity;

    invoke-direct {v0, p1}, Lcom/transsion/search/net/RequestJoinGroupEntity;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lyq/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lyq/j;->g(Lcom/transsion/search/net/RequestJoinGroupEntity;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/search/viewmodel/SearchViewModel$b;

    invoke-direct {v0, p0}, Lcom/transsion/search/viewmodel/SearchViewModel$b;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
