.class public abstract Lo0/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/content/Context;)Lo0/e;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    new-instance v1, Lo0/h;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sget-object v2, Lp0/b;->a:Lp0/b;

    invoke-virtual {v2, v0}, Lp0/b;->b(F)Lp0/a;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lo0/v;

    invoke-direct {v2, v0}, Lo0/v;-><init>(F)V

    :cond_0
    invoke-direct {v1, p0, v0, v2}, Lo0/h;-><init>(FFLp0/a;)V

    return-object v1
.end method
