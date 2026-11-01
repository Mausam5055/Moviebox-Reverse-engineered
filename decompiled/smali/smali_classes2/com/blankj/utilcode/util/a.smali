.class public abstract Lcom/blankj/utilcode/util/a;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/e0;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/e0;->u()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
