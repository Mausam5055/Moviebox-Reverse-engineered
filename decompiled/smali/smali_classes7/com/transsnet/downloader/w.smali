.class public abstract synthetic Lcom/transsnet/downloader/w;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
