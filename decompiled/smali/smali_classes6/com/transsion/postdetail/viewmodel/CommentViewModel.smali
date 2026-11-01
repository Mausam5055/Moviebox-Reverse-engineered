.class public final Lcom/transsion/postdetail/viewmodel/CommentViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/viewmodel/CommentViewModel$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/postdetail/viewmodel/CommentViewModel$a;


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->i:Lcom/transsion/postdetail/viewmodel/CommentViewModel$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->b:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->c:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->d:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->e:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->f:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->g:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/postdetail/viewmodel/a;

    invoke-direct {p1}, Lcom/transsion/postdetail/viewmodel/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c()Lxo/a;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->f()Lxo/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)Lxo/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->i()Lxo/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->r(Ljava/lang/String;)V

    return-void
.end method

.method private static final f()Lxo/a;
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

.method private final i()Lxo/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/a;

    return-object v0
.end method

.method private final r(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "CommentViewModel"

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "topicType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, p2, v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11

    const-string v0, "postId"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topicType"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootCommentId"

    move-object v5, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    move-object v6, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locCommentId"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v10, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p0

    move/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getCommentList$1;-><init>(Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p1, v0

    move-object p2, v3

    move-object p3, v4

    move-object p4, v10

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final p(Lqo/a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topicType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getSubCommentList$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getSubCommentList$1;-><init>(Lcom/transsion/postdetail/viewmodel/CommentViewModel;Lqo/a;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final q(Lcom/transsion/postdetail/bean/CommentLikeBody;)V
    .locals 7

    const-string v0, "commentBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/viewmodel/CommentViewModel$likeComment$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$likeComment$1;-><init>(Lcom/transsion/postdetail/bean/CommentLikeBody;Lcom/transsion/postdetail/viewmodel/CommentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final s(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentBody;)V
    .locals 7

    const-string v0, "topicType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentBody"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p1, p0, v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1;-><init>(Lcom/transsion/postdetail/bean/CommentBody;Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/CommentViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "commentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
