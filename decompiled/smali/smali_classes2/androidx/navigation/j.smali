.class public Landroidx/navigation/j;
.super Landroidx/navigation/NavController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/navigation/NavController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final d0(Landroidx/lifecycle/u;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/navigation/NavController;->d0(Landroidx/lifecycle/u;)V

    return-void
.end method

.method public final e0(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/navigation/NavController;->e0(Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method

.method public final f0(Landroidx/lifecycle/x0;)V
    .locals 1

    const-string v0, "viewModelStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/navigation/NavController;->f0(Landroidx/lifecycle/x0;)V

    return-void
.end method

.method public final r(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/navigation/NavController;->r(Z)V

    return-void
.end method
