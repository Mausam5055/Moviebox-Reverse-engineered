.class public abstract synthetic Lcom/cloud/tmc/miniutils/util/g;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
