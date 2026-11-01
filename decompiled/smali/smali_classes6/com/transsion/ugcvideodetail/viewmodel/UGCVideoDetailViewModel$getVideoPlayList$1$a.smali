.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I


# direct methods
.method constructor <init>(ZILcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;I)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->a:Z

    iput p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->b:I

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    iput-object p4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->d:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->a:Z

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->setLoadDown(Z)V

    :cond_0
    iget p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->b:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-virtual {v1, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setPlayListPosition(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->p(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    invoke-static {p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->g(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)I

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    invoke-static {p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->f(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    invoke-static {p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->g(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)I

    move-result v0

    iget v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->r(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;I)V

    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    invoke-static {p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->f(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)I

    move-result v0

    iget v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->q(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    iget v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->b:I

    invoke-static {p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->r(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;I)V

    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    iget v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->e:I

    invoke-static {p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->q(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;I)V

    :goto_2
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->g(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    invoke-static {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->f(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated loaded playList range: collectionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", range["

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "UGCVideoDetailViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Pager;->getTotalCount()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->n(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_6
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    invoke-static {p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->m(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getVideoPlayList$1$a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
