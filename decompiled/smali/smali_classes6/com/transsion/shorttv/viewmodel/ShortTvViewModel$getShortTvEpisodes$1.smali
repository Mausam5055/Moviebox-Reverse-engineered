.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZ)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTvEpisodes$1"
    f = "ShortTvViewModel.kt"
    l = {
        0xf9,
        0x110,
        0x127,
        0x140,
        0x148,
        0x14c,
        0x152,
        0x15f,
        0x16f,
        0x175,
        0x193
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $currentSubjectId:Ljava/lang/String;

.field final synthetic $dataSource:Ljava/lang/Integer;

.field final synthetic $ep:I

.field final synthetic $isHistoryFirst:Z

.field final synthetic $subject:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic $subjectId:Ljava/lang/String;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/shorttv/bean/Subject;",
            "IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$dataSource:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$currentSubjectId:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    iput p6, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    iput-boolean p7, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$isHistoryFirst:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$dataSource:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$currentSubjectId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    iget v6, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    iget-boolean v7, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$isHistoryFirst:Z

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;-><init>(Ljava/lang/Integer;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZLkotlin/coroutines/Continuation;)V

    iput-object p1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    return-object v9
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v7, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    iget v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v0

    move-object/from16 v0, p1

    goto/16 :goto_2a

    :pswitch_1
    iget v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->I$0:I

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v4, v1

    move-object/from16 v1, p1

    goto/16 :goto_1f

    :pswitch_2
    iget v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->I$0:I

    iget-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_1d

    :pswitch_3
    iget-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto/16 :goto_18

    :catchall_0
    move-exception v0

    goto/16 :goto_1a

    :pswitch_4
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto/16 :goto_16

    :pswitch_5
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto/16 :goto_14

    :pswitch_6
    iget-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/n0;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, p1

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move/from16 v25, v1

    move-object v1, v0

    move/from16 v0, v25

    goto/16 :goto_13

    :pswitch_7
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v15, v1

    move-object/from16 v1, p1

    goto/16 :goto_c

    :pswitch_8
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljs/e;

    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/n0;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v4

    move-object/from16 v4, p1

    goto/16 :goto_5

    :pswitch_9
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/n0;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_3

    :pswitch_a
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :pswitch_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/n0;

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$dataSource:Ljava/lang/Integer;

    if-nez v2, :cond_e

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A0()Lqs/h;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iput v11, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-interface {v2, v3, v7}, Lqs/h;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_0

    return-object v8

    :cond_0
    :goto_0
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    move-object v15, v1

    move-object v14, v2

    goto :goto_1

    :cond_1
    move-object v15, v1

    move-object v14, v13

    :goto_1
    if-eqz v14, :cond_2

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5230\u5386\u53f2\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTvViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$currentSubjectId:Ljava/lang/String;

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j0()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    move v6, v2

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    iget v5, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    iget-boolean v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$isHistoryFirst:Z

    move v2, v6

    move/from16 v16, v3

    move-object v3, v14

    move v9, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S(ILcom/transsion/shorttv/bean/ShortTvInnerPlayBean;Lcom/transsion/shorttv/bean/Subject;IZ)I

    move-result v1

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastEp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", historyItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", firstSelectEp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "ShortTvViewModel"

    const/16 v21, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v23}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getTrailer()Lcom/transsion/shorttv/bean/Trailer;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v13

    :goto_2
    if-eqz v4, :cond_7

    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFirstEp()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    if-nez v1, :cond_6

    sget-object v1, Llr/c;->a:Llr/c;

    invoke-virtual {v1}, Llr/c;->b()Llr/b;

    move-result-object v1

    invoke-virtual {v1}, Llr/b;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getTrailer()Lcom/transsion/shorttv/bean/Trailer;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5b58\u5728\u9884\u544a\u7247 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "ShortTvViewModel"

    const/16 v21, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v23}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iput v10, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-static {v1, v2, v4, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_5

    return-object v8

    :cond_5
    move-object v2, v15

    :goto_3
    check-cast v1, Ljs/e;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v1, v12}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g1(Z)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    move-object v15, v2

    goto/16 :goto_7

    :cond_6
    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "ShortTvViewModel"

    const-string v20, "\u4e0d\u9700\u8981\u52a0\u8f7d\u9884\u544a\u7247"

    const/16 v21, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v23}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_7
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v4

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "ShortTvViewModel"

    const-string v20, "\u4e0d\u5b58\u5728\u9884\u544a\u7247"

    const/16 v21, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v23}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFirstEp()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v4

    goto :goto_4

    :cond_8
    move-object v4, v13

    :goto_4
    if-eqz v4, :cond_d

    if-eqz v0, :cond_d

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v5

    if-ne v5, v1, :cond_c

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "ShortTvViewModel"

    const-string v20, "\u9700\u8981\u9884\u52a0\u8f7d\u7b2c\u4e00\u96c6"

    const/16 v21, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v23}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v2, Ljs/e;

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v20

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v24}, Ljs/e;-><init>(Ljava/lang/String;ILcom/transsion/shorttv/bean/ShortTVItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v5, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    iput-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    const/4 v6, 0x3

    iput v6, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-interface {v4, v5, v7}, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v8, :cond_9

    return-object v8

    :cond_9
    :goto_5
    check-cast v4, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;

    if-eqz v4, :cond_a

    new-instance v5, Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    invoke-virtual {v4}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteNum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getHasFavorite()Z

    move-result v9

    invoke-virtual {v4}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v9, v4}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_6

    :cond_a
    move-object v5, v13

    :goto_6
    invoke-virtual {v1, v5}, Lcom/transsion/shorttv/bean/Subject;->setShortTVFavInfo(Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    :cond_b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v1, v12}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g1(Z)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    goto :goto_7

    :cond_c
    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "ShortTvViewModel"

    const-string v20, "\u4e0d\u9700\u8981\u9884\u52a0\u8f7d\u7b2c\u4e00\u96c6"

    const/16 v21, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v23}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_d
    :goto_7
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iget v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_e
    move-object v15, v1

    :goto_8
    if-eqz v0, :cond_1d

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getUnlockedEps()Ljava/util/List;

    move-result-object v1

    goto :goto_9

    :cond_f
    move-object v1, v13

    :goto_9
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    :cond_11
    :goto_a
    move-object v2, v1

    move v1, v0

    goto/16 :goto_17

    :cond_12
    :goto_b
    :try_start_3
    sget-object v18, Llg/a;->a:Llg/a$a;

    const-string v19, "ShortTvViewModel"

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShortTvInfo,subjectId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Los/a;

    move-result-object v1

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    const/4 v3, 0x4

    iput v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v6}, Los/a$a;->d(Los/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_13

    return-object v8

    :cond_13
    :goto_c
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v2, v0

    goto :goto_d

    :catch_1
    move-object v1, v15

    :catch_2
    move v2, v0

    move-object v15, v1

    move-object v1, v13

    :goto_d
    if-eqz v1, :cond_14

    :try_start_4
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v15

    goto :goto_13

    :cond_14
    move-object v0, v13

    :goto_e
    sget-object v1, Lzr/b;->a:Lzr/b;

    invoke-virtual {v1, v0}, Lzr/b;->e(Lcom/transsion/shorttv/bean/Subject;)V

    if-eqz v0, :cond_16

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_15
    move-object v1, v13

    :goto_f
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_16
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v4

    goto :goto_10

    :cond_17
    move-object v4, v13

    :goto_10
    invoke-static {v1, v3, v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    if-nez v0, :cond_1c

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lqs/d;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    iput-boolean v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    const/4 v3, 0x5

    iput v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-interface {v0, v1, v7}, Lqs/d;->k(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-ne v0, v8, :cond_18

    return-object v8

    :cond_18
    move v1, v2

    move-object v2, v15

    :goto_11
    :try_start_5
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move v2, v1

    goto :goto_15

    :cond_19
    :goto_12
    move-object v0, v13

    goto :goto_15

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v18, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortTvInfo, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "ShortTvViewModel"

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lqs/d;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    const/4 v2, 0x6

    iput v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-interface {v1, v3, v7}, Lqs/d;->k(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_1a

    return-object v8

    :cond_1a
    :goto_14
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    move v2, v0

    move-object v0, v1

    goto :goto_15

    :cond_1b
    move v2, v0

    goto :goto_12

    :cond_1c
    :goto_15
    move v1, v2

    move-object v2, v0

    goto :goto_17

    :cond_1d
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    if-nez v1, :cond_11

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lqs/d;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    const/4 v3, 0x7

    iput v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-interface {v1, v2, v7}, Lqs/d;->k(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_1e

    return-object v8

    :cond_1e
    :goto_16
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    goto/16 :goto_a

    :cond_1f
    move v1, v0

    move-object v2, v13

    :goto_17
    if-nez v2, :cond_20

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v0, v12}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g1(Z)V

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_20
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    :try_start_6
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v18, Llg/a;->a:Llg/a$a;

    const-string v19, "ShortTvViewModel"

    const-string v4, "will loadAdUnlockedEps"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    move-result-object v0

    if-eqz v0, :cond_23

    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    iput-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    const/16 v4, 0x8

    iput v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-interface {v0, v3, v7}, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_21

    return-object v8

    :cond_21
    :goto_18
    check-cast v0, Lcom/transsion/shorttv/db/e;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/transsion/shorttv/db/e;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-object v18, Llg/a;->a:Llg/a$a;

    const-string v19, "ShortTvViewModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAdUnlockedEps result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_22
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_19

    :cond_23
    move-object v0, v13

    :goto_19
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1b

    :goto_1a
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_24

    sget-object v18, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAdUnlockedEps error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "ShortTvViewModel"

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_24
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v18, Llg/a;->a:Llg/a$a;

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortTvInfo,set newSubject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x4

    const/16 v23, 0x0

    const-string v19, "ShortTvViewModel"

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1c

    :cond_25
    move-object v3, v13

    :goto_1c
    invoke-virtual {v0, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    move-result v0

    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lqs/d;

    move-result-object v3

    if-eqz v3, :cond_28

    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    iput-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    iput v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->I$0:I

    const/16 v5, 0x9

    iput v5, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-interface {v3, v4, v7}, Lqs/d;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v8, :cond_27

    return-object v8

    :cond_27
    :goto_1d
    check-cast v3, Ljava/util/List;

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    goto :goto_1e

    :cond_28
    move-object v3, v2

    move-object v2, v13

    :goto_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_37

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getTrailer()Lcom/transsion/shorttv/bean/Trailer;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFirstEp()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v1

    if-eqz v1, :cond_2a

    sget-object v1, Llr/c;->a:Llr/c;

    invoke-virtual {v1}, Llr/c;->b()Llr/b;

    move-result-object v1

    invoke-virtual {v1}, Llr/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v5, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    iput v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->I$0:I

    const/16 v6, 0xa

    iput v6, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-static {v1, v5, v3, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_29

    return-object v8

    :cond_29
    :goto_1f
    check-cast v1, Ljs/e;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :goto_20
    move-object v1, v4

    goto :goto_21

    :cond_2a
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_20

    :goto_21
    if-gt v11, v0, :cond_33

    move v4, v11

    :goto_22
    if-eqz v2, :cond_2d

    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/transsion/shorttv/bean/ShortTVItem;

    invoke-virtual {v9}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v9

    if-ne v9, v4, :cond_2b

    goto :goto_23

    :cond_2c
    move-object v6, v13

    :goto_23
    check-cast v6, Lcom/transsion/shorttv/bean/ShortTVItem;

    goto :goto_24

    :cond_2d
    move-object v6, v13

    :goto_24
    if-ne v4, v11, :cond_30

    new-instance v5, Ljs/e;

    iget-object v9, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    const/16 v23, 0xc

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move/from16 v20, v4

    invoke-direct/range {v18 .. v24}, Ljs/e;-><init>(Ljava/lang/String;ILcom/transsion/shorttv/bean/ShortTVItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDownloadStatus()I

    move-result v9

    goto :goto_25

    :cond_2e
    move v9, v12

    :goto_25
    invoke-virtual {v5, v9}, Ljs/e;->g(I)V

    invoke-virtual {v5}, Ljs/e;->b()I

    move-result v9

    const/4 v14, 0x5

    if-ne v9, v14, :cond_2f

    goto :goto_26

    :cond_2f
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFirstEp()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v6

    :goto_26
    invoke-virtual {v5, v6}, Ljs/e;->h(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x5

    goto :goto_29

    :cond_30
    new-instance v5, Ljs/e;

    iget-object v9, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    const/16 v23, 0xc

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move/from16 v20, v4

    invoke-direct/range {v18 .. v24}, Ljs/e;-><init>(Ljava/lang/String;ILcom/transsion/shorttv/bean/ShortTVItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v6, :cond_31

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDownloadStatus()I

    move-result v9

    goto :goto_27

    :cond_31
    move v9, v12

    :goto_27
    invoke-virtual {v5, v9}, Ljs/e;->g(I)V

    invoke-virtual {v5}, Ljs/e;->b()I

    move-result v9

    const/4 v14, 0x5

    if-ne v9, v14, :cond_32

    goto :goto_28

    :cond_32
    move-object v6, v13

    :goto_28
    invoke-virtual {v5, v6}, Ljs/e;->h(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    if-eq v4, v0, :cond_33

    add-int/2addr v4, v11

    goto/16 :goto_22

    :cond_33
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v0

    if-nez v0, :cond_36

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iput-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    iput-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    const/16 v4, 0xb

    iput v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    invoke-interface {v0, v2, v7}, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_34

    return-object v8

    :cond_34
    :goto_2a
    check-cast v0, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;

    if-eqz v0, :cond_35

    new-instance v13, Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    invoke-virtual {v0}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getHasFavorite()Z

    move-result v4

    invoke-virtual {v0}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v2, v4, v0}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_35
    invoke-virtual {v3, v13}, Lcom/transsion/shorttv/bean/Subject;->setShortTVFavInfo(Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    :cond_36
    move-object v4, v1

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iget v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2d

    :cond_37
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$dataSource:Ljava/lang/Integer;

    if-nez v0, :cond_38

    goto :goto_2b

    :cond_38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v11, :cond_39

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_39
    :goto_2b
    sget-object v0, Llg/a;->a:Llg/a$a;

    if-eqz v2, :cond_3a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v13

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e0\u7f51\uff0c\u663e\u793a\u4e0b\u8f7d\u6570\u636e, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, "ShortTvViewModel"

    const/16 v16, 0x0

    move-object v13, v0

    invoke-static/range {v13 .. v18}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v2, :cond_3c

    check-cast v2, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1$invokeSuspend$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v15

    new-instance v3, Ljs/e;

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v3

    move-object v14, v1

    invoke-direct/range {v13 .. v19}, Ljs/e;-><init>(Ljava/lang/String;ILcom/transsion/shorttv/bean/ShortTVItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDownloadStatus()I

    move-result v5

    invoke-virtual {v3, v5}, Ljs/e;->g(I)V

    invoke-virtual {v3, v2}, Ljs/e;->h(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_3b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_3c
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    iget v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2d
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v0, v12}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g1(Z)V

    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
