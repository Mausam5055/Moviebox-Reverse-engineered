.class public abstract Ln0/g;
.super Ljava/lang/Object;


# direct methods
.method public static final a()Ln0/j;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Ln0/e;

    invoke-direct {v0}, Ln0/e;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ln0/a;

    invoke-direct {v0}, Ln0/a;-><init>()V

    :goto_0
    return-object v0
.end method
