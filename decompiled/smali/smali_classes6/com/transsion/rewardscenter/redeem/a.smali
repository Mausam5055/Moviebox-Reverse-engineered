.class public final synthetic Lcom/transsion/rewardscenter/redeem/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

.field public final synthetic c:Lcom/transsion/rewardscenter/redeem/e;

.field public final synthetic d:Lcom/transsion/rewardscenterapi/LotteryPrize;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/rewardscenter/redeem/a;->a:Z

    iput-object p2, p0, Lcom/transsion/rewardscenter/redeem/a;->b:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    iput-object p3, p0, Lcom/transsion/rewardscenter/redeem/a;->c:Lcom/transsion/rewardscenter/redeem/e;

    iput-object p4, p0, Lcom/transsion/rewardscenter/redeem/a;->d:Lcom/transsion/rewardscenterapi/LotteryPrize;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/rewardscenter/redeem/a;->a:Z

    iget-object v1, p0, Lcom/transsion/rewardscenter/redeem/a;->b:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    iget-object v2, p0, Lcom/transsion/rewardscenter/redeem/a;->c:Lcom/transsion/rewardscenter/redeem/e;

    iget-object v3, p0, Lcom/transsion/rewardscenter/redeem/a;->d:Lcom/transsion/rewardscenterapi/LotteryPrize;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->y(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
