.class public abstract Lcom/blankj/utilcode/util/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method
