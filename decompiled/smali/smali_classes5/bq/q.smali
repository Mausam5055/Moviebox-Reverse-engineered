.class public final Lbq/q;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

.field public final b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

.field public final c:Lcom/google/android/material/appbar/AppBarLayout;

.field public final d:Lcom/tn/lib/view/RoomCacheAnimationView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field public final g:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

.field public final h:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public final i:Lcom/transsion/baseui/widget/GradientTextView;

.field public final j:Lcom/transsion/room/widget/CommunityRoomsView;

.field public final k:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;Lcom/tn/lib/view/bubbleview/BubbleTextView;Lcom/google/android/material/appbar/AppBarLayout;Lcom/tn/lib/view/RoomCacheAnimationView;Landroidx/appcompat/widget/AppCompatImageView;Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Lcom/transsion/baseui/widget/GradientTextView;Lcom/transsion/room/widget/CommunityRoomsView;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbq/q;->a:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    iput-object p2, p0, Lbq/q;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    iput-object p3, p0, Lbq/q;->c:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p4, p0, Lbq/q;->d:Lcom/tn/lib/view/RoomCacheAnimationView;

    iput-object p5, p0, Lbq/q;->e:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p6, p0, Lbq/q;->f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object p7, p0, Lbq/q;->g:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    iput-object p8, p0, Lbq/q;->h:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p9, p0, Lbq/q;->i:Lcom/transsion/baseui/widget/GradientTextView;

    iput-object p10, p0, Lbq/q;->j:Lcom/transsion/room/widget/CommunityRoomsView;

    iput-object p11, p0, Lbq/q;->k:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static a(Landroid/view/View;)Lbq/q;
    .locals 14

    sget v0, Lcom/transsion/room/R$id;->activity_tip:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tn/lib/view/bubbleview/BubbleTextView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/room/R$id;->appBar:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/room/R$id;->iv_cache:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/tn/lib/view/RoomCacheAnimationView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/room/R$id;->iv_publish:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/room/R$id;->magic_indicator:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v8, :cond_0

    move-object v9, p0

    check-cast v9, Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    sget v0, Lcom/transsion/room/R$id;->toolbar_layout:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/room/R$id;->tv_post:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/transsion/baseui/widget/GradientTextView;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/room/R$id;->v_recommend_rooms:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/transsion/room/widget/CommunityRoomsView;

    if-eqz v12, :cond_0

    sget v0, Lcom/transsion/room/R$id;->view_pager:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v13, :cond_0

    new-instance p0, Lbq/q;

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v13}, Lbq/q;-><init>(Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;Lcom/tn/lib/view/bubbleview/BubbleTextView;Lcom/google/android/material/appbar/AppBarLayout;Lcom/tn/lib/view/RoomCacheAnimationView;Landroidx/appcompat/widget/AppCompatImageView;Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Lcom/transsion/baseui/widget/GradientTextView;Lcom/transsion/room/widget/CommunityRoomsView;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lbq/q;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbq/q;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbq/q;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbq/q;
    .locals 2

    sget v0, Lcom/transsion/room/R$layout;->fragment_room_home:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lbq/q;->a(Landroid/view/View;)Lbq/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;
    .locals 1

    iget-object v0, p0, Lbq/q;->a:Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbq/q;->b()Lcom/transsion/baseui/widget/NestedSwipeRefreshLayout;

    move-result-object v0

    return-object v0
.end method
