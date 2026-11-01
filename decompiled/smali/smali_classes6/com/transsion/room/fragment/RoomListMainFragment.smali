.class public final Lcom/transsion/room/fragment/RoomListMainFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/fragment/RoomListMainFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lbq/s;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0018\u0000 )2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001d0%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/room/fragment/RoomListMainFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lbq/s;",
        "<init>",
        "()V",
        "",
        "initViewPager",
        "e0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "f0",
        "(Landroid/view/LayoutInflater;)Lbq/s;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "a",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "vpAdapter",
        "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;",
        "b",
        "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;",
        "commonNavigator",
        "",
        "c",
        "I",
        "selectTabIndex",
        "",
        "d",
        "Z",
        "isSelectRoom",
        "",
        "e",
        "[Ljava/lang/Integer;",
        "tabs",
        "f",
        "Room_psRelease"
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
.field public static final f:Lcom/transsion/room/fragment/RoomListMainFragment$a;


# instance fields
.field private a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

.field private b:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

.field private c:I

.field private d:Z

.field private final e:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/room/fragment/RoomListMainFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/room/fragment/RoomListMainFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/room/fragment/RoomListMainFragment;->f:Lcom/transsion/room/fragment/RoomListMainFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    sget v0, Lcom/transsion/room/R$string;->Your_rooms:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/room/R$string;->Room_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v2, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->e:[Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/room/fragment/RoomListMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/fragment/RoomListMainFragment;->g0(Lcom/transsion/room/fragment/RoomListMainFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b0(Lcom/transsion/room/fragment/RoomListMainFragment;)[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->e:[Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic c0(Lcom/transsion/room/fragment/RoomListMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->d:Z

    return p0
.end method

.method public static final synthetic d0(Lcom/transsion/room/fragment/RoomListMainFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->c:I

    return-void
.end method

.method private final e0()V
    .locals 3

    new-instance v0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/room/fragment/RoomListMainFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/RoomListMainFragment$b;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->setAdapter(Lik/a;)V

    iput-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->b:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbq/s;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->b:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lh00/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/s;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lbq/s;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/room/fragment/RoomListMainFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/RoomListMainFragment$c;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/s;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lbq/s;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method private static final g0(Lcom/transsion/room/fragment/RoomListMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private final initViewPager()V
    .locals 2

    new-instance v0, Lcom/transsion/room/fragment/RoomListMainFragment$d;

    invoke-direct {v0, p0}, Lcom/transsion/room/fragment/RoomListMainFragment$d;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V

    iput-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbq/s;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListMainFragment;->e0()V

    return-void
.end method


# virtual methods
.method public f0(Landroid/view/LayoutInflater;)Lbq/s;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lbq/s;->c(Landroid/view/LayoutInflater;)Lbq/s;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/room/fragment/RoomListMainFragment;->f0(Landroid/view/LayoutInflater;)Lbq/s;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lbq/s;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lbq/s;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->e(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lbq/s;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lbq/s;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/transsion/room/fragment/w1;

    invoke-direct {p2, p0}, Lcom/transsion/room/fragment/w1;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListMainFragment;->initViewPager()V

    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "index"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->c:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "is_select_room"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    iput-boolean v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment;->d:Z

    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    sget-object v0, Lak/x;->a:Lak/x;

    invoke-virtual {v0}, Lak/x;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-void
.end method
