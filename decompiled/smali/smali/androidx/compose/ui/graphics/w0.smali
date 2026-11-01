.class public abstract Landroidx/compose/ui/graphics/w0;
.super Ljava/lang/Object;


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/r4;
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/v0;

    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/v0;-><init>(Landroid/graphics/PathMeasure;)V

    return-object v0
.end method
