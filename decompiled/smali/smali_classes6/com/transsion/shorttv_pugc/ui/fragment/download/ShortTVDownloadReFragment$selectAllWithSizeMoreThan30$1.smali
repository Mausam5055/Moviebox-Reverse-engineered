.class final Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;->y1(Z)V
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
    c = "com.transsion.shorttv_pugc.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1"
    f = "ShortTVDownloadReFragment.kt"
    l = {
        0x3b2,
        0x3b5,
        0x3b8,
        0x3bb,
        0x3c0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isSelected:Z

.field final synthetic $selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lot/c;",
            ">;>;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;",
            "Z",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lot/c;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    iput-boolean p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$isSelected:Z

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    iget-boolean v1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$isSelected:Z

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;-><init>(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    const-wide/16 v3, 0x64

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v12, :cond_4

    if-eq v2, v11, :cond_3

    if-eq v2, v10, :cond_2

    if-eq v2, v9, :cond_1

    if-ne v2, v8, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    iget v13, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    iget-wide v14, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v7, v9

    goto/16 :goto_8

    :cond_2
    iget v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    iget v5, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    iget-wide v13, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-wide/from16 v16, v13

    move v13, v5

    move-object v5, v15

    move-wide/from16 v14, v16

    goto/16 :goto_7

    :cond_3
    iget v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    iget v5, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    iget-wide v13, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    iget v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    iget v5, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    iget-wide v13, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-static {v5}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;->D0(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;)I

    move-result v5

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v13, v5, :cond_12

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-static {v7}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;->E0(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;)Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;->getData()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    if-ge v13, v7, :cond_b

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-static {v7}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;->E0(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;)Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;->getData()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lot/c;

    goto :goto_2

    :cond_7
    move-object v7, v6

    :goto_2
    iget-object v8, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-static {v8}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;->G0(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-static {v8}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;->G0(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/shorttv_pugc/bean/DownloadItem;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/transsion/shorttv_pugc/bean/DownloadItem;->isUnable()Z

    move-result v9

    if-ne v9, v12, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v7, :cond_b

    iget-boolean v9, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$isSelected:Z

    invoke-virtual {v7, v9}, Lot/c;->f(Z)V

    iget-boolean v9, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$isSelected:Z

    if-eqz v9, :cond_a

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/transsion/shorttv_pugc/bean/DownloadItem;->getSize()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_3

    :cond_9
    const-wide/16 v8, 0x0

    :goto_3
    add-long/2addr v14, v8

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    add-int/lit8 v7, v13, 0x1

    rem-int/lit8 v7, v7, 0x1e

    if-nez v7, :cond_e

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v7

    new-instance v8, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$1;

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-direct {v8, v9, v2, v6}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$1;-><init>(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    iput-wide v14, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    iput v13, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    iput v5, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    iput v12, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_c

    return-object v1

    :cond_c
    move-wide/from16 v16, v14

    move-object v15, v2

    move v2, v5

    move v5, v13

    move-wide/from16 v13, v16

    :goto_5
    iput-object v15, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    iput-wide v13, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    iput v5, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    iput v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    iput v11, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_d

    return-object v1

    :cond_d
    :goto_6
    add-int/lit8 v6, v5, 0x1

    iput v6, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v7, 0x4

    move/from16 v16, v5

    move v5, v2

    move-object v2, v15

    move-wide v14, v13

    move/from16 v13, v16

    goto :goto_9

    :cond_e
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-static {v7}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;->D0(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;)I

    move-result v7

    sub-int/2addr v7, v12

    if-ne v13, v7, :cond_11

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v7

    new-instance v8, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$2;

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-direct {v8, v9, v2, v6}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$2;-><init>(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    iput-wide v14, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    iput v13, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    iput v5, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    iput v10, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_f

    return-object v1

    :cond_f
    move/from16 v16, v5

    move-object v5, v2

    move/from16 v2, v16

    :goto_7
    iput-object v5, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    iput-wide v14, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    iput v13, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    iput v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    const/4 v7, 0x4

    iput v7, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_10

    return-object v1

    :cond_10
    :goto_8
    move-object/from16 v16, v5

    move v5, v2

    move-object/from16 v2, v16

    goto :goto_9

    :cond_11
    const/4 v7, 0x4

    :goto_9
    add-int/2addr v13, v12

    move v9, v7

    const/4 v8, 0x5

    goto/16 :goto_0

    :cond_12
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_13
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_14
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v2

    new-instance v3, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$3;

    iget-object v4, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-direct {v3, v4, v6}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$3;-><init>(Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_15

    return-object v1

    :cond_15
    :goto_a
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
