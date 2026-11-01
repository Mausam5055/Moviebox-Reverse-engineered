.class public Lcom/google/android/material/internal/t;
.super Landroidx/appcompat/view/menu/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/r;Landroidx/appcompat/view/menu/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/q;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/h;)V

    return-void
.end method


# virtual methods
.method public N(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/f;->N(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q;->j0()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->N(Z)V

    return-void
.end method
