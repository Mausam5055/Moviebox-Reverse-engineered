.class public final Lcom/transsion/home/fragment/tab/TvChannelTabFragment;
.super Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/tab/TvChannelTabFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment<",
        "Lgl/b0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/home/fragment/tab/TvChannelTabFragment;",
        "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;",
        "Lgl/b0;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "r0",
        "(Landroid/view/LayoutInflater;)Lgl/b0;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "f0",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "",
        "lastAdPosition",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "wrapperNativeManager",
        "l0",
        "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V",
        "Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;",
        "g",
        "Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;",
        "tvChannelHomeFragment",
        "h",
        "a",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final h:Lcom/transsion/home/fragment/tab/TvChannelTabFragment$a;

.field public static final i:I


# instance fields
.field private g:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/fragment/tab/TvChannelTabFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/tab/TvChannelTabFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/fragment/tab/TvChannelTabFragment;->h:Lcom/transsion/home/fragment/tab/TvChannelTabFragment$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/fragment/tab/TvChannelTabFragment;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public f0()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/tab/TvChannelTabFragment;->r0(Landroid/view/LayoutInflater;)Lgl/b0;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lhj/b;->l(Z)V

    invoke-virtual {p1, p2}, Lhj/b;->m(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/b0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lgl/b0;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->h0()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method public l0(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    const-string p1, "wrapperNativeManager"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public lazyLoadData()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/TvChannelTabFragment;->g:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v1

    sget v2, Lcom/transsion/home/R$id;->fl_container:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "tab_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "tab_code"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    sget-object v1, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->k:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$a;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$a;->c(ILjava/lang/String;)Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TvChannelTabFragment;->g:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    return-void
.end method

.method public r0(Landroid/view/LayoutInflater;)Lgl/b0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lgl/b0;->c(Landroid/view/LayoutInflater;)Lgl/b0;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
