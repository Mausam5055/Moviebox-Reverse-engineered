.class public abstract Lj0/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Z)Landroidx/compose/ui/state/ToggleableState;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    :goto_0
    return-object p0
.end method
