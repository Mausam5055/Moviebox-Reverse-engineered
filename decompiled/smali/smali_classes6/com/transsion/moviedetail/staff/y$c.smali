.class public final Lcom/transsion/moviedetail/staff/y$c;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/staff/y;->q(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/moviedetail/staff/y;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/staff/y;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->h(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->c(Lcom/transsion/moviedetail/staff/y;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->c(Lcom/transsion/moviedetail/staff/y;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/staff/y$c;->e(Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;)V

    return-void
.end method

.method public e(Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;)V
    .locals 2

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;->getPager()Lcom/transsion/postdetail/bean/Pager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/transsion/moviedetail/staff/y;->l(Lcom/transsion/moviedetail/staff/y;Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->h(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->g(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->g(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->j(Lcom/transsion/moviedetail/staff/y;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/staff/y;->m(Lcom/transsion/moviedetail/staff/y;I)V

    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->c(Lcom/transsion/moviedetail/staff/y;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->c(Lcom/transsion/moviedetail/staff/y;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_3
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lsg/a;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/staff/y;->k(Lcom/transsion/moviedetail/staff/y;Lio/reactivex/rxjava3/disposables/c;)V

    return-void
.end method
