.class public final synthetic Lcom/transsion/rewardscenter/redeem/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/c;->a:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/c;->a:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    check-cast p1, Lcom/transsion/rewardscenterapi/RedeemLotteryResult;

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->d(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenterapi/RedeemLotteryResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
