.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$h;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$h;->b:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

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

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$h;->b:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-virtual {p1}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lms/x;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lms/x;->b:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$h;->b:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->B0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->y0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;Z)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$h;->b:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->y1(Z)V

    iput p2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$h;->a:I

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$h;->b:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-static {p1, p3}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->E0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;I)V

    return-void
.end method
