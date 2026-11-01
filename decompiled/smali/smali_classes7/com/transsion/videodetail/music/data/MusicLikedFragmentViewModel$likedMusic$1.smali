.class final Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->G(Ljava/lang/String;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)V
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
    c = "com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$likedMusic$1"
    f = "MusicLikedFragmentViewModel.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $action:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/videodetail/music/bean/LikeListActionEnum;",
            "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->$subjectId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->$action:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    iput-object p3, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;

    iget-object v1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->$subjectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->$action:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    iget-object v3, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;-><init>(Ljava/lang/String;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->$subjectId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->$action:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    iget-object v3, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "subjectId"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "action"

    invoke-virtual {v1}, Lcom/transsion/videodetail/music/bean/LikeListActionEnum;->getValue()I

    move-result v1

    invoke-virtual {v4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->j(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Lcom/transsion/videodetail/music/data/a;

    move-result-object v5

    sget-object p1, Lbh/b;->a:Lbh/b$a;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "toString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v6

    iput-object v3, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->label:I

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v5 .. v10}, Lcom/transsion/videodetail/music/data/a$a;->b(Lcom/transsion/videodetail/music/data/a;Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v3

    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->getAction()Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/transsion/videodetail/music/bean/LikeListActionEnum;->ADD:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    invoke-virtual {v2}, Lcom/transsion/videodetail/music/bean/LikeListActionEnum;->getValue()I

    move-result v2

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_4

    const-string v1, "\u6536\u85cf"

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "\u53d6\u6d88"

    :goto_2
    sget-object v2, Lkx/a;->a:Lkx/a;

    invoke-static {v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->f(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> likedMusic() --> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6210\u529f,\u540c\u6b65\u672c\u5730\u6570\u636e\u5e93 --> likeMusic = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lkx/a;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    sget-object v1, Lkx/a;->a:Lkx/a;

    invoke-static {v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->f(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> likedMusic() --> it = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lkx/a;->b(Ljava/lang/String;)V

    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
