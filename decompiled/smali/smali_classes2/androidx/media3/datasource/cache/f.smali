.class public abstract synthetic Landroidx/media3/datasource/cache/f;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/media3/datasource/cache/g;->a:Landroidx/media3/datasource/cache/g;

    return-void
.end method

.method public static synthetic a(Lw1/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw1/h;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lw1/h;->a:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
