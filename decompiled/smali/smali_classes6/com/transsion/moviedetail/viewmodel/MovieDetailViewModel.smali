.class public final Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Lkotlin/Lazy;

.field private final l:Landroidx/lifecycle/b0;

.field private m:Lcom/transsion/moviedetail/preload/b;

.field private n:Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;

.field private o:Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;

.field private final p:Lkotlin/Lazy;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->r:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/d;

    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/d;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->b:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/e;

    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/e;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->c:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/f;

    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/f;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->d:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/g;

    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/g;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->e:Lkotlin/Lazy;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/transsion/moviedetail/viewmodel/h;

    invoke-direct {v0}, Lcom/transsion/moviedetail/viewmodel/h;-><init>()V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/i;

    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/i;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->g:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/j;

    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/j;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->h:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/k;

    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/k;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->i:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->j:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/l;

    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/l;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->k:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->l:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/moviedetail/viewmodel/m;

    invoke-direct {p1}, Lcom/transsion/moviedetail/viewmodel/m;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->p:Lkotlin/Lazy;

    return-void
.end method

.method private final C(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "in_id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/util/Locale;

    const-string v1, "id"

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic E(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->D(Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void
.end method

.method private final G()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method private final M(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->o:Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;->p(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->o:Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->L()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqm/b;->f(Landroidx/lifecycle/b0;)V

    :cond_2
    return-void
.end method

.method private final N()Lfn/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfn/a;

    return-object v0
.end method

.method private final O()Lqy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private final R()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public static synthetic T(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;ILjava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->S(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private static final U()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static synthetic W(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->V(Ljava/lang/String;Z)V

    return-void
.end method

.method private static final X()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final Y()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final Z()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final a0()Lqy/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lqy/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private static final b0()Lfn/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lfn/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfn/a;

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->U()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method private static final c0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->c0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method private static final e0()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->Z()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->e0()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()Lfn/a;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->b0()Lfn/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->Y()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->r()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k()Lqy/a;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->a0()Lqy/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->X()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic m(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->j:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Lfn/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->N()Lfn/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Lqy/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->O()Lqy/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->R()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method private static final q()Landroidx/lifecycle/b0;
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

.method public static synthetic u(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;Ljava/lang/Integer;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->t(Ljava/lang/String;Ljava/lang/Integer;IZ)V

    return-void
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->j:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->q:Z

    return v0
.end method

.method public final D(Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->m:Lcom/transsion/moviedetail/preload/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/moviedetail/preload/b;->q(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->m:Lcom/transsion/moviedetail/preload/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/preload/b;->p(Ljava/lang/Integer;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->m:Lcom/transsion/moviedetail/preload/b;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/transsion/moviedetail/preload/b;->o(Z)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->m:Lcom/transsion/moviedetail/preload/b;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->G()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lqm/b;->f(Landroidx/lifecycle/b0;)V

    :cond_3
    return-void
.end method

.method public final F()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->G()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final H()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->l:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final J()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->q:Z

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getRoomPostEntrance$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getRoomPostEntrance$1;-><init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final K()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final L()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final P()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->p:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final Q()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->R()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final S(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 9

    const-string v0, "subjectId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lqm/e;->a:Lqm/e;

    invoke-virtual {v0, p1}, Lqm/e;->a(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move-object v1, p1

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

    check-cast v3, Lqm/b;

    instance-of v3, v3, Lcom/transsion/moviedetail/preload/b;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Lqm/b;

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    check-cast v2, Lcom/transsion/moviedetail/preload/b;

    if-nez v2, :cond_3

    new-instance v2, Lcom/transsion/moviedetail/preload/b;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/transsion/moviedetail/preload/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_3
    iput-object v2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->m:Lcom/transsion/moviedetail/preload/b;

    if-eqz p1, :cond_6

    move-object p3, p1

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lqm/b;

    instance-of v2, v2, Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    check-cast v1, Lqm/b;

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    check-cast v1, Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;

    if-nez v1, :cond_7

    new-instance v1, Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;

    invoke-direct {v1, p2}, Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;-><init>(Ljava/lang/String;)V

    :cond_7
    iput-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->n:Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;

    if-eqz p1, :cond_a

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lqm/b;

    instance-of v1, v1, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;

    if-eqz v1, :cond_8

    move-object v0, p3

    :cond_9
    check-cast v0, Lqm/b;

    :cond_a
    check-cast v0, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;

    if-nez v0, :cond_b

    new-instance v0, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;

    invoke-direct {v0, p2}, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;-><init>(Ljava/lang/String;)V

    :cond_b
    iput-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->o:Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;

    invoke-direct {p0, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->M(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->z(Ljava/lang/String;)V

    return-void
.end method

.method public final V(Ljava/lang/String;Z)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, p0, v1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$postRequestResource$1;-><init>(Ljava/lang/String;ZLcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final d0(Ljava/lang/String;I)V
    .locals 8

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "action"

    invoke-virtual {v1, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$wantToSee$1;

    const/4 p1, 0x0

    invoke-direct {v5, v1, p0, p1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$wantToSee$1;-><init>(Lcom/google/gson/JsonObject;Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final s(ZLjava/lang/String;Ljava/lang/Integer;IZ)V
    .locals 11

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v10, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;

    const/4 v9, 0x0

    move-object v2, v10

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchLocalRec$1;-><init>(ZLjava/lang/String;Ljava/lang/Integer;IZLcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, v10

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/Integer;IZ)V
    .locals 10

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p0

    invoke-direct/range {v3 .. v9}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$fetchRec$1;-><init>(Ljava/lang/String;Ljava/lang/Integer;IZLcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final v(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_f

    :cond_1
    sget-object v1, Lcom/transsion/baselib/locale/d;->f:Lcom/transsion/baselib/locale/d$b;

    invoke-virtual {v1}, Lcom/transsion/baselib/locale/d$b;->e()Lcom/transsion/baselib/locale/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/baselib/locale/d;->l()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/baselib/locale/d$b;->e()Lcom/transsion/baselib/locale/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/baselib/locale/d;->k()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->C(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v0

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v0

    :goto_3
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    if-lez v4, :cond_10

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_d

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v5

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->C(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_7
    move-object v7, v0

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_8
    move-object v8, v0

    :goto_7
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    move v6, v4

    :goto_8
    if-lez v6, :cond_b

    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v5

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->C(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_c
    move-object v6, v0

    :goto_a
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_d
    move-object v7, v0

    :goto_b
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v4, v3

    goto :goto_c

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    :goto_c
    if-lez v4, :cond_10

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_10
    :goto_d
    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v2, Lcom/transsion/moviedetail/R$string;->movie_detail_subtitles:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v5, 0x1

    if-gez v5, :cond_11

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_11
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v5, v2, :cond_12

    const-string v2, ", "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_12
    move v5, v3

    goto :goto_e

    :cond_13
    return-object v1

    :cond_14
    :goto_f
    return-object v0
.end method

.method public final w()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final x(Ljava/lang/String;IIII)V
    .locals 10

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v9, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p5

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;-><init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;IIIILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v9

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final y()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->n:Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;->p(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->n:Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqm/b;->f(Landroidx/lifecycle/b0;)V

    :cond_2
    return-void
.end method
