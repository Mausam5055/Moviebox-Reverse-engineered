.class public final Lcom/transsion/room/viewmodel/RoomViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/viewmodel/RoomViewModel$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/transsion/room/viewmodel/RoomViewModel$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Lkotlin/Lazy;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/room/viewmodel/RoomViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/room/viewmodel/RoomViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/room/viewmodel/RoomViewModel;->l:Lcom/transsion/room/viewmodel/RoomViewModel$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/room/viewmodel/m;

    invoke-direct {p1}, Lcom/transsion/room/viewmodel/m;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->b:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/room/viewmodel/n;

    invoke-direct {p1}, Lcom/transsion/room/viewmodel/n;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->c:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->d:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->e:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/room/viewmodel/o;

    invoke-direct {p1}, Lcom/transsion/room/viewmodel/o;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->f:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->g:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->h:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->i:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->j:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/room/viewmodel/p;

    invoke-direct {p1}, Lcom/transsion/room/viewmodel/p;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->k:Lkotlin/Lazy;

    return-void
.end method

.method private final D()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method private final K()Leq/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq/a;

    return-object v0
.end method

.method private static final L()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final M()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "room_top_tab.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final N()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/room/viewmodel/RoomViewModel$loadRoomTabCache$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/room/viewmodel/RoomViewModel$loadRoomTabCache$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final O()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final P(Lcom/transsion/moviedetailapi/bean/RoomTabBean;)V
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "k_room_tab_cache_version"

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomTabBean;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_room_tab_cache"

    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final Q()Leq/a;
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

.method public static synthetic c()Lmq/a;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomViewModel;->r()Lmq/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomViewModel;->L()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Leq/a;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomViewModel;->Q()Leq/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/room/viewmodel/RoomViewModel;->O()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic g(Lcom/transsion/room/viewmodel/RoomViewModel;)Lmq/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->s()Lmq/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->j:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->e:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->D()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->d:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->h:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->i:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/room/viewmodel/RoomViewModel;)Leq/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->K()Leq/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/room/viewmodel/RoomViewModel;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->M()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/room/viewmodel/RoomViewModel;Lcom/transsion/moviedetailapi/bean/RoomTabBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/room/viewmodel/RoomViewModel;->P(Lcom/transsion/moviedetailapi/bean/RoomTabBean;)V

    return-void
.end method

.method private static final r()Lmq/a;
    .locals 1

    new-instance v0, Lmq/a;

    invoke-direct {v0}, Lmq/a;-><init>()V

    return-object v0
.end method

.method private final s()Lmq/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmq/a;

    return-object v0
.end method

.method public static synthetic u(Lcom/transsion/room/viewmodel/RoomViewModel;Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "1"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x10

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/room/viewmodel/RoomViewModel;->t(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private final y()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final B(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->K()Leq/a;

    move-result-object v0

    sget-object v1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Leq/a;->o(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object p2, Lsg/d;->a:Lsg/d;

    invoke-virtual {p2}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance p2, Lcom/transsion/room/viewmodel/RoomViewModel$c;

    invoke-direct {p2, p0}, Lcom/transsion/room/viewmodel/RoomViewModel$c;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    :cond_0
    return-void
.end method

.method public final C()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->D()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final E()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomFilterTabList$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomFilterTabList$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final F(ZILjava/lang/String;ILjava/lang/Double;Ljava/lang/Double;Landroid/location/Address;)V
    .locals 12

    const-string v0, "page"

    move-object v5, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v11, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1;

    const/4 v10, 0x0

    move-object v1, v11

    move-object/from16 v2, p6

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move/from16 v6, p4

    move v7, p2

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1;-><init>(Ljava/lang/Double;Ljava/lang/Double;Landroid/location/Address;Ljava/lang/String;IILcom/transsion/room/viewmodel/RoomViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p1, v0

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v11

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final G()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final H()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->N()V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomTabs$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomTabs$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->h:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final J()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->i:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final t(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final v()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->j:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final w(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->K()Leq/a;

    move-result-object v0

    sget-object v1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Leq/a;->f(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object p2, Lsg/d;->a:Lsg/d;

    invoke-virtual {p2}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance p2, Lcom/transsion/room/viewmodel/RoomViewModel$b;

    invoke-direct {p2, p0}, Lcom/transsion/room/viewmodel/RoomViewModel$b;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final x()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final z(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 9

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v8, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
