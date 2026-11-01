.class final Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/VideoDetailViewModel;->p(Ljava/lang/String;Ljava/util/List;)V
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
    c = "com.transsion.videodetail.VideoDetailViewModel$fetchEpisodeMediaList$1"
    f = "VideoDetailViewModel.kt"
    l = {
        0xa1,
        0xa9,
        0xb1,
        0xc4,
        0xcf
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $subjectId:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field I$4:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/VideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/videodetail/VideoDetailViewModel;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    iput-object p2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$seasons:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$subjectId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;

    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    iget-object v1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$seasons:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$subjectId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;-><init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    const/4 v2, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    const-string v5, ","

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v2, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$3:I

    iget v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$2:I

    iget v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    iget v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    iget-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$11:Ljava/lang/Object;

    check-cast v12, Landroidx/lifecycle/b0;

    iget-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    check-cast v13, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    check-cast v14, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    iget-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/videodetail/VideoDetailViewModel;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v11

    move-object v11, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    goto/16 :goto_f

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$4:I

    iget v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$3:I

    iget v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$2:I

    iget v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    iget v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    iget-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    check-cast v8, Landroidx/lifecycle/b0;

    iget-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    check-cast v9, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    check-cast v10, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    iget-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    move/from16 v17, v1

    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/videodetail/VideoDetailViewModel;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, p1

    move/from16 v28, v2

    move-object v2, v1

    move/from16 v1, v17

    move-object/from16 v17, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move v11, v6

    :goto_0
    move v6, v4

    move/from16 v4, v28

    goto/16 :goto_14

    :cond_2
    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/b0;

    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    check-cast v11, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    iget-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/transsion/videodetail/VideoDetailViewModel;

    iget-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v10, v8

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v6, p1

    goto/16 :goto_5

    :cond_3
    iget v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    iget v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    iget-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    check-cast v4, Landroidx/lifecycle/b0;

    iget-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    check-cast v7, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    check-cast v11, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    iget-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/transsion/videodetail/VideoDetailViewModel;

    iget-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v4

    move-object v10, v9

    const/4 v4, 0x2

    move-object v9, v8

    move-object v8, v7

    move-object/from16 v7, p1

    goto/16 :goto_a

    :cond_4
    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/b0;

    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    iget-object v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v5

    move-object v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    invoke-static {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->f(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$seasons:Ljava/util/List;

    if-eqz v2, :cond_1e

    iget-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$subjectId:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    move-object v11, v7

    goto/16 :goto_16

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    move-result v8

    if-nez v8, :cond_8

    new-instance v5, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v24

    const/16 v25, 0x8

    const/16 v26, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    invoke-direct/range {v19 .. v26}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;Lcom/transsion/baselib/db/download/VipInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v2

    invoke-virtual {v5}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    move-result v6

    invoke-virtual {v5}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    move-result v8

    iput-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    iput-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    invoke-interface {v2, v4, v6, v8, v0}, Lcom/transsnet/downloader/manager/g;->u(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_7

    return-object v3

    :cond_7
    move-object v4, v5

    move-object v3, v7

    :goto_2
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5, v2}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    goto :goto_1

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getAllEp()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_a

    :cond_9
    const/4 v10, 0x3

    goto/16 :goto_8

    :cond_a
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getAllEp()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_e

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x6

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_e

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v14, v2

    move-object v15, v6

    move-object v12, v8

    move-object/from16 v28, v9

    move-object v9, v4

    move-object v4, v7

    move-object v7, v11

    move-object/from16 v11, v28

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v22

    new-instance v2, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v21

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v24

    const/16 v25, 0x8

    const/16 v26, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v26}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;Lcom/transsion/baselib/db/download/VipInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/transsion/videodetail/VideoDetailViewModel;->d(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setName(Ljava/lang/String;)V

    sget-object v6, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    move-result v8

    invoke-virtual {v2}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    move-result v13

    iput-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    iput-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    iput-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    invoke-interface {v6, v9, v8, v13, v0}, Lcom/transsnet/downloader/manager/g;->u(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_b

    return-object v3

    :cond_b
    move-object v13, v4

    move-object v8, v7

    move-object v7, v2

    :goto_5
    check-cast v6, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2, v6}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object v7, v8

    move-object v4, v13

    goto :goto_6

    :cond_c
    const/4 v10, 0x3

    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v10, 0x3

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object v7, v4

    move-object v4, v9

    move-object v8, v12

    move-object v2, v14

    move-object v6, v15

    :goto_7
    const/4 v9, 0x2

    const/4 v10, 0x1

    goto/16 :goto_c

    :cond_e
    const/4 v10, 0x3

    goto :goto_7

    :goto_8
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    move-result v11

    const/4 v12, 0x1

    if-gt v12, v11, :cond_11

    move-object v14, v2

    move-object v15, v6

    move-object v12, v8

    const/4 v2, 0x1

    move-object v8, v4

    move-object v4, v1

    move v1, v11

    move-object v11, v9

    move-object v9, v7

    :goto_9
    new-instance v6, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v22

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v25

    const/16 v26, 0x8

    const/16 v27, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move/from16 v23, v2

    invoke-direct/range {v20 .. v27}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;Lcom/transsion/baselib/db/download/VipInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/transsion/videodetail/VideoDetailViewModel;->d(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setName(Ljava/lang/String;)V

    sget-object v7, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v7

    invoke-virtual {v6}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    move-result v13

    invoke-virtual {v6}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    move-result v10

    iput-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    iput-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    iput-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    move-object/from16 v20, v4

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    iput v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    iput v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    const/4 v4, 0x2

    iput v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    invoke-interface {v7, v8, v13, v10, v0}, Lcom/transsnet/downloader/manager/g;->u(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_f

    return-object v3

    :cond_f
    move-object v10, v9

    move-object v13, v10

    move-object v9, v8

    move-object v8, v6

    :goto_a
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    if-eq v2, v1, :cond_10

    add-int/2addr v2, v10

    move-object v8, v9

    move-object v9, v13

    move-object/from16 v4, v20

    const/4 v10, 0x3

    goto :goto_9

    :cond_10
    move-object v8, v12

    move-object v7, v13

    move-object v2, v14

    move-object v6, v15

    move-object/from16 v1, v20

    move-object/from16 v28, v9

    move v9, v4

    move-object/from16 v4, v28

    goto :goto_b

    :cond_11
    move v10, v12

    const/4 v9, 0x2

    :goto_b
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_c
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v10, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v10, :cond_1d

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    move-result v8

    const/16 v9, 0x32

    if-le v8, v9, :cond_1d

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    move-result v8

    add-int/lit8 v8, v8, 0x31

    div-int/2addr v8, v9

    sget-object v10, Llg/a;->a:Llg/a$a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--------\u5355\u5b63\u8d85\u8fc750\u96c6, titleCount:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "VideoDetailEpisode"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v8, :cond_1d

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v12, 0x32

    mul-int/lit8 v13, v10, 0x32

    const/4 v14, 0x1

    add-int/lit8 v15, v13, 0x1

    add-int/2addr v13, v12

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    move-result v14

    invoke-static {v13, v14}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v13

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getAllEp()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_13

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_14

    :cond_13
    move-object/from16 v16, v5

    move-object v5, v3

    goto/16 :goto_12

    :cond_14
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getAllEp()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move/from16 v28, v15

    move-object v15, v1

    move-object v1, v4

    move v4, v13

    move-object v13, v9

    move v9, v10

    move v10, v8

    move/from16 v8, v28

    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_18

    move-object/from16 v16, v5

    new-instance v5, Lkotlin/ranges/IntRange;

    invoke-direct {v5, v8, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    move-object/from16 v25, v3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lkotlin/ranges/IntRange;->o(I)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v19

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v22

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v24}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;Lcom/transsion/baselib/db/download/VipInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v12}, Lcom/transsion/videodetail/VideoDetailViewModel;->d(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setName(Ljava/lang/String;)V

    sget-object v5, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    move/from16 v17, v4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    move-result v5

    move-object/from16 v18, v4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    iput-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    iput-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    iput-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$11:Ljava/lang/Object;

    iput v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    iput v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    iput v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$2:I

    move-object/from16 v19, v2

    move/from16 v2, v17

    iput v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$3:I

    const/4 v2, 0x5

    iput v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    move-object/from16 v2, v18

    invoke-interface {v2, v1, v5, v4, v0}, Lcom/transsnet/downloader/manager/g;->u(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v5, v25

    if-ne v2, v5, :cond_15

    return-object v5

    :cond_15
    move-object/from16 v18, v7

    move-object v7, v14

    move/from16 v4, v17

    move-object v14, v3

    move-object/from16 v17, v12

    move-object v12, v15

    move-object v15, v14

    move-object v3, v1

    move-object v1, v11

    :goto_f
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v14, v2}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    move-object v14, v7

    move-object v15, v12

    move-object/from16 v12, v17

    move-object/from16 v7, v18

    move-object/from16 v2, v19

    goto :goto_10

    :cond_16
    move-object/from16 v19, v2

    move/from16 v17, v4

    move-object/from16 v5, v25

    :goto_10
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v4, :cond_17

    move/from16 v28, v4

    move-object v4, v1

    move-object v1, v15

    move v15, v8

    move v8, v10

    move v10, v9

    move-object v9, v13

    move/from16 v13, v28

    goto/16 :goto_15

    :cond_17
    move-object v3, v5

    move-object/from16 v5, v16

    :goto_11
    const/16 v12, 0x32

    goto/16 :goto_e

    :cond_18
    move-object/from16 v19, v2

    move/from16 v17, v4

    goto :goto_11

    :cond_19
    move-object/from16 v19, v2

    move/from16 v17, v4

    move-object/from16 v16, v5

    move-object v4, v1

    move-object v5, v3

    move-object v1, v15

    move v15, v8

    move v8, v10

    move v10, v9

    move-object v9, v13

    move/from16 v13, v17

    goto/16 :goto_15

    :goto_12
    if-gt v15, v13, :cond_1c

    move-object v14, v2

    move-object v3, v7

    move v7, v8

    move v2, v13

    move-object v8, v1

    move-object v1, v4

    move-object v13, v9

    move v4, v15

    :goto_13
    new-instance v9, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v19

    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v22

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v9

    move-object/from16 v18, v1

    move/from16 v20, v15

    invoke-direct/range {v17 .. v24}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;Lcom/transsion/baselib/db/download/VipInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    move-result v12

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/transsion/videodetail/VideoDetailViewModel;->d(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setName(Ljava/lang/String;)V

    sget-object v12, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    move-object/from16 v25, v5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v5

    invoke-virtual {v9}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    move-result v12

    move-object/from16 v17, v5

    invoke-virtual {v9}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    move-result v5

    iput-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    iput-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    iput-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    iput-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    move-object/from16 v18, v3

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$11:Ljava/lang/Object;

    iput v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    iput v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    iput v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$2:I

    iput v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$3:I

    iput v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$4:I

    const/4 v3, 0x4

    iput v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    move-object/from16 v3, v17

    invoke-interface {v3, v1, v12, v5, v0}, Lcom/transsnet/downloader/manager/g;->u(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v5, v25

    if-ne v3, v5, :cond_1a

    return-object v5

    :cond_1a
    move-object v12, v11

    move-object/from16 v17, v14

    move v11, v10

    move-object v14, v13

    move-object v10, v9

    move-object v13, v12

    move/from16 v28, v2

    move-object v2, v1

    move v1, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v6

    goto/16 :goto_0

    :goto_14
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v9, v3}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v4, :cond_1b

    const/4 v3, 0x1

    add-int/2addr v1, v3

    move v10, v11

    move-object v11, v12

    move-object v13, v14

    move-object v3, v15

    move-object/from16 v14, v17

    move v15, v1

    move-object v1, v2

    move v2, v4

    move v4, v6

    move-object/from16 v6, v18

    goto/16 :goto_13

    :cond_1b
    move v13, v4

    move-object v1, v8

    move v10, v11

    move-object v11, v12

    move-object v9, v14

    move-object v4, v2

    move v8, v7

    move-object v7, v15

    move-object/from16 v2, v17

    move v15, v6

    move-object/from16 v6, v18

    :cond_1c
    :goto_15
    sget-object v17, Llg/a;->a:Llg/a$a;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--------title:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", list:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "VideoDetailEpisode"

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/transsion/videodetail/VideoDetailViewModel;->g(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    const/4 v0, 0x1

    add-int/2addr v10, v0

    move-object/from16 v0, p0

    move-object v3, v5

    move-object/from16 v5, v16

    goto/16 :goto_d

    :cond_1d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_1

    :cond_1e
    const/4 v11, 0x0

    :goto_16
    invoke-virtual {v1, v11}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
