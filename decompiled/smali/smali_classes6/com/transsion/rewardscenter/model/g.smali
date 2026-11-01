.class public final synthetic Lcom/transsion/rewardscenter/model/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/g;->a:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    iput-object p2, p0, Lcom/transsion/rewardscenter/model/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/g;->a:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    iget-object v1, p0, Lcom/transsion/rewardscenter/model/g;->b:Ljava/lang/String;

    check-cast p1, Lcom/transsion/rewardscenterapi/ClaimResultData;

    invoke-static {v0, v1, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;->d(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lcom/transsion/rewardscenterapi/ClaimResultData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
