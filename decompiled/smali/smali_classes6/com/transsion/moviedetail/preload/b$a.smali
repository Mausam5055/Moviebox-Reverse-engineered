.class public final Lcom/transsion/moviedetail/preload/b$a;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/preload/b;->h(Landroidx/lifecycle/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/moviedetail/preload/b;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/preload/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/b$a;->d:Lcom/transsion/moviedetail/preload/b;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/moviedetail/preload/b$a;->d:Lcom/transsion/moviedetail/preload/b;

    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lqm/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/preload/b$a;->e(Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-void
.end method

.method public e(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/moviedetail/preload/b$a;->d:Lcom/transsion/moviedetail/preload/b;

    invoke-virtual {v0}, Lcom/transsion/moviedetail/preload/b;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/Subject;->setRefreshViewOnly(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/preload/b$a;->d:Lcom/transsion/moviedetail/preload/b;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "0"

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lqm/b;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lsg/a;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/preload/b$a;->d:Lcom/transsion/moviedetail/preload/b;

    invoke-virtual {v0, p1}, Lqm/b;->i(Lio/reactivex/rxjava3/disposables/c;)V

    return-void
.end method
