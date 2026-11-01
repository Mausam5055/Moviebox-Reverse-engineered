.class public final Lcom/transsion/home/fragment/tab/TopRoomFragment;
.super Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment<",
        "Lgl/w;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/home/fragment/tab/TopRoomFragment;",
        "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;",
        "Lgl/w;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "r0",
        "(Landroid/view/LayoutInflater;)Lgl/w;",
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
        "Lcom/transsion/room/fragment/RoomHomeFragment;",
        "g",
        "Lcom/transsion/room/fragment/RoomHomeFragment;",
        "roomHomeFragment",
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


# instance fields
.field private g:Lcom/transsion/room/fragment/RoomHomeFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/tab/TopRoomFragment;->r0(Landroid/view/LayoutInflater;)Lgl/w;

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

    check-cast p1, Lgl/w;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lgl/w;->c:Landroid/view/View;

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

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/TopRoomFragment;->g:Lcom/transsion/room/fragment/RoomHomeFragment;

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
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/transsion/room/fragment/RoomHomeFragment;->r:Lcom/transsion/room/fragment/RoomHomeFragment$a;

    sget-object v1, Lcom/transsion/room/api/RoomHomeParentType;->TOP_TAB:Lcom/transsion/room/api/RoomHomeParentType;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/room/fragment/RoomHomeFragment$a;->b(Lcom/transsion/room/fragment/RoomHomeFragment$a;Lcom/transsion/room/api/RoomHomeParentType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/room/fragment/RoomHomeFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TopRoomFragment;->g:Lcom/transsion/room/fragment/RoomHomeFragment;

    return-void
.end method

.method public r0(Landroid/view/LayoutInflater;)Lgl/w;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lgl/w;->c(Landroid/view/LayoutInflater;)Lgl/w;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
