.class public final Lcom/transsion/usercenter/FollowActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/FollowActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lfw/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0015\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/usercenter/FollowActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lfw/c;",
        "<init>",
        "()V",
        "",
        "l0",
        "o0",
        "s0",
        "q0",
        "",
        "",
        "j0",
        "()Ljava/util/List;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "k0",
        "()Lfw/c;",
        "",
        "isTranslucent",
        "()Z",
        "",
        "a",
        "I",
        "followType",
        "Lcom/transsion/usercenter/g;",
        "b",
        "Lcom/transsion/usercenter/g;",
        "followAdapter",
        "c",
        "UserCenter_psRelease"
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
.field public static final c:Lcom/transsion/usercenter/FollowActivity$a;


# instance fields
.field private a:I

.field private b:Lcom/transsion/usercenter/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/FollowActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/FollowActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/FollowActivity;->c:Lcom/transsion/usercenter/FollowActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/usercenter/FollowActivity;->a:I

    return-void
.end method

.method public static synthetic e0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/FollowActivity;->m0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/usercenter/FollowActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/FollowActivity;->n0(Lcom/transsion/usercenter/FollowActivity;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/usercenter/FollowActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/FollowActivity;->t0(Lcom/transsion/usercenter/FollowActivity;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/usercenter/FollowActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/FollowActivity;->p0(Lcom/transsion/usercenter/FollowActivity;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/usercenter/FollowActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/FollowActivity;->r0(Lcom/transsion/usercenter/FollowActivity;)V

    return-void
.end method

.method private final j0()Ljava/util/List;
    .locals 5

    const-string v0, "D"

    const-string v1, "E"

    const-string v2, "A"

    const-string v3, "B"

    const-string v4, "C"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final l0()V
    .locals 4

    new-instance v0, Lcom/transsion/usercenter/g;

    iget v1, p0, Lcom/transsion/usercenter/FollowActivity;->a:I

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/g;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/c;

    iget-object v0, v0, Lfw/c;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    const/4 v2, 0x0

    const-string v3, "followAdapter"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/c;

    iget-object v0, v0, Lfw/c;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v1, Lcom/transsion/usercenter/R$id;->btnFollow:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/transsion/usercenter/b;

    invoke-direct {v0}, Lcom/transsion/usercenter/b;-><init>()V

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lp6/b;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/c;

    iget-object v0, v0, Lfw/c;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/transsion/usercenter/c;

    invoke-direct {v1, p0}, Lcom/transsion/usercenter/c;-><init>(Lcom/transsion/usercenter/FollowActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    invoke-direct {p0}, Lcom/transsion/usercenter/FollowActivity;->o0()V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/c;

    iget-object v0, v0, Lfw/c;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    invoke-direct {p0}, Lcom/transsion/usercenter/FollowActivity;->q0()V

    return-void
.end method

.method private static final m0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u70b9\u51fb\u4e86\u7b2c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u4e2a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final n0(Lcom/transsion/usercenter/FollowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/FollowActivity;->q0()V

    return-void
.end method

.method private final o0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    const/4 v1, 0x0

    const-string v2, "followAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lr6/f;->z(Z)V

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lr6/f;->y(Z)V

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lr6/f;->B(Z)V

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lr6/f;->A(Z)V

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    invoke-virtual {v0}, Lr6/f;->r()Z

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lr6/f;->E(I)V

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    new-instance v1, Lcom/transsion/usercenter/e;

    invoke-direct {v1, p0}, Lcom/transsion/usercenter/e;-><init>(Lcom/transsion/usercenter/FollowActivity;)V

    invoke-virtual {v0, v1}, Lr6/f;->D(Lp6/f;)V

    return-void
.end method

.method private static final p0(Lcom/transsion/usercenter/FollowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/FollowActivity;->s0()V

    return-void
.end method

.method private final q0()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/c;

    invoke-virtual {v0}, Lfw/c;->b()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    new-instance v1, Lcom/transsion/usercenter/d;

    invoke-direct {v1, p0}, Lcom/transsion/usercenter/d;-><init>(Lcom/transsion/usercenter/FollowActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/FollowActivity;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/c;

    iget-object v0, v0, Lfw/c;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_0

    const-string v0, "followAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/FollowActivity;->j0()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    return-void
.end method

.method private final s0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    const/4 v1, 0x0

    const-string v2, "followAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr6/f;->t(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/c;

    invoke-virtual {v0}, Lfw/c;->b()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    new-instance v1, Lcom/transsion/usercenter/f;

    invoke-direct {v1, p0}, Lcom/transsion/usercenter/f;-><init>(Lcom/transsion/usercenter/FollowActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final t0(Lcom/transsion/usercenter/FollowActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    const/4 v1, 0x0

    const-string v2, "followAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/usercenter/FollowActivity;->j0()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/transsion/usercenter/FollowActivity;->b:Lcom/transsion/usercenter/g;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    invoke-virtual {p0}, Lr6/f;->s()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/usercenter/FollowActivity;->k0()Lfw/c;

    move-result-object v0

    return-object v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k0()Lfw/c;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lfw/c;->c(Landroid/view/LayoutInflater;)Lfw/c;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "follow_type_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/usercenter/FollowActivity;->a:I

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/c;

    invoke-virtual {p1}, Lfw/c;->b()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p1

    const-string v0, "getRoot(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->e(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/c;

    iget-object p1, p1, Lfw/c;->d:Lcom/tn/lib/view/TitleLayout;

    invoke-virtual {p1}, Lcom/tn/lib/view/TitleLayout;->goneRightViewLayout()V

    iget v0, p0, Lcom/transsion/usercenter/FollowActivity;->a:I

    const-string v2, "getString(...)"

    if-ne v0, v1, :cond_0

    sget v0, Lcom/transsion/usercenter/R$string;->user_center_follow_following:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/usercenter/R$string;->user_center_follow_followers:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    :goto_0
    invoke-direct {p0}, Lcom/transsion/usercenter/FollowActivity;->l0()V

    return-void
.end method
