.class public final Lcom/transsion/rewardscenter/task/ad/d;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/task/ad/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsion/rewardscenter/task/ad/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J%\u0010\u000b\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/rewardscenter/task/ad/d;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/rewardscenter/task/ad/v;",
        "Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;",
        "adHelper",
        "<init>",
        "(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V",
        "",
        "data",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "a",
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
.field public static final G:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/r;

    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/ad/r;-><init>(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/s;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/s;-><init>()V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/m;

    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/ad/m;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/p;

    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/ad/p;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method protected N1(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/rewardscenter/task/ad/v;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v;

    instance-of p2, p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->STAGE_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    move-result p1

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    if-eqz p2, :cond_1

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->REGULAR_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    move-result p1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/transsion/rewardscenter/task/ad/v$b;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->REWARD_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    move-result p1

    :goto_0
    return p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
