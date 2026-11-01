.class public abstract Ly0/h$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/h$f$b;,
        Ly0/h$f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/res/Resources$Theme;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Ly0/h$f$b;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ly0/h$f$a;->a(Landroid/content/res/Resources$Theme;)V

    :goto_0
    return-void
.end method
