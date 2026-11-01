.class public final Landroidx/compose/ui/graphics/k4$b;
.super Landroidx/compose/ui/graphics/k4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/k4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ly/i;


# direct methods
.method public constructor <init>(Ly/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/k4;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/k4$b;->a:Ly/i;

    return-void
.end method


# virtual methods
.method public a()Ly/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/k4$b;->a:Ly/i;

    return-object v0
.end method

.method public final b()Ly/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/k4$b;->a:Ly/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/k4$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/graphics/k4$b;->a:Ly/i;

    check-cast p1, Landroidx/compose/ui/graphics/k4$b;

    iget-object p1, p1, Landroidx/compose/ui/graphics/k4$b;->a:Ly/i;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/k4$b;->a:Ly/i;

    invoke-virtual {v0}, Ly/i;->hashCode()I

    move-result v0

    return v0
.end method
