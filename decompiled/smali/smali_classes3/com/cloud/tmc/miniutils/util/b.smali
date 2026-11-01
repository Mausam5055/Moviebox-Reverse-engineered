.class public abstract synthetic Lcom/cloud/tmc/miniutils/util/b;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/content/pm/SigningInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result p0

    return p0
.end method
