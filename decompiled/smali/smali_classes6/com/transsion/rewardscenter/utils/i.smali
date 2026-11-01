.class public final synthetic Lcom/transsion/rewardscenter/utils/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/transsion/rewardscenter/utils/RewardsCenterApiHelper;->g(Lorg/json/JSONObject;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
