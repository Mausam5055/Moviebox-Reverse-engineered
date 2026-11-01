.class public final synthetic Lcom/transsion/rewardscenter/task/ad/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/v;

.field public final synthetic b:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/c;->a:Lcom/transsion/rewardscenter/task/ad/v;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/c;->b:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    iput-object p3, p0, Lcom/transsion/rewardscenter/task/ad/c;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/c;->a:Lcom/transsion/rewardscenter/task/ad/v;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/c;->b:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    iget-object v2, p0, Lcom/transsion/rewardscenter/task/ad/c;->c:Lkotlin/jvm/functions/Function0;

    check-cast p1, Lcom/transsion/rewardscenterapi/TaskRewards;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$startClaim$1$1;->a(Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;Lkotlin/jvm/functions/Function0;Lcom/transsion/rewardscenterapi/TaskRewards;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
