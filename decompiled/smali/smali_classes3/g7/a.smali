.class public Lg7/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lg7/a;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lg7/a;->c()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://minproject.test.sunnbird.com/close-report/index.html"

    return-object v0

    :cond_0
    const-string v0, "https://minproject.sunnbird.com/close-report/index.html"

    return-object v0
.end method

.method public static c()I
    .locals 1

    sget v0, Lg7/a;->a:I

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "/hisavana/traffic-dispatch/v1/consumer-not-login/cloudcontrol/query/getCloudControlDataOffline"

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg7/a;->c()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "https://api.test.hisavana.com"

    return-object v0

    :cond_0
    const-string v0, "https://api.fat1.hisavana.com"

    return-object v0

    :cond_1
    const-string v0, "https://easymock.tmctool.com/mockurl/66f0d16c89ca3154e5a973ea"

    return-object v0

    :cond_2
    const-string v0, "https://api-fat0101.eagllwin.com"

    return-object v0

    :cond_3
    const-string v0, "https://cc-api.hisavana.com"

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lg7/a;->c()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://dcdn-api.hisavana.com"

    return-object v0

    :cond_0
    const-string v0, "https://dcdn-api.test.hisavana.com"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lg7/a;->c()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/Z;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/Z;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg7/a;->c()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "https://api.test.eagllwin.com"

    return-object v0

    :cond_0
    const-string v0, "https://api.fat1.eagllwin.com"

    return-object v0

    :cond_1
    const-string v0, "https://api.eagllwin.com"

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    const-string v0, "/hisavana/traffic-dispatch/v1/consumer-not-login/addispatch/query/getAdData"

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg7/a;->c()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "https://api.test.hisavana.com"

    return-object v0

    :cond_0
    const-string v0, "https://api.fat1.hisavana.com"

    return-object v0

    :cond_1
    const-string v0, "https://easymock.tmctool.com/mockurl/66f0d16c89ca3154e5a973ea"

    return-object v0

    :cond_2
    const-string v0, "https://api-fat0101.eagllwin.com"

    return-object v0

    :cond_3
    const-string v0, "https://api.hisavana.com"

    return-object v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lg7/a;->b:Z

    return v0
.end method
