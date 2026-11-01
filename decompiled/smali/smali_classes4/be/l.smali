.class public abstract Lbe/l;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg7/a;->c()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "https://api.test.hisavana.com/isavana/trafficdispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlData"

    return-object v0

    :cond_0
    const-string v0, "https://api.fat1.hisavana.com/isavana/trafficdispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlData"

    return-object v0

    :cond_1
    const-string v0, "https://api-fat0101.eagllwin.com/isavana/trafficdispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlData"

    return-object v0

    :cond_2
    const-string v0, "https://cc-api.hisavana.com/isavana/trafficdispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlData"

    return-object v0
.end method
