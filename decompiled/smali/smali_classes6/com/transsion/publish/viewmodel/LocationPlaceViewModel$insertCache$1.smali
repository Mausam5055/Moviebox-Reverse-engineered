.class final Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->o(Ljava/util/List;)V
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
    c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$insertCache$1"
    f = "LocationPlaceViewModel.kt"
    l = {
        0x7f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            ">;",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->$list:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;

    iget-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->$list:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;-><init>(Ljava/util/List;Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->$list:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/room/api/bean/LocationPlace;

    new-instance v14, Lcom/transsion/baselib/db/place/PlaceDBBean;

    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getLat()Ljava/lang/Double;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    goto :goto_1

    :cond_2
    move-wide v9, v7

    :goto_1
    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getLon()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-wide v11, v6

    goto :goto_2

    :cond_3
    move-wide v11, v7

    :goto_2
    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/transsion/room/api/bean/LocationPlace;->getDistance()Ljava/lang/String;

    move-result-object v5

    move-object v6, v14

    move-wide v7, v9

    move-wide v9, v11

    move-object v11, v13

    move-object v12, v15

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/transsion/baselib/db/place/PlaceDBBean;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v16, Llg/a;->a:Llg/a$a;

    invoke-virtual {v14}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v14}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v14}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertCache latitude:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", longitude:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", name:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "SelectLocation"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->this$0:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    invoke-static {v4}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->f(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Lcom/transsion/baselib/db/place/PlaceDao;

    move-result-object v4

    iput v3, v0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;->label:I

    invoke-interface {v4, v2, v0}, Lcom/transsion/baselib/db/place/PlaceDao;->c(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
