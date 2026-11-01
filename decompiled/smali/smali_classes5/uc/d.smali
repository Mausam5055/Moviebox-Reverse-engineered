.class public abstract synthetic Luc/d;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Ljava/net/HttpURLConnection;Ljava/lang/String;J)J
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method
