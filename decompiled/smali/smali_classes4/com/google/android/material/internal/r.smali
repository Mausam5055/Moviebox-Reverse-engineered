.class public Lcom/google/android/material/internal/r;
.super Landroidx/appcompat/view/menu/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/f;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/h;

    new-instance p2, Lcom/google/android/material/internal/t;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f;->w()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Lcom/google/android/material/internal/t;-><init>(Landroid/content/Context;Lcom/google/android/material/internal/r;Landroidx/appcompat/view/menu/h;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/h;->x(Landroidx/appcompat/view/menu/q;)V

    return-object p2
.end method
