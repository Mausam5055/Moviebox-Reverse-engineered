.class final Landroidx/compose/ui/node/c1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/node/z0;


# instance fields
.field private final a:Landroidx/compose/ui/layout/v;

.field private final b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/v;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/c1;->a:Landroidx/compose/ui/layout/v;

    iput-object p2, p0, Landroidx/compose/ui/node/c1;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/c1;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/layout/v;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/c1;->a:Landroidx/compose/ui/layout/v;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/node/c1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/node/c1;

    iget-object v1, p0, Landroidx/compose/ui/node/c1;->a:Landroidx/compose/ui/layout/v;

    iget-object v3, p1, Landroidx/compose/ui/node/c1;->a:Landroidx/compose/ui/layout/v;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/node/c1;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    iget-object p1, p1, Landroidx/compose/ui/node/c1;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/c1;->a:Landroidx/compose/ui/layout/v;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/node/c1;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/c1;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->X0()Landroidx/compose/ui/layout/l;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->F()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaceableResult(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/node/c1;->a:Landroidx/compose/ui/layout/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/node/c1;->b:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
