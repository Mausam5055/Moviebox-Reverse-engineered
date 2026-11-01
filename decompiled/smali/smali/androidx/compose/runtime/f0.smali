.class public final Landroidx/compose/runtime/f0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/g3;


# instance fields
.field private final a:Landroidx/compose/runtime/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/f0;->a:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/runtime/n1;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Landroidx/compose/runtime/f0;->a:Landroidx/compose/runtime/i1;

    invoke-interface {p1}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Landroidx/compose/runtime/i1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/f0;->a:Landroidx/compose/runtime/i1;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/runtime/f0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/runtime/f0;

    iget-object v1, p0, Landroidx/compose/runtime/f0;->a:Landroidx/compose/runtime/i1;

    iget-object p1, p1, Landroidx/compose/runtime/f0;->a:Landroidx/compose/runtime/i1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/f0;->a:Landroidx/compose/runtime/i1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicValueHolder(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/runtime/f0;->a:Landroidx/compose/runtime/i1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
