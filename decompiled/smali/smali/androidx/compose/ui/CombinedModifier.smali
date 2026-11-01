.class public final Landroidx/compose/ui/CombinedModifier;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/f;


# instance fields
.field private final b:Landroidx/compose/ui/f;

.field private final c:Landroidx/compose/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/CombinedModifier;->b:Landroidx/compose/ui/f;

    iput-object p2, p0, Landroidx/compose/ui/CombinedModifier;->c:Landroidx/compose/ui/f;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/f;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->c:Landroidx/compose/ui/f;

    return-object v0
.end method

.method public b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->c:Landroidx/compose/ui/f;

    iget-object v1, p0, Landroidx/compose/ui/CombinedModifier;->b:Landroidx/compose/ui/f;

    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/f;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/f;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/jvm/functions/Function1;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->b:Landroidx/compose/ui/f;

    invoke-interface {v0, p1}, Landroidx/compose/ui/f;->c(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->c:Landroidx/compose/ui/f;

    invoke-interface {v0, p1}, Landroidx/compose/ui/f;->c(Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/e;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/CombinedModifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->b:Landroidx/compose/ui/f;

    check-cast p1, Landroidx/compose/ui/CombinedModifier;

    iget-object v1, p1, Landroidx/compose/ui/CombinedModifier;->b:Landroidx/compose/ui/f;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->c:Landroidx/compose/ui/f;

    iget-object p1, p1, Landroidx/compose/ui/CombinedModifier;->c:Landroidx/compose/ui/f;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->b:Landroidx/compose/ui/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/CombinedModifier;->c:Landroidx/compose/ui/f;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Landroidx/compose/ui/f;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/CombinedModifier;->b:Landroidx/compose/ui/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ""

    sget-object v2, Landroidx/compose/ui/CombinedModifier$toString$1;->INSTANCE:Landroidx/compose/ui/CombinedModifier$toString$1;

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/CombinedModifier;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
