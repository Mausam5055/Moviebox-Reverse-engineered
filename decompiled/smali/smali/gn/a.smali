.class public Lgn/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/moviedetailapi/IMovieDetailService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/therouter/router/RouteItem;Lbg/b;)V
    .locals 1

    const-string v0, "routeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/moviedetail/preload/g;->a:Lcom/transsion/moviedetail/preload/g$a;

    invoke-virtual {v0}, Lcom/transsion/moviedetail/preload/g$a;->a()Lcom/transsion/moviedetail/preload/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lqm/a;->a(Lcom/therouter/router/RouteItem;Lbg/b;)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/moviedetail/activity/SubjectListActivity;->m:Lcom/transsion/moviedetail/activity/SubjectListActivity$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/moviedetail/activity/SubjectListActivity$a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    invoke-virtual {p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->refresh()V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/transsion/moviedetail/activity/MovieDetailActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/os/Bundle;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->Companion:Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;->a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    move-result-object p1

    return-object p1
.end method
