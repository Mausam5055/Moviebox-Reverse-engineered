.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

.field final synthetic e:Z

.field final synthetic f:Lcom/transsion/moviedetailapi/bean/Pager;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;ZLcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    iput p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->b:I

    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->c:Z

    iput-object p4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    iput-boolean p5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->e:Z

    iput-object p6, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->f:Lcom/transsion/moviedetailapi/bean/Pager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;->getItems()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->e(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->b:I

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-boolean v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->c:Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchPlayInfoList,isCollectionList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", startPos:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", endPos:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "UGCImmVideoDetailViewModel"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->c:Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    new-instance v5, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-direct {v5, v2, v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getDownloadStatus()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v5, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setDownloadStatus(I)V

    invoke-virtual {v5, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setCollectionList(Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-static {p1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->y0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    new-instance p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->e:Z

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->f:Lcom/transsion/moviedetailapi/bean/Pager;

    invoke-direct {p2, v1, v0, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;-><init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V

    :goto_6
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->c:Z

    if-eqz p1, :cond_8

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    iget-boolean p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->e:Z

    invoke-virtual {p1, v1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->E0(Ljava/util/List;Z)V

    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
