.class public final Lrm/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lrm/e;

.field private static b:Z

.field private static c:Lrm/b;

.field private static d:Z

.field private static final e:Lkotlin/Lazy;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrm/e;

    invoke-direct {v0}, Lrm/e;-><init>()V

    sput-object v0, Lrm/e;->a:Lrm/e;

    new-instance v0, Lrm/c;

    invoke-direct {v0}, Lrm/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lrm/e;->e:Lkotlin/Lazy;

    const-string v0, ""

    sput-object v0, Lrm/e;->f:Ljava/lang/String;

    const-string v0, "wefeed-mobile-bff"

    sput-object v0, Lrm/e;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lrm/a;
    .locals 1

    invoke-static {}, Lrm/e;->i()Lrm/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lrm/e;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lrm/e;)Lrm/a;
    .locals 0

    invoke-direct {p0}, Lrm/e;->k()Lrm/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lrm/b;
    .locals 1

    sget-object v0, Lrm/e;->c:Lrm/b;

    return-object v0
.end method

.method public static final synthetic e(Lrm/e;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lrm/e;->l()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Z)V
    .locals 0

    sput-boolean p0, Lrm/e;->d:Z

    return-void
.end method

.method public static final synthetic g(Z)V
    .locals 0

    sput-boolean p0, Lrm/e;->b:Z

    return-void
.end method

.method private static final i()Lrm/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lrm/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrm/a;

    return-object v0
.end method

.method private final j()Ljava/lang/String;
    .locals 12

    sget-object v0, Lrm/e;->f:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lrm/e;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "all"

    if-gt v0, v1, :cond_1

    sput-object v2, Lrm/e;->f:Ljava/lang/String;

    return-object v2

    :cond_1
    :try_start_0
    const-class v0, Lsm/g;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm/g;

    invoke-interface {v1}, Lsm/g;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    const-string v4, ","

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrm/e;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    move-object v5, v1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "CombinedRequestParam"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sput-object v2, Lrm/e;->f:Ljava/lang/String;

    :goto_2
    sget-object v0, Lrm/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method private final k()Lrm/a;
    .locals 1

    sget-object v0, Lrm/e;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrm/a;

    return-object v0
.end method

.method private final l()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lrm/e;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lrm/e;->h:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lrm/e;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic p(Lrm/e;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, "wefeed-mobile-bff"

    :cond_1
    invoke-virtual {p0, p1, p2}, Lrm/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lrm/e;->a:Lrm/e;

    invoke-direct {v0}, Lrm/e;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final h()V
    .locals 3

    sget-boolean v0, Lrm/e;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lrm/e;->g:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lrm/e;->p(Lrm/e;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lrm/e;->h:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lrm/e;->h()V

    return-void
.end method

.method public final n()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lrm/e;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lrm/e;->g:Ljava/lang/String;

    sget-boolean v0, Lrm/e;->d:Z

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "RequestConfig"

    const-string v3, "requestConfig ing..."

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lrm/e;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lrm/e;->b:Z

    sget-object v0, Lsm/d;->a:Lsm/d;

    invoke-virtual {v0}, Lsm/d;->g()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "configVersion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    new-instance v0, Lrm/d;

    invoke-direct {v0}, Lrm/d;-><init>()V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->r(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lrm/e$a;

    invoke-direct {v1, p2, p1, v2}, Lrm/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->n(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object p2, Lsg/d;->a:Lsg/d;

    invoke-virtual {p2}, Lsg/d;->e()Lio/reactivex/rxjava3/core/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object p2, Lrm/e$b;->a:Lrm/e$b;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->y(Llz/d;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance p2, Lrm/e$c;

    invoke-direct {p2}, Lrm/e$c;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final r(Lrm/b;)V
    .locals 1

    const-string v0, "configLoadListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lrm/e;->c:Lrm/b;

    return-void
.end method
