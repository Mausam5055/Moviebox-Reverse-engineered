.class public final Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/search/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;->c(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    return-void
.end method

.method private static final c(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->access$setMHistoryList$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Ljava/util/List;)V

    invoke-static {p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->access$getMSearchKeywordAdapter$p(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)Lcom/transsion/search/fragment/group/adapter/b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lrq/d;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lrq/d;->g:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    new-instance v2, Lcom/transsion/search/fragment/group/s;

    invoke-direct {v2, p1, v1}, Lcom/transsion/search/fragment/group/s;-><init>(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
