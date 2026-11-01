.class final Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;->a:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;->a:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lqm/b;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;->a:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    invoke-virtual {p2, p1}, Lqm/b;->d(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
