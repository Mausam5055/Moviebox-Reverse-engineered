.class public final Lcom/transsion/rewardscenter/task/ad/p;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

.field private f:Z

.field private final g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->REWARD_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->g:I

    sget p1, Lcom/transsion/rewardscenter/R$layout;->member_task_reward_layout:I

    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->h:I

    return-void
.end method

.method private static final B(Lcom/transsion/rewardscenter/task/ad/p;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/p;->D(Z)V

    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/p;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/transsion/rewardscenter/task/ad/o;

    invoke-direct {p1}, Lcom/transsion/rewardscenter/task/ad/o;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->Y(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private static final C(Z)Lkotlin/Unit;
    .locals 0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final D(Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "member_ad_task_reward"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MemberAdTask"

    if-eqz p1, :cond_0

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p1, v1, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method static synthetic E(Lcom/transsion/rewardscenter/task/ad/p;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/p;->D(Z)V

    return-void
.end method

.method public static synthetic y(Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/rewardscenter/task/ad/p;->C(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/rewardscenter/task/ad/p;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/task/ad/p;->B(Lcom/transsion/rewardscenter/task/ad/p;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p2, Lcom/transsion/rewardscenter/task/ad/v$b;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget p2, Lcom/transsion/rewardscenter/R$id;->reward_action:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/transsion/rewardscenter/task/ad/n;

    invoke-direct {p2, p0}, Lcom/transsion/rewardscenter/task/ad/n;-><init>(Lcom/transsion/rewardscenter/task/ad/p;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->f:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->f:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/transsion/rewardscenter/task/ad/p;->E(Lcom/transsion/rewardscenter/task/ad/p;ZILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/rewardscenter/task/ad/v;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/p;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/p;->g:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/p;->h:I

    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/p;->m()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
