.class public final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;
    }
.end annotation


# static fields
.field public static final d0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;


# instance fields
.field private final A:Ljava/util/HashMap;

.field private final B:Ljava/util/Set;

.field private final C:Landroidx/lifecycle/b0;

.field private final D:Landroidx/lifecycle/b0;

.field private final E:Landroidx/lifecycle/LiveData;

.field private final F:Landroidx/lifecycle/b0;

.field private final G:Landroidx/lifecycle/LiveData;

.field private final H:Landroidx/lifecycle/b0;

.field private final I:Landroidx/lifecycle/LiveData;

.field private final J:Landroidx/lifecycle/b0;

.field private final K:Landroidx/lifecycle/LiveData;

.field private final L:Landroidx/lifecycle/b0;

.field private M:Landroidx/lifecycle/LiveData;

.field private final N:Lkotlin/Lazy;

.field private final O:Lkotlin/Lazy;

.field private final P:Lkotlin/Lazy;

.field private final Q:Lrs/a;

.field private final R:Lkotlin/Lazy;

.field private final S:Lkotlin/Lazy;

.field private final T:Lkotlin/Lazy;

.field private final U:Lkotlin/Lazy;

.field private final V:Lkotlin/Lazy;

.field private final W:Lkotlin/Lazy;

.field private final X:Lkotlin/Lazy;

.field private final Y:Lkotlin/Lazy;

.field private final Z:Lkotlin/Lazy;

.field private final a:Los/a;

.field private final a0:Ljava/util/HashMap;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b0:Lkotlinx/coroutines/t1;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c0:Ljava/util/HashMap;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/LiveData;

.field private i:Ljava/lang/String;

.field private j:Z

.field private volatile k:Z

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Landroidx/lifecycle/LiveData;

.field private final n:Landroidx/lifecycle/b0;

.field private final o:Landroidx/lifecycle/b0;

.field private final p:Landroidx/lifecycle/LiveData;

.field private final q:Landroidx/lifecycle/b0;

.field private final r:Landroidx/lifecycle/LiveData;

.field private final s:Landroidx/lifecycle/b0;

.field private final t:Landroidx/lifecycle/LiveData;

.field private u:Ljava/util/List;

.field private v:Ljava/util/concurrent/ConcurrentHashMap;

.field private final w:Landroidx/lifecycle/b0;

.field private final x:Landroidx/lifecycle/b0;

.field private final y:Landroidx/lifecycle/b0;

.field private final z:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Los/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Los/a;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a:Los/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->f:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->m:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t:Landroidx/lifecycle/LiveData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z:Landroidx/lifecycle/b0;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->E:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->K:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->M:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/c;

    invoke-direct {v0}, Lcom/transsion/shorttv/viewmodel/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->N:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/h;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/h;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->O:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/i;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/i;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->P:Lkotlin/Lazy;

    sget-object v0, Llr/c;->a:Llr/c;

    invoke-virtual {v0}, Llr/c;->c()Lrs/a;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/j;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/j;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/k;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/k;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/l;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/l;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/m;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/m;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->U:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/n;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/n;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->V:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/d;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/d;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->W:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/e;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/e;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/f;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/f;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Y:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/g;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/g;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z:Lkotlin/Lazy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic E(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L0(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic F(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->M0(Lcom/transsion/shorttv/bean/OperatingResp;)V

    return-void
.end method

.method public static final synthetic G(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X0(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic H(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c1(Lcom/transsion/shorttv/bean/OperatingResp;)V

    return-void
.end method

.method public static final synthetic I(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r1(Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    return-void
.end method

.method private final I0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;-><init>(Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static final J(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 7

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p0, Lcom/transsion/shorttv/db/ShortTvDatabase;->p:Lcom/transsion/shorttv/db/ShortTvDatabase$b;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/shorttv/db/ShortTvDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase;->j0()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adUnlockDao init failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTvViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    return-object p0
.end method

.method private final L0(Ljava/util/List;)Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/shorttv/bean/ShortTVItem;

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method private final M0(Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 6

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/OperateItem;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/OperateItem;->setOps(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getBanner()Lcom/transsion/shorttv/bean/BannerBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/BannerData;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/BannerData;->setOps(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getSubjects()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/AppointSubject;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getCustomData()Lcom/transsion/shorttv/bean/CustomData;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/CustomData;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/BannerData;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/BannerData;->setOps(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getRankings()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getRankingListData()Lcom/transsion/shorttv/bean/RankingListData;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/RankingListData;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/RankingListItem;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/shorttv/bean/RankingListItem;->setOps(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/RankingListItem;->getSubjects()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/OperateItem;->getPlayListData()Lcom/transsion/shorttv/bean/PlayListItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/PlayListItem;->setOps(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private static final Q(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 7

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p0, Lcom/transsion/shorttv/db/ShortTvDatabase;->p:Lcom/transsion/shorttv/db/ShortTvDatabase$b;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/shorttv/db/ShortTvDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase;->k0()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favoriteDao init failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTvViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    return-object p0
.end method

.method private final R(Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 7

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/OperateItem;

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/shorttv/bean/ShortTvItemType;->BANNER:Lcom/transsion/shorttv/bean/ShortTvItemType;

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTvItemType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/OperateItem;->getBanner()Lcom/transsion/shorttv/bean/BannerBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/shorttv/bean/BannerData;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/BannerData;->getType()I

    move-result v5

    sget-object v6, Lcom/transsion/shorttv/constants/BannerType;->GUIDE:Lcom/transsion/shorttv/constants/BannerType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/BannerData;->getType()I

    move-result v4

    sget-object v5, Lcom/transsion/shorttv/constants/BannerType;->AD:Lcom/transsion/shorttv/constants/BannerType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/OperateItem;->getBanner()Lcom/transsion/shorttv/bean/BannerBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/transsion/shorttv/bean/BannerBean;->setBanners(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final U()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->P:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    return-object v0
.end method

.method private static final V0()Lps/a;
    .locals 1

    new-instance v0, Lps/a;

    invoke-direct {v0}, Lps/a;-><init>()V

    return-object v0
.end method

.method private final X0(Ljava/lang/String;Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v8, Llg/a;->a:Llg/a$a;

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v9

    :goto_0
    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v9

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------putEpisodeMap subjectId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "----ep:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ShortTvViewModel"

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    move-object/from16 v2, p2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v2, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/b0;

    goto :goto_2

    :cond_3
    new-instance v2, Landroidx/lifecycle/b0;

    invoke-direct {v2}, Landroidx/lifecycle/b0;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    :cond_4
    if-nez v9, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    invoke-virtual {v1, v9}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_5
    const/4 v7, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v1

    move v10, v1

    goto :goto_3

    :cond_6
    move v10, v7

    :goto_3
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v1

    move v11, v1

    goto :goto_4

    :cond_7
    move v11, v7

    :goto_4
    iget-object v1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v12, v1

    goto :goto_5

    :cond_8
    move v12, v7

    :goto_5
    iget-object v1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putEpisodeMap isNeedPlayCurEp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",playingEp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTvViewModel"

    const/4 v4, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    if-eqz v12, :cond_9

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    iget-object v4, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_9

    sget-object v13, Llg/a;->a:Llg/a$a;

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioTrack change----play  ep:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, "ShortTvViewModel"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y:Landroidx/lifecycle/b0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_b
    if-le v10, v11, :cond_c

    move-object/from16 v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v9, v7, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_7

    :cond_c
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_d
    :goto_7
    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/f;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/f;

    move-result-object p0

    return-object p0
.end method

.method private final b0()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->O:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    move-result-object p0

    return-object p0
.end method

.method private final c1(Lcom/transsion/shorttv/bean/OperatingResp;)V
    .locals 8

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getBanners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache--\u4fdd\u5b58\u8fd0\u8425\u4f4d\u7f13\u5b58 banner:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ShortTvViewModel"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R(Lcom/transsion/shorttv/bean/OperatingResp;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "short_tv_operating_data"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/h;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/l;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/d;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/e;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/e;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/a;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/a;

    move-result-object p0

    return-object p0
.end method

.method private static final h1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrs/a;->b()Lqs/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/k;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/k;

    move-result-object p0

    return-object p0
.end method

.method private static final i1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrs/a;->j()Lqs/e;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic j()Lps/a;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->V0()Lps/a;

    move-result-object v0

    return-object v0
.end method

.method private static final j1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrs/a;->e()Lqs/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/i;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->m1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/i;

    move-result-object p0

    return-object p0
.end method

.method private final k0()Lps/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->N:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps/a;

    return-object v0
.end method

.method private static final k1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrs/a;->f()Lqs/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/g;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/g;

    move-result-object p0

    return-object p0
.end method

.method private static final l1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/h;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrs/a;->a()Lqs/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    move-result-object p0

    return-object p0
.end method

.method private static final m1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/i;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrs/a;->l()Lqs/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->U()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    move-result-object p0

    return-object p0
.end method

.method private static final n1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/k;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrs/a;->d()Lqs/k;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    return-object p0
.end method

.method private static final o1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrs/a;->i()Lqs/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    move-result-object p0

    return-object p0
.end method

.method private static final p1(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lqs/l;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Q:Lrs/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrs/a;->c()Lqs/l;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p0(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private final r1(Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$updateFavorite$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p2, p1, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$updateFavorite$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/ShortTVFavInfo;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lps/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k0()Lps/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Los/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a:Los/a;

    return-object p0
.end method

.method public static final synthetic u(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic w(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic x(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic y(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic z(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    return-object p0
.end method


# virtual methods
.method public final A0()Lqs/h;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->V:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/h;

    return-object v0
.end method

.method public final B0()Lqs/i;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/i;

    return-object v0
.end method

.method public final C0()Lqs/k;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/k;

    return-object v0
.end method

.method public final D0()Lqs/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->U:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/a;

    return-object v0
.end method

.method public final E0()Lqs/l;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->W:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/l;

    return-object v0
.end method

.method public final F0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final G0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final H0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final J0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->M:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final K(IJ)V
    .locals 2

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final K0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final L(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 7

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, p1, v6, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final N()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F:Landroidx/lifecycle/b0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final N0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k:Z

    return v0
.end method

.method public final O()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final O0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j:Z

    return v0
.end method

.method public final P(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 12

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v4

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v7

    new-instance v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$favorite$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;ZLcom/transsion/shorttv/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 p1, 0x0

    const/4 v8, 0x0

    move-object v6, v7

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    return-void
.end method

.method public final P0(Landroid/content/Context;)V
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v0, "Cache---\u5f00\u59cb\u5904\u7406\u7f13\u5b58"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTvViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v8

    new-instance v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$loadCache$1;

    const/4 v0, 0x0

    invoke-direct {v10, p0, p1, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$loadCache$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final Q0(Ljava/util/Set;)V
    .locals 1

    const-string v0, "eps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public final R0(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/bean/Subject;->setPaid(I)V

    :cond_0
    return-void
.end method

.method public final S(ILcom/transsion/shorttv/bean/ShortTvInnerPlayBean;Lcom/transsion/shorttv/bean/Subject;IZ)I
    .locals 3

    sget-object v0, Llr/c;->a:Llr/c;

    invoke-virtual {v0}, Llr/c;->b()Llr/b;

    move-result-object v1

    invoke-virtual {v1}, Llr/b;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    if-nez p1, :cond_7

    if-nez v1, :cond_7

    move p1, v2

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;->getEp()I

    move-result p2

    if-nez p2, :cond_1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    move-object p2, p1

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/transsion/shorttv/bean/Subject;->getTrailer()Lcom/transsion/shorttv/bean/Trailer;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Llr/c;->b()Llr/b;

    move-result-object p1

    invoke-virtual {p1}, Llr/b;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    if-ltz p4, :cond_7

    if-eqz p5, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p4, :cond_6

    goto :goto_3

    :cond_6
    move p1, p4

    :cond_7
    :goto_3
    return p1
.end method

.method public final S0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l:Landroidx/lifecycle/b0;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final T(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->M(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$forceRefreshSubjectInfo$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final T0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z:Landroidx/lifecycle/b0;

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final U0(Ljava/lang/String;ILlo/f;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "subjectId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    sget-object v4, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v4}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v5, "k_short_tv_resolution"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/transsion/shorttv/bean/Video;

    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    check-cast v7, Lcom/transsion/shorttv/bean/Video;

    if-eqz v7, :cond_0

    if-eqz v1, :cond_3

    invoke-interface/range {p3 .. p3}, Llo/f;->a()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v7}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    :cond_3
    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v4

    sub-int v4, v4, p2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    if-lez v4, :cond_4

    sub-int v3, v3, p2

    add-int/lit8 v3, v3, 0x1

    :goto_2
    move v11, v3

    goto :goto_3

    :cond_4
    add-int v3, v3, p2

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_0

    new-instance v3, Lao/e;

    invoke-virtual {v7}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    move-object v10, v4

    const/16 v14, 0x18

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Lcom/transsion/player/orplayer/g;->addDataSource(Lao/e;)Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final V()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->y:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final W(I)J
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final W0(Ljava/lang/String;ILlo/f;)V
    .locals 12

    const-string v0, "resolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/shorttv/bean/Video;

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lcom/transsion/shorttv/bean/Video;

    if-eqz v3, :cond_0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Llo/f;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v2

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v1

    if-lez v2, :cond_4

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    :goto_3
    move v7, v1

    goto :goto_4

    :cond_4
    add-int/2addr v1, p2

    goto :goto_3

    :goto_4
    if-eqz p3, :cond_0

    new-instance v1, Lao/e;

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    :cond_5
    move-object v6, v2

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p3, v1}, Lcom/transsion/player/orplayer/g;->addDataSource(Lao/e;)Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final X()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final Y0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0:Lkotlinx/coroutines/t1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0:Lkotlinx/coroutines/t1;

    iput-boolean v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j:Z

    iput-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k:Z

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D:Landroidx/lifecycle/b0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final Z()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final Z0(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a0()Landroidx/lifecycle/b0;
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final a1(Ljava/lang/String;)V
    .locals 14

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will saveAdUnlockedEps, eps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTvViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v8

    new-instance v11, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveAdUnlockedEps$1;

    invoke-direct {v11, p1, v0, p0, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveAdUnlockedEps$1;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    :goto_1
    return-void
.end method

.method public final b1(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;J)V
    .locals 10

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Lzr/b;->a:Lzr/b;

    invoke-virtual {v0, p1, p2}, Lzr/b;->c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final c0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final d0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->E:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final d1(I)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljs/k;

    instance-of v3, v2, Ljs/e;

    if-eqz v3, :cond_1

    check-cast v2, Ljs/e;

    invoke-virtual {v2}, Ljs/e;->c()I

    move-result v2

    if-ne v2, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_3

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollToEp\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u5f53\u524d\u4e0d\u5b58\u5728\u8be5\u96c6"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ShortTvViewModel"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final e0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final e1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->k:Z

    return-void
.end method

.method public final f0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->K:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final f1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i:Ljava/lang/String;

    return-void
.end method

.method public final g0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final g1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j:Z

    return-void
.end method

.method public final h0(I)V
    .locals 10

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "key_short_tv_operation_version"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1;

    invoke-direct {v7, p0, p1, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final i0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final j0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->m:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final n0(Ljava/lang/String;)V
    .locals 7

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVDubInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVDubInfo$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final o0()V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "1"

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q0(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final p0(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 9

    const-string v0, "nextPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;IZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final q1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H:Landroidx/lifecycle/b0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final r0(Ljava/lang/String;IZ)V
    .locals 7

    const-string v0, "nextPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;

    invoke-direct {v0}, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->setPage(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->setPerPage(I)V

    sget-object p1, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {p1}, Lyg/b$a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->setSessionId(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVTrending$1;

    const/4 p1, 0x0

    invoke-direct {v4, v0, p0, p3, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVTrending$1;-><init>(Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final s0()Lqs/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/d;

    return-object v0
.end method

.method public final s1(Lcom/transsion/shorttv/bean/Subject;Ljs/e;J)V
    .locals 27

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_1
    new-instance v13, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    invoke-virtual/range {p2 .. p2}, Ljs/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v0

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, ""

    goto :goto_0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljs/e;->c()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    move-result v0

    :goto_3
    move v4, v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_5

    :cond_5
    move-object v10, v6

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_6

    :cond_6
    move-object v11, v6

    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideoId()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_7

    :cond_7
    move-object v12, v6

    :goto_7
    invoke-virtual/range {p2 .. p2}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_8

    :cond_8
    move-object/from16 v19, v6

    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v17, 0x2000

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object v0, v13

    move-wide/from16 v6, p3

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    invoke-direct/range {v0 .. v18}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v21, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLiveHistory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x4

    const/16 v26, 0x0

    const-string v22, "ShortTvViewModel"

    const/16 v24, 0x0

    invoke-static/range {v21 .. v26}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->J:Landroidx/lifecycle/b0;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v9

    new-instance v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$updateLiveHistory$1;

    const/4 v8, 0x0

    move-object v2, v10

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$updateLiveHistory$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Ljs/e;JLkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v5, 0x0

    move-object v3, v1

    move-object v4, v9

    move-object v6, v10

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_9
    return-void
.end method

.method public final t0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final u0()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final v0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZ)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    iget-object v1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget-object v10, Llg/a;->a:Llg/a$a;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "ShortTvViewModel"

    const-string v12, "getShortTvEpisodes \u5df2\u7ecf\u663e\u793a\u5168\u90e8\u6570\u636e"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v2, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0:Lkotlinx/coroutines/t1;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_4

    return-void

    :cond_4
    move-object v3, v0

    iget-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_5
    move-object v4, v2

    :goto_2
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v10

    new-instance v13, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;-><init>(Ljava/lang/Integer;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZLkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b0:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final w0(Ljava/lang/String;I)V
    .locals 12

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v1, v0, 0x14

    mul-int/lit8 v1, v1, 0x14

    const/4 v2, 0x1

    add-int/lit8 v4, v1, 0x1

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v3, "getShortTvEpisodes start\uff1a"

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_4

    sget-object v6, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "ShortTvViewModel"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljs/k;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Ljs/e;

    if-eqz v1, :cond_3

    sget-object v1, Lzr/b;->a:Lzr/b;

    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->h:Landroidx/lifecycle/LiveData;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    :cond_2
    check-cast v0, Ljs/e;

    invoke-virtual {v0}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lzr/b;->c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Ljs/l;->b(Ljs/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;

    const/4 v8, 0x0

    move-object v3, v1

    move v5, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;-><init>(IILcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    move-object v8, v1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_6

    sget-object v5, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  loading"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "ShortTvViewModel"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;

    const/4 v8, 0x0

    move-object v3, v1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;-><init>(ILcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    move-object v8, v1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_3
    return-void
.end method

.method public final x0()Lqs/e;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Y:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final y0()Lqs/f;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/f;

    return-object v0
.end method

.method public final z0()Lqs/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/g;

    return-object v0
.end method
