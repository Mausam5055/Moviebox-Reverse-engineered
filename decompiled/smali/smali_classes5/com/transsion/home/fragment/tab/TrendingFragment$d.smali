.class public final Lcom/transsion/home/fragment/tab/TrendingFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingFragment;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->d(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->e(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    return-void
.end method

.method private static final d(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/home/fragment/tab/TrendingFragment;->c0()V

    return-void
.end method

.method private static final e(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/home/fragment/tab/TrendingFragment;->c0()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;FF)V
    .locals 6

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DOWN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    instance-of v5, v4, Lcom/transsion/baseui/activity/BaseActivity;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/transsion/baseui/activity/BaseActivity;

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/baseui/activity/BaseActivity;->hasAd()Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-static {v1, v4}, Lcom/transsion/home/fragment/tab/TrendingFragment;->d1(Lcom/transsion/home/fragment/tab/TrendingFragment;Z)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-static {v1}, Lcom/transsion/home/fragment/tab/TrendingFragment;->T0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/z;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lgl/z;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-static {p2}, Lcom/transsion/home/fragment/tab/TrendingFragment;->W0(Lcom/transsion/home/fragment/tab/TrendingFragment;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-static {p3}, Lcom/transsion/home/fragment/tab/TrendingFragment;->W0(Lcom/transsion/home/fragment/tab/TrendingFragment;)I

    move-result p3

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p1, v3, p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/z;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lgl/z;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    if-eqz p1, :cond_4

    const-string p2, "IDLE"

    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;->setCurrentState(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v4, v1, Lcom/transsion/baseui/activity/BaseActivity;

    if-eqz v4, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/transsion/baseui/activity/BaseActivity;

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2, p1, p2, p3}, Lcom/transsion/baseui/activity/BaseActivity;->onAction(Ljava/lang/String;FF)V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, -0x558e5f9f

    const-wide/16 v1, 0x12c

    const/4 v4, 0x1

    if-eq p2, p3, :cond_e

    const/16 p3, 0xa9b

    if-eq p2, p3, :cond_d

    const p3, 0x201ca2

    if-eq p2, p3, :cond_b

    const p3, 0x6b7e1ebb

    if-eq p2, p3, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string p2, "REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_2

    :cond_9
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/z;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lgl/z;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_a
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/z;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lgl/z;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    if-eqz p1, :cond_11

    iget-object p2, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    new-instance p3, Lcom/transsion/home/fragment/tab/w1;

    invoke-direct {p3, p2}, Lcom/transsion/home/fragment/tab/w1;-><init>(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    invoke-virtual {p1, p3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/z;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lgl/z;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    if-eqz p1, :cond_11

    const/16 p2, -0x258

    invoke-virtual {p1, v3, p2, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    goto :goto_2

    :cond_d
    const-string p2, "UP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    const-string p2, "SECOND_FLOOR"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_2

    :cond_f
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/z;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lgl/z;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_10
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/z;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lgl/z;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    if-eqz p1, :cond_11

    iget-object p2, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$d;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    new-instance p3, Lcom/transsion/home/fragment/tab/x1;

    invoke-direct {p3, p2}, Lcom/transsion/home/fragment/tab/x1;-><init>(Lcom/transsion/home/fragment/tab/TrendingFragment;)V

    invoke-virtual {p1, p3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_2
    return-void
.end method
