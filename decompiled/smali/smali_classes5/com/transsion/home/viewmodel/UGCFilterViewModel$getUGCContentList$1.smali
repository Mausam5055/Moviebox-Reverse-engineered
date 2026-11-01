.class final Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/UGCFilterViewModel;->m(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V
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
    c = "com.transsion.home.viewmodel.UGCFilterViewModel$getUGCContentList$1"
    f = "UGCFilterViewModel.kt"
    l = {
        0x66
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $categoryLve2:Ljava/lang/Integer;

.field final synthetic $categoryLve3:Ljava/lang/Integer;

.field final synthetic $categoryLve4:Ljava/lang/Integer;

.field final synthetic $finallyCateGory:Ljava/lang/String;

.field final synthetic $isRefresh:Z

.field final synthetic $page:I

.field final synthetic $perPage:I

.field final synthetic $selectGrade:Ljava/lang/String;

.field final synthetic $sort:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/transsion/home/viewmodel/UGCFilterViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z",
            "Lcom/transsion/home/viewmodel/UGCFilterViewModel;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$finallyCateGory:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    iput-object p3, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve2:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve3:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve4:Ljava/lang/Integer;

    iput-boolean p7, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$isRefresh:Z

    iput-object p8, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    iput p9, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$perPage:I

    iput-object p10, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$selectGrade:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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

    new-instance p1, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$finallyCateGory:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    iget-object v3, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve2:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve3:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve4:Ljava/lang/Integer;

    iget-boolean v7, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$isRefresh:Z

    iget-object v8, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    iget v9, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$perPage:I

    iget-object v10, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$selectGrade:Ljava/lang/String;

    move-object v0, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/transsion/home/viewmodel/UGCFilterViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v12, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->label:I

    const-string v14, ", page="

    const/4 v15, 0x0

    const-string v11, ", sort="

    const-string v10, "UGCFilterViewModel"

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v9, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v1, p1

    move-object v15, v10

    move-object v13, v11

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v15, v10

    move-object v13, v11

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$finallyCateGory:Ljava/lang/String;

    iget v3, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    iget-object v4, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    iget-object v5, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve2:Ljava/lang/Integer;

    iget-object v6, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve3:Ljava/lang/Integer;

    iget-object v7, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve4:Ljava/lang/Integer;

    iget-boolean v8, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$isRefresh:Z

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUGCContentList: category="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lv2="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lv3="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lv4="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRefresh="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v15}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    invoke-static {v1}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->f(Lcom/transsion/home/viewmodel/UGCFilterViewModel;)Lol/c;

    move-result-object v1

    sget-object v2, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v2}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$finallyCateGory:Ljava/lang/String;

    iget v4, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    iget v5, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$perPage:I

    iget-object v6, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    iget-object v7, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve2:Ljava/lang/Integer;

    iget-object v8, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve3:Ljava/lang/Integer;

    iget-object v9, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$categoryLve4:Ljava/lang/Integer;

    iget-object v13, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$selectGrade:Ljava/lang/String;

    const/4 v15, 0x1

    iput v15, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->label:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v10

    move-object v10, v13

    move-object v13, v11

    move-object/from16 v11, p0

    :try_start_2
    invoke-interface/range {v1 .. v11}, Lol/c;->d(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UGC_VIDEO"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_4
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v5, v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->setItems(Ljava/util/List;)V

    :cond_6
    new-instance v0, Lcom/transsion/home/bean/RefreshBaseDto;

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v3, ""

    if-nez v2, :cond_7

    move-object v4, v3

    goto :goto_3

    :cond_7
    move-object v4, v2

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v6, v3

    goto :goto_4

    :cond_8
    move-object v6, v2

    :goto_4
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move-object v7, v3

    goto :goto_5

    :cond_9
    move-object v7, v2

    :goto_5
    iget-boolean v8, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$isRefresh:Z

    move-object v2, v0

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/transsion/home/bean/RefreshBaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    invoke-virtual {v2}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->o()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget v2, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    iget-object v3, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUGCContentList success: page="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->this$0:Lcom/transsion/home/viewmodel/UGCFilterViewModel;

    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->o()Landroidx/lifecycle/b0;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget v2, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$page:I

    iget-object v3, v12, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;->$sort:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUGCContentList error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v0, v2}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
