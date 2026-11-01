.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

.field final synthetic f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;Lcom/transsion/shorttv/base/widget/SafeRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->F0()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->F0()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->F0()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    sub-int/2addr p1, v3

    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/bean/Subject;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    move v1, v0

    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$d;->f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "getContext(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lht/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    :goto_3
    return v0
.end method
