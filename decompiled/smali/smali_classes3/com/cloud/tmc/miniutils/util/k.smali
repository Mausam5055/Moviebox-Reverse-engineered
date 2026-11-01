.class public abstract synthetic Lcom/cloud/tmc/miniutils/util/k;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
