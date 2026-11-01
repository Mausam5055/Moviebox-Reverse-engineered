.class public final Lcom/transsion/rewardscenter/task/ad/r;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

.field private f:Z

.field private final g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->STAGE_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->g:I

    sget p1, Lcom/transsion/rewardscenter/R$layout;->member_task_stage_item_layout:I

    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->h:I

    return-void
.end method

.method private static final A(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/v$c;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/r;->B(Lcom/transsion/rewardscenter/task/ad/v$c;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final B(Lcom/transsion/rewardscenter/task/ad/v$c;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "member_ad_task_stage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ad_state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string v1, "MemberAdTask"

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final C()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "member_ad_task_stage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "MemberAdTask"

    invoke-virtual {v1, v2, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/v$c;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/r;->A(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/v$c;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/rewardscenter/task/ad/v;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/r;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/r;->g:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/r;->h:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/transsion/rewardscenter/task/ad/v$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type com.transsion.rewardscenter.task.ad.StageTaskAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/r;->e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;->setAdHelper(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)V

    move-object v0, p2

    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$c;

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;->setData(Lcom/transsion/rewardscenter/task/ad/v$c;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/q;

    invoke-direct {v0, p0, p2}, Lcom/transsion/rewardscenter/task/ad/q;-><init>(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;)V

    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;->setClickCallback(Lkotlin/jvm/functions/Function1;)V

    iget-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->f:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->f:Z

    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/r;->C()V

    :cond_1
    return-void
.end method
