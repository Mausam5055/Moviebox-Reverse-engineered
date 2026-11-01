.class final Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i(Ljava/lang/String;II)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$getEpisodeList$1"
    f = "ShortTvDownloadViewModel.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $endPosition:I

.field final synthetic $startPosition:I

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$subjectId:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    iput p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

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

    new-instance p1, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$subjectId:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    iget v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v9, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v10

    iget v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->label:I

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ShortTvDownload"

    const-string v4, "getShortTvEpisodeList---start"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_1
    iget-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->e(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Los/a;

    move-result-object v0

    iget-object v2, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$subjectId:Ljava/lang/String;

    iget v3, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    iget v4, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

    iput v1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v8}, Los/a$a;->c(Los/a;Ljava/lang/String;IIILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_2

    return-object v10

    :cond_2
    :goto_0
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    move-object v0, v11

    :goto_1
    if-eqz v0, :cond_4

    iget v1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->setStartPosition(I)V

    :cond_4
    if-eqz v0, :cond_5

    iget v1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->setEndPosition(I)V

    :cond_5
    sget-object v2, Llg/a;->a:Llg/a$a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v11

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortTvEpisodeList---end, size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ShortTvDownload"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    goto/16 :goto_11

    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    new-instance v3, Lcom/transsion/shorttv/bean/DownloadItem;

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    :cond_8
    const-string v4, ""

    :cond_9
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EP"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_4

    :cond_a
    move-object/from16 v17, v11

    :goto_4
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getSize()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_5

    :cond_b
    move-object/from16 v19, v11

    :goto_5
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    move-result v23

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v24

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v30, 0x400

    const/16 v31, 0x0

    const/16 v18, 0x2

    const-string v20, ""

    const/16 v25, 0x0

    const-string v26, ""

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object v14, v3

    invoke-direct/range {v14 .. v31}, Lcom/transsion/shorttv/bean/DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v2}, Lcom/transsion/shorttv/bean/DownloadItem;->setEpisodeItem(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getPager()Lcom/transsion/shorttv/bean/Pager;

    move-result-object v14

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    move-object v15, v1

    goto :goto_6

    :cond_d
    move-object v15, v11

    :goto_6
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_7

    :cond_e
    move-object/from16 v16, v11

    :goto_7
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_8

    :cond_f
    move-object/from16 v18, v11

    :goto_8
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_9
    move/from16 v19, v1

    goto :goto_a

    :cond_10
    const/4 v1, 0x7

    goto :goto_9

    :goto_a
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_b

    :cond_11
    move-object/from16 v20, v11

    :goto_b
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    goto :goto_c

    :cond_12
    move-object/from16 v24, v11

    :goto_c
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_d

    :cond_13
    move-object/from16 v22, v11

    :goto_d
    new-instance v1, Lcom/transsion/shorttv/bean/DownloadListBean;

    move-object v12, v1

    iget v2, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v21

    const v34, 0x1ff400

    const/16 v35, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v12 .. v35}, Lcom/transsion/shorttv/bean/DownloadListBean;-><init>(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv/bean/ShortTVFavInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget v2, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$startPosition:I

    iget v3, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->$endPosition:I

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/DownloadListBean;->setStartPosition(I)V

    invoke-virtual {v1, v3}, Lcom/transsion/shorttv/bean/DownloadListBean;->setEndPosition(I)V

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_14
    move-object v2, v11

    :goto_e
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/DownloadListBean;->setGenre(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getTags()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    goto :goto_f

    :cond_15
    move-object v2, v11

    :goto_f
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/DownloadListBean;->setTags(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_16
    move-object v2, v11

    :goto_10
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/DownloadListBean;->setReleaseDate(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v11

    :cond_17
    invoke-virtual {v1, v11}, Lcom/transsion/shorttv/bean/DownloadListBean;->setShortTVFavInfo(Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    iget-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_18
    :goto_11
    iget-object v0, v9, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
