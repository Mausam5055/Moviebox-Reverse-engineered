.class public final synthetic Lcom/transsion/rewardscenter/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/utils/l;->a:Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/utils/l;->a:Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->d(Lcom/transsion/rewardscenterapi/ClaimReceiverRequest;Lorg/json/JSONObject;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
