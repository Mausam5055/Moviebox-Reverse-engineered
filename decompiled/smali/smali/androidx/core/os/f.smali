.class public abstract Landroidx/core/os/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/res/Configuration;)Landroidx/core/os/i;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/os/f$a;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/i;->j(Landroid/os/LocaleList;)Landroidx/core/os/i;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Landroidx/core/os/i;->a([Ljava/util/Locale;)Landroidx/core/os/i;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/res/Configuration;Landroidx/core/os/i;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/core/os/f$a;->b(Landroid/content/res/Configuration;Landroidx/core/os/i;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/core/os/i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/os/i;->d(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :cond_1
    :goto_0
    return-void
.end method
