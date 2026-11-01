.class public final Lcom/transsion/rewardscenter/prize/PrizeListView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/rewardscenter/prize/PrizeListView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "j",
        "()V",
        "Lwp/a;",
        "config",
        "setCtxConfig",
        "(Lwp/a;)V",
        "Lcom/transsion/rewardscenterapi/UserPrize;",
        "userPrize",
        "setData",
        "(Lcom/transsion/rewardscenterapi/UserPrize;)V",
        "",
        "drawResultId",
        "markTopUp",
        "(Ljava/lang/String;)V",
        "markClaimed",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "a",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Lcom/transsion/rewardscenter/prize/g;",
        "b",
        "Lcom/transsion/rewardscenter/prize/g;",
        "adapter",
        "RewardsCenter_psRelease"
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
.field public static final $stable:I = 0x8


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lcom/transsion/rewardscenter/prize/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/rewardscenter/prize/PrizeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/rewardscenter/prize/PrizeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance p1, Lcom/transsion/rewardscenter/prize/g$b;

    const/4 p3, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p3, v0}, Lcom/transsion/rewardscenter/prize/g$b;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    invoke-virtual {p2, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    iput-object p2, p0, Lcom/transsion/rewardscenter/prize/PrizeListView;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p3, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/prize/PrizeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/rewardscenter/prize/PrizeListView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/rewardscenter/prize/PrizeListView;->k(Lcom/transsion/rewardscenter/prize/PrizeListView;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/rewardscenter/prize/PrizeListView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/rewardscenter/prize/PrizeListView;->l(Lcom/transsion/rewardscenter/prize/PrizeListView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final j()V
    .locals 1

    new-instance v0, Lcom/transsion/rewardscenter/prize/i;

    invoke-direct {v0, p0}, Lcom/transsion/rewardscenter/prize/i;-><init>(Lcom/transsion/rewardscenter/prize/PrizeListView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final k(Lcom/transsion/rewardscenter/prize/PrizeListView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    sub-int/2addr p0, v1

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return-void

    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final l(Lcom/transsion/rewardscenter/prize/PrizeListView;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/rewardscenter/prize/PrizeListView;->j()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final markClaimed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "drawResultId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/rewardscenter/prize/PrizeListView;->b:Lcom/transsion/rewardscenter/prize/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/rewardscenter/prize/g;->T1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final markTopUp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "drawResultId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/rewardscenter/prize/PrizeListView;->b:Lcom/transsion/rewardscenter/prize/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/rewardscenter/prize/g;->U1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setCtxConfig(Lwp/a;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/rewardscenter/prize/g;

    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/prize/g;-><init>(Lwp/a;)V

    new-instance p1, Lcom/transsion/rewardscenter/prize/h;

    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/prize/h;-><init>(Lcom/transsion/rewardscenter/prize/PrizeListView;)V

    invoke-virtual {v0, p1}, Lcom/transsion/rewardscenter/prize/g;->X1(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/transsion/rewardscenter/prize/PrizeListView;->b:Lcom/transsion/rewardscenter/prize/g;

    iget-object p1, p0, Lcom/transsion/rewardscenter/prize/PrizeListView;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public final setData(Lcom/transsion/rewardscenterapi/UserPrize;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/prize/PrizeListView;->b:Lcom/transsion/rewardscenter/prize/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/rewardscenter/prize/g;->W1(Lcom/transsion/rewardscenterapi/UserPrize;)V

    :cond_0
    return-void
.end method
