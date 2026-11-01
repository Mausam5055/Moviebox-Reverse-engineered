.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1$a;->a:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/shorttv/bean/OperatingResp;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1---Operating \u63a5\u53e3\u8fd4\u56de opsSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cversion\uff1a"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTvViewModel"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getBanners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1$a;->a:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->r(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, p2

    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, p2

    :goto_4
    const-string v2, "key_short_tv_operation_version"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1$a;->a:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/OperatingResp;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1$a;->a:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1$a;->a:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->c0()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/ShortTVRespData;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVRespData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/OperatingResp;->getOps()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    move-object v2, p2

    :goto_7
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    iget-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1$a;->a:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->i0()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/shorttv/bean/OperatingResp;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getOperatingList$1$a;->a(Lcom/transsion/shorttv/bean/OperatingResp;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
