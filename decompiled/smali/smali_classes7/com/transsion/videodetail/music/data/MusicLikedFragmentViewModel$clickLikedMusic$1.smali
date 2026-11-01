.class final Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->p(Lcom/transsion/moviedetailapi/bean/Subject;)V
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
    c = "com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$clickLikedMusic$1"
    f = "MusicLikedFragmentViewModel.kt"
    l = {
        0x75,
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $subject:Lcom/transsion/moviedetailapi/bean/Subject;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->$subject:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;

    iget-object v1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->$subject:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    iget-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    iget-object v3, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/moviedetailapi/bean/Subject;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    iget-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    iget-object v3, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/moviedetailapi/bean/Subject;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/n0;

    iget-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->$subject:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v5, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v6, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    const/16 v19, 0x7ff

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v20}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setSubjectId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setCover(Lcom/transsion/moviedetailapi/bean/Cover;)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setCountryName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setGenre(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setReleaseDate(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setDurationSeconds(Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setLikeTime(Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getStaffList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/moviedetailapi/bean/Staff;

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Staff;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setSingerName(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Staff;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setSingerAvatar(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getLikeStatus()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_6

    iput-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$2:Ljava/lang/Object;

    iput v4, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->label:I

    invoke-static {v5, v6, v1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->m(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, v2

    move-object v2, v5

    move-object v0, v6

    :goto_0
    sget-object v4, Lcom/transsion/videodetail/music/bean/LikeListActionEnum;->ADD:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    :goto_1
    move-object v6, v0

    move-object v5, v2

    move-object v2, v3

    goto :goto_5

    :cond_6
    :goto_2
    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_9

    iput-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$2:Ljava/lang/Object;

    iput v3, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->label:I

    invoke-static {v5, v6, v1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->e(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_8

    return-object v0

    :cond_8
    move-object v3, v2

    move-object v2, v5

    move-object v0, v6

    :goto_3
    sget-object v4, Lcom/transsion/videodetail/music/bean/LikeListActionEnum;->REMOVE:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    goto :goto_1

    :cond_9
    :goto_4
    sget-object v4, Lcom/transsion/videodetail/music/bean/LikeListActionEnum;->ADD:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    :goto_5
    invoke-virtual {v6, v4}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setActionEnum(Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)V

    invoke-static {v5}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->h(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->i(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)V

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->G(Ljava/lang/String;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
