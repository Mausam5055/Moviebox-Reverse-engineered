.class public abstract Lw1/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/media3/datasource/a;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroidx/media3/datasource/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
