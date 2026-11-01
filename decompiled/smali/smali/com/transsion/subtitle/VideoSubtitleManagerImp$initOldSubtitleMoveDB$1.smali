.class final Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/VideoSubtitleManagerImp;->C()V
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
    c = "com.transsion.subtitle.VideoSubtitleManagerImp$initOldSubtitleMoveDB$1"
    f = "VideoSubtitleManagerImp.kt"
    l = {
        0x174,
        0x188,
        0x1bd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/subtitle/VideoSubtitleManagerImp;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

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

    new-instance p1, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    invoke-direct {p1, v0, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;-><init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    iget-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    move v4, v3

    goto/16 :goto_e

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/baselib/db/download/SubtitleBean;

    iget-object v6, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto/16 :goto_4

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->q(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Llj/v0;

    move-result-object v2

    iput v5, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->label:I

    invoke-interface {v2, v0}, Llj/v0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast v2, Ljava/util/List;

    sget-object v6, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    const-string v7, "subtitle_old_db_move"

    invoke-virtual {v6, v7, v5}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_1d

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_f

    :cond_6
    invoke-static {}, Lcom/transsion/subtitle/helper/e;->a()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v6, v2}, Lcom/transsion/subtitle/helper/e;->c(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v6, "en"

    invoke-static {v6, v2}, Lcom/transsion/subtitle/helper/e;->c(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/baselib/db/download/SubtitleBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_9

    goto/16 :goto_0

    :cond_9
    sget-object v8, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v8}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v8

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSe()I

    move-result v10

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/SubtitleBean;->getEp()I

    move-result v11

    iput-object v6, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->label:I

    invoke-virtual {v8, v9, v10, v11, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->J(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_a

    return-object v1

    :cond_a
    move-object/from16 v40, v6

    move-object v6, v2

    move-object v2, v7

    move-object/from16 v7, v40

    :goto_4
    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez v8, :cond_b

    sget-object v8, Llg/a;->a:Llg/a$a;

    sget-object v9, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v9}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    invoke-static {v10}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " \u8f6c\u79fb\u6570\u636e\u5e93,\u8d44\u6e90\u4e3a\u7a7a\uff0csubjectId:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLan()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_c

    :goto_5
    move-object v2, v6

    move-object v6, v7

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_d

    move v13, v10

    goto :goto_6

    :cond_d
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isStream()Z

    move-result v9

    if-eqz v9, :cond_e

    move v13, v4

    goto :goto_6

    :cond_e
    move v13, v5

    :goto_6
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isOutside()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostIdNotNull()Ljava/lang/String;

    move-result-object v9

    :cond_f
    :goto_7
    move-object/from16 v22, v9

    goto :goto_8

    :cond_10
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_f

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :goto_8
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getUrl()Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    if-nez v9, :cond_11

    move-object/from16 v17, v11

    goto :goto_9

    :cond_11
    move-object/from16 v17, v9

    :goto_9
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLan()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLanName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSize()Ljava/lang/Long;

    move-result-object v18

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_12

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    move-result-object v9

    :cond_12
    move-object/from16 v24, v9

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getEp()I

    move-result v25

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSe()I

    move-result v26

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_13

    move-object/from16 v28, v11

    goto :goto_a

    :cond_13
    move-object/from16 v28, v9

    :goto_a
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getStatus()I

    move-result v9

    const/4 v11, 0x5

    if-eq v9, v5, :cond_16

    if-eq v9, v4, :cond_15

    if-eq v9, v3, :cond_14

    const/4 v9, 0x0

    :goto_b
    move/from16 v29, v9

    goto :goto_c

    :cond_14
    move/from16 v29, v4

    goto :goto_c

    :cond_15
    move/from16 v29, v11

    goto :goto_c

    :cond_16
    const/4 v9, 0x6

    goto :goto_b

    :goto_c
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getType()I

    move-result v2

    if-eq v2, v4, :cond_1a

    if-eq v2, v3, :cond_19

    if-eq v2, v10, :cond_18

    if-eq v2, v11, :cond_17

    move/from16 v21, v5

    goto :goto_d

    :cond_17
    move/from16 v21, v11

    goto :goto_d

    :cond_18
    move/from16 v21, v10

    goto :goto_d

    :cond_19
    move/from16 v21, v3

    goto :goto_d

    :cond_1a
    move/from16 v21, v4

    :goto_d
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v35

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v37

    new-instance v2, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-object v11, v2

    const v38, 0x748180

    const/16 v39, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v11 .. v39}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v8, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    sget-object v9, Llg/a;->a:Llg/a$a;

    sget-object v10, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v10}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubjectId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    move-result v13

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    move-result v14

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u8f6c\u79fb\u6570\u636e\u5e93,name = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " subjectId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ep:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " se:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\uff0csubLan:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\uff0ctype:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\uff0cstatus:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v9, v10, v3, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    iput-object v7, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->label:I

    invoke-virtual {v3, v2, v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->m(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1b

    return-object v1

    :cond_1b
    move-object v2, v6

    move-object v6, v7

    :goto_e
    move v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_1c
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_1d
    :goto_f
    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$initOldSubtitleMoveDB$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    invoke-static {v3}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->p(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u8f6c\u79fb\u6570\u636e\u5e93, \u539f\u59cb\u6570\u636e\u5e93\u5217\u8868\u4e3a\u7a7a"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
