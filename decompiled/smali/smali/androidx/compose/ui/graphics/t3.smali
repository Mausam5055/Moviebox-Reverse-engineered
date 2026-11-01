.class public final synthetic Landroidx/compose/ui/graphics/t3;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/colorspace/j;


# instance fields
.field public final synthetic a:Landroid/graphics/ColorSpace;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/ColorSpace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/t3;->a:Landroid/graphics/ColorSpace;

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/t3;->a:Landroid/graphics/ColorSpace;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/v3;->d(Landroid/graphics/ColorSpace;D)D

    move-result-wide p1

    return-wide p1
.end method
