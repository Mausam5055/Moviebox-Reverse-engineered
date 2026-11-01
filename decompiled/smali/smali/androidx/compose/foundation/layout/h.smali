.class final Landroidx/compose/foundation/layout/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/layout/g;
.implements Landroidx/compose/foundation/layout/f;


# instance fields
.field private final a:Lo0/e;

.field private final b:J

.field private final synthetic c:Landroidx/compose/foundation/layout/BoxScopeInstance;


# direct methods
.method private constructor <init>(Lo0/e;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/h;->a:Lo0/e;

    iput-wide p2, p0, Landroidx/compose/foundation/layout/h;->b:J

    sget-object p1, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    iput-object p1, p0, Landroidx/compose/foundation/layout/h;->c:Landroidx/compose/foundation/layout/BoxScopeInstance;

    return-void
.end method

.method public synthetic constructor <init>(Lo0/e;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/h;-><init>(Lo0/e;J)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/h;->b:J

    return-wide v0
.end method

.method public b(Landroidx/compose/ui/f;Landroidx/compose/ui/b;)Landroidx/compose/ui/f;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/h;->c:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/b;)Landroidx/compose/ui/f;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/h;

    iget-object v1, p0, Landroidx/compose/foundation/layout/h;->a:Lo0/e;

    iget-object v3, p1, Landroidx/compose/foundation/layout/h;->a:Lo0/e;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/foundation/layout/h;->b:J

    iget-wide v5, p1, Landroidx/compose/foundation/layout/h;->b:J

    invoke-static {v3, v4, v5, v6}, Lo0/b;->f(JJ)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/layout/h;->a:Lo0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/foundation/layout/h;->b:J

    invoke-static {v1, v2}, Lo0/b;->o(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxWithConstraintsScopeImpl(density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/h;->a:Lo0/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/foundation/layout/h;->b:J

    invoke-static {v1, v2}, Lo0/b;->q(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
