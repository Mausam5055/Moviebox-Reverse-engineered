.class public abstract Lcom/transsion/baselib/db/video/VideoDetailPlayDao$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static a(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;

    iget v4, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;

    invoke-direct {v3, v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    iget-object v1, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v35, v2

    move-object v2, v1

    move-object/from16 v1, v35

    goto :goto_2

    :cond_3
    iget-object v0, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v35, v1

    move-object v1, v0

    move-object/from16 v0, v35

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object v0, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    iput v8, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    invoke-interface {v0, v1, v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    :goto_1
    check-cast v2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_3

    :cond_6
    iput-object v1, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    iput v7, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    invoke-interface {v0, v1, v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_7

    return-object v4

    :cond_7
    move-object/from16 v35, v1

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v2, v35

    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    if-nez v1, :cond_8

    new-instance v34, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v1, v34

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getEp()I

    move-result v4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSe()I

    move-result v5

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getProgress()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTimeStamp()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectDurationSeconds()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getAverageHueLight()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getHasDelete()Z

    move-result v19

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getPlayMode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadSize()J

    move-result-wide v23

    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDubs()Ljava/util/ArrayList;

    move-result-object v25

    const/high16 v32, 0x7e00000

    const/16 v33, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v1 .. v33}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v34

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getProgress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->setProgress(J)V

    move-object v2, v1

    :goto_3
    return-object v2

    :cond_9
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    iput v6, v3, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$getHistory$1;->label:I

    invoke-interface {v0, v1, v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_a

    return-object v4

    :cond_a
    :goto_4
    return-object v2
.end method

.method public static b(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;

    iget v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;

    invoke-direct {v0, p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    iget-object p0, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSe()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getEp()I

    move-result v6

    iput-object p0, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    invoke-interface {p0, p2, v2, v6, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->m(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    const/4 v2, 0x0

    if-nez p2, :cond_7

    iput-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->o(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    iput-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdate$1;->label:I

    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->k(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static c(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Ljava/lang/String;IIJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p8

    instance-of v5, v4, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;

    iget v6, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;

    invoke-direct {v5, v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v6

    iget v7, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    if-eq v7, v12, :cond_5

    if-eq v7, v11, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    iget-object v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v4

    goto/16 :goto_5

    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-wide v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    iget-wide v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    iget v7, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$1:I

    iget v8, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$0:I

    iget-object v9, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v11, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-wide/from16 v21, v0

    move-wide/from16 v27, v2

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v17, v9

    goto :goto_2

    :cond_5
    iget-wide v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    iget-wide v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    iget v7, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$1:I

    iget v12, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$0:I

    iget-object v14, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-wide v8, v0

    move-object v0, v4

    goto :goto_1

    :cond_6
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    iput v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$0:I

    iput v3, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$1:I

    move-wide/from16 v14, p4

    iput-wide v14, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    move-wide/from16 v8, p6

    iput-wide v8, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    iput v12, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->m(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_7

    return-object v6

    :cond_7
    move v12, v2

    move-wide/from16 v49, v14

    move-object v15, v0

    move-object v14, v1

    move-object v0, v7

    move v7, v3

    move-wide/from16 v2, v49

    :goto_1
    if-nez v0, :cond_b

    iput-object v15, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    iput-object v14, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    iput v12, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$0:I

    iput v7, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->I$1:I

    iput-wide v2, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    iput-wide v8, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    iput v11, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    invoke-interface {v15, v14, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_8

    return-object v6

    :cond_8
    move-wide/from16 v27, v2

    move/from16 v19, v7

    move-wide/from16 v21, v8

    move/from16 v20, v12

    move-object/from16 v17, v14

    move-object v11, v15

    :goto_2
    check-cast v4, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    if-eqz v4, :cond_9

    new-instance v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    move-result-object v18

    const v47, 0x7fffde0

    const/16 v48, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-direct/range {v16 .. v48}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-object/from16 v16, v0

    const v47, 0x7fffde0

    const/16 v48, 0x0

    const-string v18, ""

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-direct/range {v16 .. v48}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    iput-object v13, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    iput-object v13, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    iput v10, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    invoke-interface {v11, v0, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->o(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_a

    return-object v6

    :cond_a
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_b
    iput-object v15, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    iput-object v13, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    iput-wide v8, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    const/4 v0, 0x4

    iput v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    invoke-interface {v15, v14, v12, v7, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->l(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_c

    return-object v6

    :cond_c
    move-object v3, v0

    move-wide v0, v8

    move-object v2, v15

    :goto_5
    check-cast v3, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v0, v1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->setProgress(J)V

    iput-object v13, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v5, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    invoke-interface {v2, v3, v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->k(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_d

    return-object v6

    :cond_d
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
