.class public final Lcom/transsion/home/viewmodel/PlayListViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Lol/b;

.field private final b:Lkotlin/Lazy;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lol/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol/b;

    iput-object v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->a:Lol/b;

    new-instance v0, Lcom/transsion/home/viewmodel/m;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/m;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->b:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->c:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->d:I

    return-void
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/PlayListViewModel;->h()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/home/viewmodel/PlayListViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->d:I

    return p0
.end method

.method public static final synthetic d(Lcom/transsion/home/viewmodel/PlayListViewModel;)Lol/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->a:Lol/b;

    return-object p0
.end method

.method private static final h()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final e()I
    .locals 1

    iget v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->c:I

    return v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const-string v0, "label"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recType"

    move-object v5, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topIds"

    move-object v6, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v9

    new-instance v10, Lcom/transsion/home/viewmodel/PlayListViewModel$getPlayList$1;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/transsion/home/viewmodel/PlayListViewModel$getPlayList$1;-><init>(Lcom/transsion/home/viewmodel/PlayListViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object v4, v10

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->c:I

    return-void
.end method
