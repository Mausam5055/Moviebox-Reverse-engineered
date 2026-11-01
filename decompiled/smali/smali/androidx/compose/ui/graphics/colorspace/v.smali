.class public final synthetic Landroidx/compose/ui/graphics/colorspace/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/colorspace/j;


# instance fields
.field public final synthetic a:Landroidx/compose/ui/graphics/colorspace/x;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/v;->a:Landroidx/compose/ui/graphics/colorspace/x;

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/v;->a:Landroidx/compose/ui/graphics/colorspace/x;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->n(Landroidx/compose/ui/graphics/colorspace/x;D)D

    move-result-wide p1

    return-wide p1
.end method
