.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$c;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 p1, p1, 0x18

    div-int/lit8 p1, p1, 0x19

    iget-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$c;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

    invoke-static {p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;->d1(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;)I

    move-result p2

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment$c;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;

    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lpy/f0;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lpy/f0;->t:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_3
    return-void
.end method
