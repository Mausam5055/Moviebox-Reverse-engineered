.class public final Lcom/transsion/rewardscenter/task/member/j;
.super Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lwp/a;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;-><init>(Lwp/a;)V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/rewardscenterapi/MemberTaskItem;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getDurationCondition()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lxm/k;->a:Lxm/k;

    invoke-virtual {v2}, Lxm/k;->H()I

    move-result v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getStatus()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    if-lt v2, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_2
    return v0
.end method

.method public G()V
    .locals 1

    sget-object v0, Lxm/k;->a:Lxm/k;

    invoke-virtual {v0}, Lxm/k;->w()V

    return-void
.end method

.method public K(Landroid/widget/TextView;Lcom/transsion/rewardscenterapi/MemberTaskItem;)V
    .locals 6

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getJumpUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getJumpUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    :goto_0
    move-object v2, p1

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "oneroom://com.community.oneroom?type=/commercial/gamecenter&fromTask=true"

    goto :goto_0

    :goto_2
    sget-object v0, Lzj/b;->a:Lzj/b;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lzj/b;->d(Lzj/b;Landroid/content/Context;Ljava/lang/String;Lzj/c;ILjava/lang/Object;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/rewardscenterapi/TaskType;->PLAY_GAME:Lcom/transsion/rewardscenterapi/TaskType;

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    move-result v0

    return v0
.end method
