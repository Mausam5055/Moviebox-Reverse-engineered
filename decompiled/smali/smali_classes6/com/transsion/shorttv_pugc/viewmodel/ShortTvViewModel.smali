.class public final Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;
    }
.end annotation


# static fields
.field public static final M:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;


# instance fields
.field private final A:Lkotlin/Lazy;

.field private final B:Lkotlin/Lazy;

.field private final C:Lkotlin/Lazy;

.field private final D:Lkotlin/Lazy;

.field private final E:Lkotlin/Lazy;

.field private final F:Ljava/util/List;

.field private final G:Ljava/util/List;

.field private H:Ljava/lang/String;

.field private I:Ljava/util/List;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Ljava/lang/String;

.field private final a:Lrt/a;

.field private final b:Lkotlinx/coroutines/k1;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/LiveData;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/LiveData;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Landroidx/lifecycle/LiveData;

.field private final n:Landroidx/lifecycle/b0;

.field private final o:Landroidx/lifecycle/LiveData;

.field private final p:Landroidx/lifecycle/b0;

.field private final q:Landroidx/lifecycle/LiveData;

.field private final r:Landroidx/lifecycle/b0;

.field private final s:Landroidx/lifecycle/LiveData;

.field private final t:Landroidx/lifecycle/b0;

.field private u:Landroidx/lifecycle/LiveData;

.field private final v:Landroidx/lifecycle/b0;

.field private final w:Landroidx/lifecycle/LiveData;

.field private final x:Ltt/a;

.field private final y:Lkotlin/Lazy;

.field private final z:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->M:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lrt/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrt/a;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->a:Lrt/a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/m1;->c(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/k1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->b:Lkotlinx/coroutines/k1;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->f:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->j:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->k:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->l:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->m:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->n:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->t:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->u:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/LiveData;

    sget-object v0, Lys/a;->a:Lys/a;

    invoke-virtual {v0}, Lys/a;->b()Ltt/a;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Ltt/a;

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/b;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/b;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->y:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/c;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/c;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->z:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/d;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/d;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->A:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/e;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/e;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->B:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/f;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/f;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->C:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/g;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/g;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->D:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/h;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/h;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->E:Lkotlin/Lazy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->F:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->G:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->H:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->H:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->Z(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/f;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->m0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/h;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->n0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/c;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->j0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/e;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->l0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/d;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->k0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/i;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/a;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->o0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lrt/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->a:Lrt/a;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private static final j0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Ltt/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltt/a;->b()Lst/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->t:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private static final k0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Ltt/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltt/a;->e()Lst/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private static final l0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Ltt/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltt/a;->f()Lst/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final m0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Ltt/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltt/a;->a()Lst/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final n0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/h;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Ltt/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltt/a;->d()Lst/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final o0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Ltt/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltt/a;->i()Lst/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final p0(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lst/i;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x:Ltt/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltt/a;->c()Lst/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->u:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final B()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->k:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final C(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->O()Lst/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lst/f;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final D()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final E()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->m:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final F()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->G:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final G()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->G:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final H(I)V
    .locals 0

    return-void
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final K(Ljava/lang/String;IZ)V
    .locals 0

    const-string p2, "nextPage"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final L()Lst/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->y:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lst/c;

    return-object v0
.end method

.method public final M()Lst/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->A:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lst/d;

    return-object v0
.end method

.method public final N()Lst/e;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->z:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lst/e;

    return-object v0
.end method

.method public final O()Lst/f;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->C:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lst/f;

    return-object v0
.end method

.method public final P()Lst/h;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->E:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lst/h;

    return-object v0
.end method

.method public final Q()Lst/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->B:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lst/a;

    return-object v0
.end method

.method public final R()Lst/i;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->D:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lst/i;

    return-object v0
.end method

.method public final S()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final T()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final U()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->K:Z

    return v0
.end method

.method public final V(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 9

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->setHasLike(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    int-to-long v5, p1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->setLikeNum(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->l:Landroidx/lifecycle/b0;

    xor-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    if-nez v2, :cond_4

    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_liked:I

    goto :goto_2

    :cond_4
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_liked_removed:I

    :goto_2
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->m(I)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$like$1;

    const/4 p1, 0x0

    invoke-direct {v6, p0, v0, v2, p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$like$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_5
    :goto_3
    return-void
.end method

.method public final W(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final X()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->f:Landroidx/lifecycle/b0;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/t1;
    .locals 8

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v7, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;-><init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Ljava/lang/String;II)V
    .locals 9

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->b:Lkotlinx/coroutines/k1;

    new-instance v8, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestVideoCollection$1;-><init>(Ljava/lang/String;IILcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final b0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;J)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v8, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$saveHistory$1;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$saveHistory$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;JLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final c0(I)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToEp\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u5f53\u524d\u4e0d\u5b58\u5728\u8be5\u96c6"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTvViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final d0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L:Ljava/lang/String;

    return-void
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->H:Ljava/lang/String;

    return-void
.end method

.method public final f0(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I:Ljava/util/List;

    return-void
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->J:Ljava/lang/String;

    return-void
.end method

.method public final h0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->K:Z

    return-void
.end method

.method public final i0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 0

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/b0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 8

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getHasFavorite()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->setHasFavorite(Ljava/lang/Boolean;)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    int-to-long v5, p1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->setFavoriteNum(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/b0;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    if-nez v0, :cond_5

    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_favorite:I

    goto :goto_2

    :cond_5
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_favorite_removed:I

    :goto_2
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->m(I)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$favorite$1;

    const/4 p1, 0x0

    invoke-direct {v5, p0, v1, v0, p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$favorite$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_6
    return-void
.end method

.method public final o(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 8

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getUid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->setHasSubscribe(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->j:Landroidx/lifecycle/b0;

    xor-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_subscribe:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_unsubscribe:I

    :goto_0
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->m(I)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$follow$1;

    const/4 p1, 0x0

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$follow$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    :goto_1
    return-void
.end method

.method public final p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->F:Ljava/util/List;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final q0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p:Landroidx/lifecycle/b0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final t()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->F:Ljava/util/List;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->d(I)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final u()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I:Ljava/util/List;

    return-object v0
.end method

.method public final w(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;

    iget v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lst/c;

    move-result-object p2

    if-eqz p2, :cond_4

    iput v3, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$getDownloadVideo$1;->label:I

    invoke-interface {p2, p1, v0}, Lst/c;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :cond_5
    :goto_2
    return-object p2
.end method

.method public final x()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final y()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final z()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->G:Ljava/util/List;

    return-object v0
.end method
