.class public abstract synthetic Lcom/transsion/api/gateway/utils/a;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
