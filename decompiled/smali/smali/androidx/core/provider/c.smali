.class public abstract synthetic Landroidx/core/provider/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroidx/core/provider/d$a;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    new-instance v0, Landroidx/core/provider/d$b;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/d$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/core/provider/d$c;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/d$c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method
