.class public final Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

.field final synthetic d:Lms/s;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lms/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->c:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->d:Lms/s;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->e:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->c:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->u0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->d:Lms/s;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->c:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v3

    iget v4, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->a:I

    if-eq v3, v4, :cond_1

    iput v3, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->a:I

    div-int/lit8 v3, v3, 0x19

    iget v4, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->b:I

    if-eq v3, v4, :cond_1

    iget-object v4, v0, Lms/s;->e:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->x0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object v4, v0, Lms/s;->e:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_0
    iget-object v0, v0, Lms/s;->e:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->x0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iput v3, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$c;->b:I

    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->s0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/adapter/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljs/e;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljs/e;->c()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->y0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object v0

    invoke-virtual {p2}, Ljs/e;->c()I

    move-result p2

    invoke-virtual {v0, v2, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    :cond_2
    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->s0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/adapter/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljs/e;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljs/e;->c()I

    move-result p2

    if-lez p2, :cond_3

    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->y0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object p2

    invoke-virtual {p1}, Ljs/e;->c()I

    move-result p1

    invoke-virtual {p2, v2, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
