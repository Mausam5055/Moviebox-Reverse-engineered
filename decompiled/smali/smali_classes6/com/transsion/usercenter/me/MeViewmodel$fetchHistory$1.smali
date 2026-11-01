.class final Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/me/MeViewmodel;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.usercenter.me.MeViewmodel$fetchHistory$1"
    f = "MeViewmodel.kt"
    l = {
        0x96,
        0x98,
        0x99
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/me/MeViewmodel;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/usercenter/me/MeViewmodel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-direct {p1, v0, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;-><init>(Lcom/transsion/usercenter/me/MeViewmodel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lak/o;->a:Lak/o;

    invoke-virtual {p1}, Lak/o;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :cond_4
    :goto_0
    move-object v1, p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-static {p1}, Lcom/transsion/usercenter/me/MeViewmodel;->s(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-static {v1}, Lcom/transsion/usercenter/me/MeViewmodel;->k(Lcom/transsion/usercenter/me/MeViewmodel;)I

    move-result v1

    iput v4, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->label:I

    invoke-interface {p1, v5, v1, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :goto_2
    sget-object p1, Lak/o;->a:Lak/o;

    invoke-virtual {p1}, Lak/o;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-static {p1}, Lcom/transsion/usercenter/me/MeViewmodel;->q(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object p1

    iget-object v4, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-static {v4}, Lcom/transsion/usercenter/me/MeViewmodel;->k(Lcom/transsion/usercenter/me/MeViewmodel;)I

    move-result v4

    iput-object v1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->label:I

    invoke-interface {p1, v5, v4, p0}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    check-cast p1, Ljava/util/List;

    :goto_4
    iget-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-static {p1}, Lcom/transsion/usercenter/me/MeViewmodel;->r(Lcom/transsion/usercenter/me/MeViewmodel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-static {v3}, Lcom/transsion/usercenter/me/MeViewmodel;->k(Lcom/transsion/usercenter/me/MeViewmodel;)I

    move-result v3

    iput-object v1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->label:I

    invoke-interface {p1, v5, v3, p0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v0, v1

    :goto_5
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/transsion/usercenter/me/MeViewmodel;->k(Lcom/transsion/usercenter/me/MeViewmodel;)I

    move-result v1

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/usercenter/me/MeViewmodel;->w(Lcom/transsion/usercenter/me/MeViewmodel;Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-static {p1}, Lcom/transsion/usercenter/me/MeViewmodel;->v(Lcom/transsion/usercenter/me/MeViewmodel;)V

    iget-object p1, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-virtual {p1}, Lcom/transsion/usercenter/me/MeViewmodel;->C()Landroidx/lifecycle/b0;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/usercenter/me/MeViewmodel$fetchHistory$1;->this$0:Lcom/transsion/usercenter/me/MeViewmodel;

    invoke-static {v0}, Lcom/transsion/usercenter/me/MeViewmodel;->l(Lcom/transsion/usercenter/me/MeViewmodel;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
