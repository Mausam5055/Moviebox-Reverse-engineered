.class public final Lcom/transsion/search/fragment/hot/SearchHotFragment$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/search/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/hot/SearchHotFragment;->loadHistoryData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/hot/SearchHotFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;->c(Ljava/util/List;Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    return-void
.end method

.method private static final c(Ljava/util/List;Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->access$setMHistoryList$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    invoke-static {p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->access$showHistoryList(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/c;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lrq/c;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    new-instance v2, Luq/n;

    invoke-direct {v2, p1, v1}, Luq/n;-><init>(Ljava/util/List;Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
