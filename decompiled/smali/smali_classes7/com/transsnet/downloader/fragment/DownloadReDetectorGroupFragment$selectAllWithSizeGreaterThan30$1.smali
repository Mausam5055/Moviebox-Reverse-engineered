.class final Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->o1(Z)V
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
    c = "com.transsnet.downloader.fragment.DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1"
    f = "DownloadReDetectorGroupFragment.kt"
    l = {
        0x15f,
        0x162,
        0x165,
        0x168,
        0x16c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isSelected:Z

.field final synthetic $size:I

.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;ZILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;",
            "ZI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$data:Ljava/util/List;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    iput-boolean p3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$isSelected:Z

    iput p4, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$size:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$data:Ljava/util/List;

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    iget-boolean v3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$isSelected:Z

    iget v4, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$size:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;-><init>(Ljava/util/List;Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;ZILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->label:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v9, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$1:I

    iget v10, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$0:I

    iget-boolean v11, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->Z$0:Z

    iget-object v12, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    iget-object v14, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v15, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v3, v6

    move-object v5, v14

    move v14, v7

    const-wide/16 v6, 0x64

    goto/16 :goto_5

    :cond_2
    iget v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$1:I

    iget v10, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$0:I

    iget-boolean v11, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->Z$0:Z

    iget-object v12, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    iget-object v14, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v15, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v5, v14

    move v14, v7

    goto/16 :goto_4

    :cond_3
    iget v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$2:I

    iget v10, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$1:I

    iget v11, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$0:I

    iget-boolean v12, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->Z$0:Z

    iget-object v13, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    iget-object v14, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    iget-object v15, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$2:I

    iget v5, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$1:I

    iget v10, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$0:I

    iget-boolean v11, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->Z$0:Z

    iget-object v12, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    iget-object v14, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v15, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v21, v10

    move v10, v5

    move-object v5, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move v12, v11

    move/from16 v11, v21

    goto/16 :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v10, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$data:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    iget-boolean v11, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$isSelected:Z

    iget-object v12, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    iget v13, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$size:I

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/4 v6, 0x0

    if-eqz v15, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v7, v14, 0x1

    if-gez v14, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_6
    check-cast v15, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v15, v11}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    invoke-virtual {v12}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->k1()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->isUnable()Z

    move-result v18

    if-nez v18, :cond_8

    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v19

    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    goto :goto_1

    :cond_7
    const-wide/16 v19, 0x0

    :goto_1
    add-long v3, v3, v19

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v12}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Lcom/transsnet/downloader/adapter/g;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsnet/downloader/adapter/g;->F1()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_8
    rem-int/lit8 v3, v7, 0x1e

    if-nez v3, :cond_b

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v3

    new-instance v4, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$1;

    invoke-direct {v4, v12, v5, v6}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$2:Ljava/lang/Object;

    iput-object v10, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$3:Ljava/lang/Object;

    iput-boolean v11, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->Z$0:Z

    iput v13, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$0:I

    iput v7, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$1:I

    iput v14, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$2:I

    iput v9, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    return-object v1

    :cond_9
    move-object v15, v5

    move-object v5, v2

    move v2, v14

    move-object v14, v12

    move v12, v11

    move v11, v13

    move-object v13, v10

    move v10, v7

    :goto_2
    iput-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$0:Ljava/lang/Object;

    iput-object v15, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$1:Ljava/lang/Object;

    iput-object v14, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$2:Ljava/lang/Object;

    iput-object v13, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$3:Ljava/lang/Object;

    iput-boolean v12, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->Z$0:Z

    iput v11, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$0:I

    iput v10, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$1:I

    iput v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$2:I

    iput v8, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->label:I

    const-wide/16 v3, 0x64

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    add-int/2addr v2, v9

    iput v2, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v2, v5

    move v7, v10

    move-object v10, v13

    move-object v5, v15

    const/4 v3, 0x4

    const-wide/16 v16, 0x64

    move v13, v11

    move v11, v12

    move-object v12, v14

    const/4 v14, 0x3

    goto :goto_6

    :cond_b
    add-int/lit8 v3, v13, -0x1

    if-ne v14, v3, :cond_e

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v3

    new-instance v4, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$2;

    invoke-direct {v4, v12, v5, v13, v6}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$1$2;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$2:Ljava/lang/Object;

    iput-object v10, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$3:Ljava/lang/Object;

    iput-boolean v11, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->Z$0:Z

    iput v13, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$0:I

    iput v7, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$1:I

    const/4 v14, 0x3

    iput v14, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_c

    return-object v1

    :cond_c
    move-object v15, v2

    move v2, v7

    move-object/from16 v21, v12

    move-object v12, v10

    move v10, v13

    move-object/from16 v13, v21

    :goto_4
    iput-object v15, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$1:Ljava/lang/Object;

    iput-object v13, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$2:Ljava/lang/Object;

    iput-object v12, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$3:Ljava/lang/Object;

    iput-boolean v11, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->Z$0:Z

    iput v10, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$0:I

    iput v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->I$1:I

    const/4 v3, 0x4

    iput v3, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->label:I

    const-wide/16 v6, 0x64

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_d

    return-object v1

    :cond_d
    :goto_5
    move-wide/from16 v16, v6

    move v7, v2

    move-object v2, v15

    move-object/from16 v21, v13

    move v13, v10

    move-object v10, v12

    move-object/from16 v12, v21

    goto :goto_6

    :cond_e
    const/4 v3, 0x4

    const/4 v14, 0x3

    const-wide/16 v16, 0x64

    :goto_6
    move v6, v3

    move/from16 v21, v14

    move v14, v7

    move/from16 v7, v21

    goto/16 :goto_0

    :cond_f
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v3, v4, v5}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->W0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;J)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v3

    new-instance v4, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;

    iget-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    iget-boolean v7, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->$isSelected:Z

    invoke-direct {v4, v5, v7, v2, v6}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;ZLkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_10

    return-object v1

    :cond_10
    :goto_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
