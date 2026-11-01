.class final Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/hashtag/HashTagViewModel;->t(Ljava/lang/String;Z)V
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
    c = "com.transsion.home.hashtag.HashTagViewModel$loadHashTagList$1"
    f = "HashTagViewModel.kt"
    l = {
        0x138
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentSelectedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isRefresh:Z

.field final synthetic $page:I

.field final synthetic $tabSort:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/hashtag/HashTagViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;ILjava/util/Set;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/hashtag/HashTagViewModel;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;",
            ">;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->this$0:Lcom/transsion/home/hashtag/HashTagViewModel;

    iput-object p2, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$tabSort:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$page:I

    iput-object p4, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$currentSelectedTags:Ljava/util/Set;

    iput-boolean p5, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$isRefresh:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;

    iget-object v1, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->this$0:Lcom/transsion/home/hashtag/HashTagViewModel;

    iget-object v2, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$tabSort:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$page:I

    iget-object v4, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$currentSelectedTags:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$isRefresh:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;-><init>(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;ILjava/util/Set;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->this$0:Lcom/transsion/home/hashtag/HashTagViewModel;

    iget-object v1, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$tabSort:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$page:I

    iget-object v4, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$currentSelectedTags:Ljava/util/Set;

    invoke-static {p1, v1, v3, v4}, Lcom/transsion/home/hashtag/HashTagViewModel;->c(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;ILjava/util/Set;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->this$0:Lcom/transsion/home/hashtag/HashTagViewModel;

    invoke-static {v1}, Lcom/transsion/home/hashtag/HashTagViewModel;->e(Lcom/transsion/home/hashtag/HashTagViewModel;)Lol/a;

    move-result-object v1

    sget-object v3, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v3}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v3

    iput v2, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->label:I

    invoke-interface {v1, v3, p1, p0}, Lol/a;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    move-object v8, p1

    check-cast v8, Lcom/tn/lib/net/bean/BaseDto;

    iget-object v3, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->this$0:Lcom/transsion/home/hashtag/HashTagViewModel;

    iget-object v4, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$tabSort:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$page:I

    iget-object v6, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$currentSelectedTags:Ljava/util/Set;

    iget-boolean v7, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$isRefresh:Z

    invoke-static/range {v3 .. v8}, Lcom/transsion/home/hashtag/HashTagViewModel;->g(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;ILjava/util/Set;ZLcom/tn/lib/net/bean/BaseDto;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->this$0:Lcom/transsion/home/hashtag/HashTagViewModel;

    iget-object v4, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$tabSort:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$currentSelectedTags:Ljava/util/Set;

    iget-boolean v6, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$isRefresh:Z

    const-string v7, "Request body create failed"

    const-string v8, "-1"

    invoke-static/range {v3 .. v8}, Lcom/transsion/home/hashtag/HashTagViewModel;->f(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;Ljava/util/Set;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$tabSort:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$page:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadHashTagList exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tabSort="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HashTagViewModel"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->this$0:Lcom/transsion/home/hashtag/HashTagViewModel;

    iget-object v5, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$tabSort:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$currentSelectedTags:Ljava/util/Set;

    iget-boolean v7, p0, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;->$isRefresh:Z

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    move-object v8, p1

    const-string v9, "-1"

    invoke-static/range {v4 .. v9}, Lcom/transsion/home/hashtag/HashTagViewModel;->f(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;Ljava/util/Set;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
