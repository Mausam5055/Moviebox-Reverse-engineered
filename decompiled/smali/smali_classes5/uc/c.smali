.class public abstract synthetic Luc/c;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Ljava/net/HttpURLConnection;)J
    .locals 2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method
