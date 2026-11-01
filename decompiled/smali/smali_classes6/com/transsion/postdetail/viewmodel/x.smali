.class public final Lcom/transsion/postdetail/viewmodel/x;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    const-string v0, "ShortTvDetailViewModel"

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->a:Ljava/lang/String;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/r;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/r;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->b:Lkotlin/Lazy;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/postdetail/viewmodel/s;

    invoke-direct {v1}, Lcom/transsion/postdetail/viewmodel/s;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/t;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/t;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/u;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/u;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/v;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/v;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/w;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/w;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/x;->r()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lxo/b;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/x;->t()Lxo/b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/x;->i()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/x;->s()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Lkn/a;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/x;->h()Lkn/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/x;->p()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method private static final h()Lkn/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lkn/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkn/a;

    return-object v0
.end method

.method private static final i()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method private static final p()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final r()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final s()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final t()Lxo/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lxo/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    const-string v0, "postId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextPage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;-><init>()V

    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPerPage(I)V

    sget-object p3, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {p3}, Lyg/b$a;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setSessionId(Ljava/lang/String;)V

    sget-object p3, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    invoke-virtual {p3}, Lcom/transsion/baselib/report/h;->c()Landroid/net/Uri;

    move-result-object p3

    const-string p4, ""

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    move-object p3, p4

    :cond_1
    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setDeepLink(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setUserPrefer(Ljava/lang/String;)V

    new-instance p3, Lwj/a;

    sget-object p4, Lwj/b;->a:Lwj/b$a;

    invoke-virtual {p4}, Lwj/b$a;->e()Ljava/util/Queue;

    move-result-object p4

    invoke-direct {p3, p4}, Lwj/a;-><init>(Ljava/util/Queue;)V

    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_2

    const-string p1, "0"

    :cond_2
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPostId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setTabId(I)V

    invoke-virtual {v0, p5}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setImmersiveRecType(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/x;->d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;->r(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/x;->d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/x;->m()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lqm/b;->f(Landroidx/lifecycle/b0;)V

    :cond_4
    return-void
.end method

.method public final l()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/x;->m()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/transsion/moviedetailapi/bean/ShortTVRespData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqm/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/ShortTVRespData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/x;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final q(Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v1, Lqm/e;->a:Lqm/e;

    invoke-virtual {v1, p1}, Lqm/e;->a(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lqm/b;

    instance-of v2, v2, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    check-cast v1, Lqm/b;

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    check-cast v1, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    if-nez v1, :cond_4

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    const/4 p1, 0x1

    invoke-direct {v1, v0, p1, v0}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;-><init>(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_4
    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/x;->d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    return-void
.end method
