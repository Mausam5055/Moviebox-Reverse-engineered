.class public final synthetic Lcom/transsion/rewardscenter/task/member/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/member/c;->a:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/member/c;->a:Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;

    check-cast p1, Lcom/transsion/rewardscenterapi/TaskRewards;

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider$startClaim$1;->a(Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
