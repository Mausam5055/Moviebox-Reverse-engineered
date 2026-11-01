.class public final synthetic Lcom/transsion/rewardscenter/model/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/b;->a:Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/b;->a:Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;

    check-cast p1, Lcom/transsion/rewardscenterapi/ClaimResultData;

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/model/ClaimRewardViewModel$claim$1;->d(Lcom/transsion/rewardscenter/model/ClaimRewardViewModel;Lcom/transsion/rewardscenterapi/ClaimResultData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
