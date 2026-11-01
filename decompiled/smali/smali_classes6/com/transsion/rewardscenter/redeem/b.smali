.class public final synthetic Lcom/transsion/rewardscenter/redeem/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/b;->a:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/b;->a:Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;->a(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
