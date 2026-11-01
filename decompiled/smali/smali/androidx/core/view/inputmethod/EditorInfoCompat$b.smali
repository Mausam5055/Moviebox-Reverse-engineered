.class abstract Landroidx/core/view/inputmethod/EditorInfoCompat$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/inputmethod/EditorInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/inputmethod/EditorInfo;->isStylusHandwritingEnabled()Z

    move-result p0

    return p0
.end method

.method static b(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorInfo;->setStylusHandwritingEnabled(Z)V

    return-void
.end method
