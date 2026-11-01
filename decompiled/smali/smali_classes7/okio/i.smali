.class public abstract synthetic Lokio/i;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Ljava/nio/file/NoSuchFileException;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/NoSuchFileException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
