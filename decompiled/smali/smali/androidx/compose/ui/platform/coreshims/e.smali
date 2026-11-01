.class public abstract Landroidx/compose/ui/platform/coreshims/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/coreshims/e$c;,
        Landroidx/compose/ui/platform/coreshims/e$b;,
        Landroidx/compose/ui/platform/coreshims/e$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/b;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/platform/coreshims/e$a;->a(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/platform/coreshims/b;->b(Landroid/view/autofill/AutofillId;)Landroidx/compose/ui/platform/coreshims/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/d;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/platform/coreshims/e$b;->a(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-static {v0, p0}, Landroidx/compose/ui/platform/coreshims/d;->f(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/d;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static c(Landroid/view/View;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/coreshims/e$c;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
