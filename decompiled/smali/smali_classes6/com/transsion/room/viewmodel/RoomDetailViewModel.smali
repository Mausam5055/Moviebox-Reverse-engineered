.class public final Lcom/transsion/room/viewmodel/RoomDetailViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/viewmodel/RoomDetailViewModel$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/room/viewmodel/RoomDetailViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->f:Lcom/transsion/room/viewmodel/RoomDetailViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/room/viewmodel/e;

    invoke-direct {v1}, Lcom/transsion/room/viewmodel/e;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/room/viewmodel/f;

    invoke-direct {v0}, Lcom/transsion/room/viewmodel/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/room/viewmodel/g;

    invoke-direct {v0}, Lcom/transsion/room/viewmodel/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/room/viewmodel/h;

    invoke-direct {v0}, Lcom/transsion/room/viewmodel/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/room/viewmodel/i;

    invoke-direct {v0}, Lcom/transsion/room/viewmodel/i;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->e:Lkotlin/Lazy;

    return-void
.end method

.method private static final A()Lrj/a;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->w1()Lrj/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final B()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final D()Leq/a;
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

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->z()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Leq/a;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->D()Leq/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lrj/a;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->A()Lrj/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->B()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic g(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->n()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Lrj/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->o()Lrj/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->r()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Leq/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->u()Leq/a;

    move-result-object p0

    return-object p0
.end method

.method private final l(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 3

    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method private final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method private final n()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method private final o()Lrj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrj/a;

    return-object v0
.end method

.method private final r()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method private final u()Leq/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq/a;

    return-object v0
.end method

.method private static final y()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final z()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final C(Ljava/lang/String;)V
    .locals 7

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/room/viewmodel/RoomDetailViewModel$roomVisit$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$roomVisit$1;-><init>(Ljava/lang/String;Lcom/transsion/room/viewmodel/RoomDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 7

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->u()Leq/a;

    move-result-object v1

    sget-object v0, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v0}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Leq/a$a;->b(Leq/a;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$b;

    invoke-direct {v0, p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$b;-><init>(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final q()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->r()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final s()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final t()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->n()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 7

    const-string v0, "roomItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$insertRecentlyRoom$1;-><init>(Lcom/transsion/moviedetailapi/bean/RoomItem;Lcom/transsion/room/viewmodel/RoomDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 4

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->u()Leq/a;

    move-result-object v0

    sget-object v1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/room/bean/CheckInEntity;

    invoke-direct {v2, p1}, Lcom/transsion/room/bean/CheckInEntity;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toJson(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->l(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Leq/a;->i(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/room/viewmodel/RoomDetailViewModel$c;

    invoke-direct {v1, p1, p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$c;-><init>(Ljava/lang/String;Lcom/transsion/room/viewmodel/RoomDetailViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 4

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->u()Leq/a;

    move-result-object v0

    sget-object v1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/room/bean/CheckInEntity;

    invoke-direct {v2, p1}, Lcom/transsion/room/bean/CheckInEntity;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toJson(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->l(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Leq/a;->k(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/room/viewmodel/RoomDetailViewModel$d;

    invoke-direct {v1, p1, p0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$d;-><init>(Ljava/lang/String;Lcom/transsion/room/viewmodel/RoomDetailViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
