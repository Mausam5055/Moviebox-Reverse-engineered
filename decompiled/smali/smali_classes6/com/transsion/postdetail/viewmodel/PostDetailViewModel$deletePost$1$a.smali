.class final Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$deletePost$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$deletePost$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$deletePost$1$a;->a:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$deletePost$1$a;->a:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    invoke-virtual {p2}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->t()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$deletePost$1$a;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
