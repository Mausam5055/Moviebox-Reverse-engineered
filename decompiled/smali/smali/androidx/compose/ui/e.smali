.class public abstract synthetic Landroidx/compose/ui/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 1

    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/CombinedModifier;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/CombinedModifier;-><init>(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
