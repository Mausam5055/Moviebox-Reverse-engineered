.class public final synthetic Lcom/transsion/rewardscenter/redeem/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/redeem/SkuItemProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/redeem/SkuItemProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/h;->a:Lcom/transsion/rewardscenter/redeem/SkuItemProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/h;->a:Lcom/transsion/rewardscenter/redeem/SkuItemProvider;

    check-cast p1, Lcom/transsion/rewardscenterapi/RedeemProductResult;

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider$redeem$1$1;->d(Lcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenterapi/RedeemProductResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
