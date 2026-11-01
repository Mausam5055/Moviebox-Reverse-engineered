.class public final Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lbq/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lbq/d;",
        "<init>",
        "()V",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "tab",
        "",
        "isSelected",
        "",
        "k0",
        "(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V",
        "h0",
        "()Lbq/d;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/os/Bundle;)V",
        "isTranslucent",
        "()Z",
        "isStatusDark",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->j0(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/room/sub/adapter/likes/b;Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->i0(Lcom/transsion/room/sub/adapter/likes/b;Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static final synthetic g0(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->k0(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method private static final i0(Lcom/transsion/room/sub/adapter/likes/b;Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/transsion/room/sub/adapter/likes/b;->h(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    if-nez p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {p1, p2, p0}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->k0(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method private static final j0(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    return-void
.end method

.method private final k0(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    sget v0, Lcom/transsion/room/R$id;->tv_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p2, :cond_3

    sget v0, Lcom/tn/lib/widget/R$style;->style_import_text:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/tn/lib/widget/R$style;->style_regular_text:I

    :goto_1
    invoke-static {p1, v0}, Landroidx/core/widget/m;->q(Landroid/widget/TextView;I)V

    if-eqz p2, :cond_4

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_2

    :cond_4
    const/high16 v0, 0x41600000    # 14.0f

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p2, :cond_5

    sget p2, Lcom/tn/lib/widget/R$color;->white:I

    goto :goto_3

    :cond_5
    sget p2, Lcom/tn/lib/widget/R$color;->white_80:I

    :goto_3
    invoke-static {p0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->h0()Lbq/d;

    move-result-object v0

    return-object v0
.end method

.method public h0()Lbq/d;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lbq/d;->c(Landroid/view/LayoutInflater;)Lbq/d;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/room/sub/adapter/likes/b;

    invoke-direct {p1, p0}, Lcom/transsion/room/sub/adapter/likes/b;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/d;

    iget-object v0, v0, Lbq/d;->h:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lbq/d;

    iget-object v0, v0, Lbq/d;->f:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "tabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lbq/d;

    iget-object v1, v1, Lbq/d;->h:Landroidx/viewpager2/widget/ViewPager2;

    const-string v2, "viewPager2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v3, Lgq/a;

    invoke-direct {v3, p1, p0}, Lgq/a;-><init>(Lcom/transsion/room/sub/adapter/likes/b;Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lbq/d;

    iget-object v2, v2, Lbq/d;->d:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lgq/b;

    invoke-direct {v3, p0}, Lgq/b;-><init>(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    sget v2, Lcom/transsion/room/R$string;->play_hub:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/transsion/room/R$string;->buzz_box:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    const-string v5, "newTab(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/transsion/room/R$layout;->ugc_likes_item_tab_custom:I

    invoke-virtual {v5, v6, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/transsion/room/R$id;->tv_tab_title:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->k0(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lbq/d;

    iget-object p1, p1, Lbq/d;->f:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;-><init>(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    :cond_2
    return-void
.end method

.method public isStatusDark()Z
    .locals 1

    sget-object v0, Lak/x;->a:Lak/x;

    invoke-virtual {v0}, Lak/x;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
