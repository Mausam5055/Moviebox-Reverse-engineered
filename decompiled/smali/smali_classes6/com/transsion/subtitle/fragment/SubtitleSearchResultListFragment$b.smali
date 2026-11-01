.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->initViewData(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$b;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$b;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    invoke-static {p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->u0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    :cond_0
    return-void
.end method
