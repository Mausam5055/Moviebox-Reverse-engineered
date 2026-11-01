.class public final Lgr/c;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Lkotlin/Lazy;

.field private g:Lio/reactivex/rxjava3/disposables/c;

.field private final h:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

    invoke-direct {p1}, Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;-><init>()V

    iput-object p1, p0, Lgr/c;->b:Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lgr/c;->c:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lgr/c;->d:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lgr/c;->e:Landroidx/lifecycle/b0;

    new-instance p1, Lgr/a;

    invoke-direct {p1}, Lgr/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lgr/c;->f:Lkotlin/Lazy;

    new-instance p1, Lgr/b;

    invoke-direct {p1}, Lgr/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lgr/c;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c()Lfr/c;
    .locals 1

    invoke-static {}, Lgr/c;->s()Lfr/c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Z
    .locals 1

    invoke-static {}, Lgr/c;->p()Z

    move-result v0

    return v0
.end method

.method public static final synthetic e(Lgr/c;Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lgr/c;->n(Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    return-void
.end method

.method private final f()Lfr/c;
    .locals 1

    iget-object v0, p0, Lgr/c;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/c;

    return-object v0
.end method

.method private final n(Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    :cond_1
    iget-object v1, p0, Lgr/c;->b:Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lgr/c;->b:Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lgr/c;->e:Landroidx/lifecycle/b0;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private static final p()Z
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_search_suggest_use_google_for_showbox"

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

.method private final q(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lgr/c;->f()Lfr/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/c;->b(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lgr/c$c;

    invoke-direct {v1, p0, p1}, Lgr/c$c;-><init>(Lgr/c;Ljava/lang/String;)V

    new-instance p1, Lgr/c$d;

    invoke-direct {p1, p0}, Lgr/c$d;-><init>(Lgr/c;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/core/j;->B(Llz/f;Llz/f;)Lio/reactivex/rxjava3/disposables/c;

    return-void
.end method

.method private final r(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lgr/c;->f()Lfr/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lfr/c;->g(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p2

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object p2

    new-instance p3, Lgr/c$e;

    invoke-direct {p3, p0, p1}, Lgr/c$e;-><init>(Lgr/c;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method private static final s()Lfr/c;
    .locals 1

    new-instance v0, Lfr/c;

    invoke-direct {v0}, Lfr/c;-><init>()V

    return-object v0
.end method

.method private final t()Z
    .locals 1

    invoke-virtual {p0}, Lgr/c;->o()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgr/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gp_sug"

    goto :goto_0

    :cond_0
    const-string v0, "mb_sug"

    :goto_0
    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lgr/c;->f()Lfr/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/c;->e(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lgr/c$a;

    invoke-direct {v0, p0}, Lgr/c$a;-><init>(Lgr/c;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lgr/c;->f()Lfr/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/c;->f(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lgr/c$b;

    invoke-direct {v0, p0}, Lgr/c$b;-><init>(Lgr/c;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final j(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageFrom"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lgr/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lgr/c;->q(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lgr/c;->r(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lgr/c;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lgr/c;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lgr/c;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lgr/c;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onCleared()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    iget-object v0, p0, Lgr/c;->g:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgr/c;->g:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_0
    return-void
.end method
