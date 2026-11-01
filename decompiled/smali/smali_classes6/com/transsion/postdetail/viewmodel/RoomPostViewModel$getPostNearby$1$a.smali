.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

.field final synthetic c:D

.field final synthetic d:D


# direct methods
.method constructor <init>(ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;DD)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->a:Z

    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    iput-wide p3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->c:D

    iput-wide p5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->a:Z

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->setRefresh(Z)V

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Iterable;

    iget-wide v12, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->c:D

    iget-wide v14, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->d:D

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getLat()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getLon()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lak/s;->a:Lak/s;

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getLat()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v8, v4

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getLon()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v6, v4

    move-wide v4, v12

    move-wide/from16 v16, v6

    move-wide v6, v14

    move-object/from16 p2, v2

    move-object v2, v10

    move-wide/from16 v10, v16

    invoke-virtual/range {v3 .. v11}, Lak/s;->a(DDDD)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setDistanceStr(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 p2, v2

    :goto_1
    move-object/from16 v2, p2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-static {v2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->l(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
