.class public abstract synthetic Lcom/cloud/tmc/miniutils/util/f;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/app/Application;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Application;->getDataDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
