.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->a:Z

    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/shorttv/bean/ShortTVRespData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->a:Z

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/bean/ShortTVRespData;->setRefresh(Z)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i0()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVRespData;->getItems()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i0()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/bean/OperatingResp;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->c:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVRespData;->getItems()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->c:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/shorttv/bean/ShortTVRespData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTVFavoriteList$1$a;->a(Lcom/transsion/shorttv/bean/ShortTVRespData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
