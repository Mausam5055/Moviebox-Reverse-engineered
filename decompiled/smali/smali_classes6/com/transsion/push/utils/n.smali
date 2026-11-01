.class public final Lcom/transsion/push/utils/n;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/transsion/core/utils/d;->c()I

    move-result v0

    const/16 v1, -0x65

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    const-string v2, ""

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "4G"

    goto :goto_0

    :cond_1
    const-string v2, "3G"

    goto :goto_0

    :cond_2
    const-string v2, "2G"

    goto :goto_0

    :cond_3
    const-string v2, "wifi"

    :cond_4
    :goto_0
    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/transsion/push/utils/n;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "no_network"

    return-object v0

    :cond_1
    const-string v0, "mobile"

    return-object v0
.end method

.method public static c()Z
    .locals 2

    const-string v0, "wifi"

    invoke-static {}, Lcom/transsion/push/utils/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
