.class final Lcom/transsion/postdetail/viewmodel/CommentViewModel$getSubCommentList$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/CommentViewModel$getSubCommentList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

.field final synthetic b:Lqo/a;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/CommentViewModel;Lqo/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getSubCommentList$1$a;->a:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getSubCommentList$1$a;->b:Lqo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/postdetail/bean/CommentListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getSubCommentList$1$a;->a:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    invoke-virtual {p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object p2

    new-instance v0, Lqo/b;

    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getSubCommentList$1$a;->b:Lqo/a;

    invoke-direct {v0, v1, p1}, Lqo/b;-><init>(Lqo/a;Lcom/transsion/postdetail/bean/CommentListBean;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/postdetail/bean/CommentListBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$getSubCommentList$1$a;->a(Lcom/transsion/postdetail/bean/CommentListBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
