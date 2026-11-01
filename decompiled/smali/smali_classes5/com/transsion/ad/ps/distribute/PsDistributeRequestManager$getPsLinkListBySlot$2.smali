.class final Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->n(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.ps.distribute.PsDistributeRequestManager$getPsLinkListBySlot$2"
    f = "PsDistributeRequestManager.kt"
    l = {
        0x5c,
        0x6a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $nonId:Ljava/lang/String;

.field final synthetic $pageIndex:I

.field final synthetic $pageSize:I

.field final synthetic $psScene:Ljava/lang/Integer;

.field label:I


# direct methods
.method constructor <init>(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageIndex:I

    iput p2, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageSize:I

    iput-object p3, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$nonId:Ljava/lang/String;

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

    new-instance p1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;

    iget v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageIndex:I

    iget v2, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageSize:I

    iget-object v3, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$nonId:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;-><init>(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    iget v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageIndex:I

    iget v4, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$pageSize:I

    iget-object v5, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    invoke-static {p1, v1, v4, v5}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->d(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;IILjava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v4, Lhi/f;->a:Lhi/f;

    invoke-virtual {v4}, Lhi/f;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "https://feature-api.palmplaystore.com"

    goto :goto_0

    :cond_3
    const-string v5, "https://test-feature-api.palmplaystore.com"

    :goto_0
    invoke-virtual {v4}, Lhi/f;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v6, Loi/a;->a:Loi/a;

    invoke-static {p1}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->c(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> getPsLinkListBySlot() --> psScene = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " --> url = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> jsonObject = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_4
    invoke-static {p1}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->g(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;)Lqi/a;

    move-result-object p1

    sget-object v4, Lbh/b;->a:Lbh/b$a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "toString(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v1

    iput v3, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->label:I

    invoke-interface {p1, v1, v5, p0}, Lqi/a;->b(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Lcom/transsion/ad/ps/model/PsLinkDto;

    sget-object v3, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v4, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_SUCCESS:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/PsLinkDto;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    const-string v6, ""

    iget-object v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_AD_PLAN:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    invoke-virtual {v1}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    iget-object v3, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$nonId:Ljava/lang/String;

    iput v2, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->label:I

    invoke-static {v1, v3, v4, p1, p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->b(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/PsLinkDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_4
    invoke-static {}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :goto_5
    :try_start_3
    sget-object v0, Loi/a;->a:Loi/a;

    sget-object v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    invoke-static {v1}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->c(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> getPsLinkList() --> psScene = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " --> it = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v6, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v7, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_FAIL:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object p1, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_AD_PLAN:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    invoke-virtual {p1}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->getValue()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :goto_7
    invoke-static {}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;->$psScene:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
.end method
