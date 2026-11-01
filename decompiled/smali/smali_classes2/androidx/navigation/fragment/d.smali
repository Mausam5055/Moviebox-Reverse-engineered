.class public abstract Landroidx/navigation/fragment/d;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/navigation/fragment/NavHostFragment;->f:Landroidx/navigation/fragment/NavHostFragment$a;

    invoke-virtual {v0, p0}, Landroidx/navigation/fragment/NavHostFragment$a;->c(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0
.end method
