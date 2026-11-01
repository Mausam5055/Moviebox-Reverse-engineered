.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

.field final synthetic f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;Lcom/transsion/shorttv/base/widget/SafeRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;->e:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;->f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;->e:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->S0()Lcom/transsion/shorttv/ui/adapter/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxs/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lxs/a;->b()Lcom/transsion/shorttv/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$f;->f:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lds/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    :goto_2
    return v0
.end method
