.class public abstract synthetic Lcom/cloud/tmc/integration/b;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/app/Application;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Application;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
