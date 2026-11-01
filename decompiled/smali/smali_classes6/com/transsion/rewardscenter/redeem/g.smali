.class public final synthetic Lcom/transsion/rewardscenter/redeem/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/redeem/SkuItemProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/redeem/SkuItemProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/g;->a:Lcom/transsion/rewardscenter/redeem/SkuItemProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/g;->a:Lcom/transsion/rewardscenter/redeem/SkuItemProvider;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider$redeem$1$1;->a(Lcom/transsion/rewardscenter/redeem/SkuItemProvider;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
