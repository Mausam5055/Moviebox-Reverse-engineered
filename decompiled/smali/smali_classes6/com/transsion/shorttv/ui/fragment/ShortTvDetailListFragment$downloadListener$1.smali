.class public final Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Lqs/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->z0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->y0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lqs/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lqs/d;->l(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->w0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv/ui/adapter/g;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljs/k;

    instance-of v3, v2, Ljs/e;

    if-eqz v3, :cond_2

    check-cast v2, Ljs/e;

    invoke-virtual {v2}, Ljs/e;->c()I

    move-result v2

    if-ne v2, p2, :cond_2

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    check-cast v1, Ljs/k;

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    check-cast v1, Ljs/e;

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-static {v1}, Ljs/l;->a(Ljs/e;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->y0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j0()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljs/e;->c()I

    move-result v2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_6

    :goto_2
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    new-instance v6, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;

    invoke-direct {v6, v1, p1, v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;-><init>(Ljs/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_6
    return-void
.end method
