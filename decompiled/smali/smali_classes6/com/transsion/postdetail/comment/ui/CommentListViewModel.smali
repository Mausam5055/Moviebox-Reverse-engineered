.class public final Lcom/transsion/postdetail/comment/ui/CommentListViewModel;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Ljava/util/List;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/postdetail/comment/ui/c;

    invoke-direct {p1}, Lcom/transsion/postdetail/comment/ui/c;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->b:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->c:Landroidx/lifecycle/b0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->d:Ljava/util/List;

    const-string p1, "1"

    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->e:Ljava/lang/String;

    const/16 p1, 0x14

    iput p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->g:Z

    return-void
.end method

.method public static synthetic c()Lxo/a;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->j()Lxo/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->d:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Lxo/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->l()Lxo/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->f:I

    return p0
.end method

.method public static final synthetic g(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->g:Z

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->e:Ljava/lang/String;

    return-void
.end method

.method private static final j()Lxo/a;
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

.method private final l()Lxo/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/a;

    return-object v0
.end method


# virtual methods
.method public final k(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const-string p1, "1"

    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->g:Z

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;-><init>(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->g:Z

    return v0
.end method
