.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;


# direct methods
.method constructor <init>(ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->a:Z

    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->c:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    iget-boolean p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->a:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->c:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-static {p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->g(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->c:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-static {p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->g(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7d0

    cmp-long p2, v0, v4

    if-gtz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->c:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-static {v0, v2, v3}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->w(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;J)V

    sget-object v4, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPostExplore success--needRefreshBuiltIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "RoomPostVM"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPostExplore success--isRefreshNew:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", size\uff1a"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "RoomPostVM"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->setRefresh(Z)V

    :cond_3
    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->c:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-static {p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->j(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object p2, Lcom/transsion/postdetail/util/g;->a:Lcom/transsion/postdetail/util/g;

    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/util/g;->b(Ljava/util/List;)V

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
