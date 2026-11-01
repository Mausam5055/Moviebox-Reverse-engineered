.class public abstract synthetic Landroidx/media3/datasource/cache/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/media3/datasource/cache/m;)J
    .locals 3

    const-string v0, "exo_len"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroidx/media3/datasource/cache/m;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroidx/media3/datasource/cache/m;)Landroid/net/Uri;
    .locals 2

    const-string v0, "exo_redir"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroidx/media3/datasource/cache/m;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1
.end method
