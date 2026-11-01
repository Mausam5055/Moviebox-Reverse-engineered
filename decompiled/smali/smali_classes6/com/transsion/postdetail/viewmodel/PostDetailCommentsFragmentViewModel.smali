.class public final Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/viewmodel/c;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;->b:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic b()Lxo/a;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;->d()Lxo/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;)Lxo/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;->f()Lxo/a;

    move-result-object p0

    return-object p0
.end method

.method private static final d()Lxo/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lxo/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/a;

    return-object v0
.end method

.method private final f()Lxo/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/a;

    return-object v0
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const-string v0, "postId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootCommentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel$getCommentList$1;-><init>(Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method
