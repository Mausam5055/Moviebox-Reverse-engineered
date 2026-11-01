.class public abstract synthetic Lcom/transsnet/downloader/dialog/o;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/os/storage/StorageManager;Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method
