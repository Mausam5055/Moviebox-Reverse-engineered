.class public final Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

.field public static final o:I

.field private static final p:Lkotlin/Lazy;


# instance fields
.field private a:I

.field private volatile b:Z

.field private volatile c:Z

.field private final d:Lol/e;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private k:Lcom/transsion/home/bean/AppTab;

.field private l:Ljava/util/List;

.field private final m:Lkotlinx/coroutines/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->o:I

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/home/viewmodel/preload/a;

    invoke-direct {v1}, Lcom/transsion/home/viewmodel/preload/a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->p:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a:I

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lol/e;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol/e;

    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->d:Lol/e;

    new-instance v0, Lcom/transsion/home/viewmodel/preload/b;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/home/viewmodel/preload/c;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/home/viewmodel/preload/d;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/home/viewmodel/preload/e;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/home/viewmodel/preload/f;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->i:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/home/viewmodel/preload/g;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->j:Lkotlin/Lazy;

    sget-object v0, Lkotlinx/coroutines/j0;->k1:Lkotlinx/coroutines/j0$a;

    new-instance v1, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$b;

    invoke-direct {v1, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$b;-><init>(Lkotlinx/coroutines/j0$a;)V

    iput-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->m:Lkotlinx/coroutines/j0;

    return-void
.end method

.method private final B()Lcom/transsion/home/bean/AppTab;
    .locals 6

    const-string v0, "app_tab"

    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->E()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "getApp(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-class v2, Lcom/transsion/home/bean/AppTab;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/AppTab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :goto_1
    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppTabCache error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "PreloadTrending"

    invoke-virtual {v2, v5, v3, v4}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private final E()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    return-object v0
.end method

.method private final I()Lcom/transsion/home/bean/HotSubjectEntity;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "hot_search_words"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/transsion/home/bean/HotSubjectEntity;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/HotSubjectEntity;

    return-object v0

    :cond_0
    return-object v2
.end method

.method private static final N()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final O(Lcom/transsion/home/bean/AppTab;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/home/bean/BottomTabItem;

    invoke-virtual {v3}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "COMMUNITY"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Lcom/transsion/home/bean/BottomTabItem;

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    const/4 v1, 0x1

    if-eqz v2, :cond_3

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "PreloadTrending"

    const-string v5, "has bottom room tab"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Laq/h;->a:Laq/h;

    invoke-virtual {p1, v1}, Laq/h;->l(Z)V

    goto/16 :goto_7

    :cond_3
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/home/bean/BottomTabItem;

    invoke-virtual {v3}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HOME"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    check-cast v2, Lcom/transsion/home/bean/BottomTabItem;

    goto :goto_3

    :cond_6
    move-object v2, v0

    :goto_3
    const/4 p1, 0x0

    if-nez v2, :cond_7

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "PreloadTrending"

    const-string v5, "has no room tab"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Laq/h;->a:Laq/h;

    invoke-virtual {v0, p1}, Laq/h;->l(Z)V

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/transsion/home/bean/BottomTabItem;->getSubTabs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/home/bean/HomeTabItem;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/transsion/home/bean/HomeTabItem;->getTabCode()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v0

    :goto_4
    const-string v5, "Community"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v0, v3

    :cond_a
    check-cast v0, Lcom/transsion/home/bean/HomeTabItem;

    :cond_b
    sget-object v2, Llg/a;->a:Llg/a$a;

    if-eqz v0, :cond_c

    move v3, v1

    goto :goto_5

    :cond_c
    move v3, p1

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has top room tab:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "PreloadTrending"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Laq/h;->a:Laq/h;

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    move v1, p1

    :goto_6
    invoke-virtual {v2, v1}, Laq/h;->l(Z)V

    :goto_7
    return-void
.end method

.method private static final P()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;
    .locals 1

    new-instance v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;-><init>()V

    return-object v0
.end method

.method private static final R()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final S()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final T(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;

    iget v1, v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p2, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->label:I

    const-string v9, "PreloadTrending"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v11, :cond_1

    iget-object p1, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->d:Lol/e;

    iget v3, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a:I

    iput-object p1, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->L$0:Ljava/lang/Object;

    iput v11, v6, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadMainOperation$1;->label:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Lol/e$a;->b(Lol/e;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p2, Lcom/tn/lib/net/bean/BaseDto;

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/MainOperateData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v10

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get operating data from net size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1, v11}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/home/bean/MainOperateData;

    if-eqz p2, :cond_6

    const-string v0, "from_net"

    invoke-virtual {p2, v0}, Lcom/transsion/home/bean/MainOperateData;->setSourceFrom(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->K()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/MainOperateData;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/transsion/home/bean/MainOperateData;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-direct {p0, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->Z(Lcom/transsion/home/bean/MainOperateData;)V

    :cond_6
    :goto_4
    iget p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a:I

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->K()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    sget-object p2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Operating List msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cause="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v9, p1, v11}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->K()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final V(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadSkuDataCache$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadSkuDataCache$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final W(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadVideoCache$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadVideoCache$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final Y(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "safeGetMmkvString failed for key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PreloadTrending"

    invoke-virtual {v3, v2, p1, v1}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private final Z(Lcom/transsion/home/bean/MainOperateData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "main_operating_data"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public static synthetic a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->w()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    move-result-object v0

    return-object v0
.end method

.method private final a0(Lcom/transsion/home/bean/AppTab;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "app_tab"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->P()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->S()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->N()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->u()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->v()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->R()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic h(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->x(Lcom/transsion/home/bean/AppTab;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lcom/transsion/home/bean/AppTab;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->B()Lcom/transsion/home/bean/AppTab;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->E()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lcom/transsion/home/bean/HotSubjectEntity;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->I()Lcom/transsion/home/bean/HotSubjectEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->p:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic n(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;)Lol/e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->d:Lol/e;

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->O(Lcom/transsion/home/bean/AppTab;)V

    return-void
.end method

.method public static final synthetic p(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->T(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->a0(Lcom/transsion/home/bean/AppTab;)V

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->c:Z

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->k:Lcom/transsion/home/bean/AppTab;

    return-void
.end method

.method public static final synthetic t(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->b:Z

    return-void
.end method

.method private static final u()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final v()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final w()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;
    .locals 1

    new-instance v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;-><init>()V

    return-object v0
.end method

.method private final x(Lcom/transsion/home/bean/AppTab;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/home/enum/BottomTabType;->values()[Lcom/transsion/home/enum/BottomTabType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/transsion/home/enum/BottomTabType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/transsion/memberapi/IMemberApi;->B()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "co_mem"

    const-string v6, "MainActivity --> getTabEntities() --> \u5f53\u524d\u6ca1\u6709\u5f00\u542f\u4f1a\u5458\u529f\u80fd --> \u4e0d\u5c55\u793a\u4f1a\u5458Tab"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getBottomTabs()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/home/bean/BottomTabItem;

    invoke-virtual {v5}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/transsion/home/enum/BottomTabType;->PREMIUM:Lcom/transsion/home/enum/BottomTabType;

    invoke-virtual {v7}, Lcom/transsion/home/enum/BottomTabType;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    move v5, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method private final y(Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/home/enum/HomeTabType;->values()[Lcom/transsion/home/enum/HomeTabType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/transsion/home/enum/HomeTabType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/home/bean/HomeTabItem;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/home/bean/HomeTabItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method


# virtual methods
.method public final A(Landroid/content/Context;)Lcom/transsion/home/bean/AppTab;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->E()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/transsion/home/bean/AppTab;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/AppTab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final C()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final D()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final F()Lcom/transsion/home/bean/AppTab;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->k:Lcom/transsion/home/bean/AppTab;

    return-object v0
.end method

.method public final G()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getHotSearch$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getHotSearch$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final H()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final J()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final K()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final L()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->l:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->l:Ljava/util/List;

    return-object v0
.end method

.method public final M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->c:Z

    return v0
.end method

.method public final Q(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->b:Z

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->m:Lkotlinx/coroutines/j0;

    new-instance v5, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$loadOperatingDataFromNet$1;

    const/4 v1, 0x0

    invoke-direct {v5, p0, p1, v1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$loadOperatingDataFromNet$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return v0
.end method

.method public final U(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "preloadOperatingCache() called"

    const/4 v2, 0x1

    const-string v3, "PreloadTrending"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadOperating$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$preloadOperating$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->W(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->V(Landroid/content/Context;)V

    return-void
.end method

.method public final X(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->J()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->U(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->Q(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b0(Ljava/util/List;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->l:Ljava/util/List;

    return-void
.end method

.method public final z()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->c:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v2, "PreloadTrending"

    const-string v3, "getAppTab() called"

    invoke-virtual {v1, v2, v3, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$getAppTab$1;-><init>(Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
