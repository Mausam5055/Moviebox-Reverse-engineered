.class public final Lz/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lo0/e;

.field private b:Landroidx/compose/ui/unit/LayoutDirection;

.field private c:Landroidx/compose/ui/graphics/m1;

.field private d:J


# direct methods
.method private constructor <init>(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/m1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/a$a;->a:Lo0/e;

    iput-object p2, p0, Lz/a$a;->b:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p3, p0, Lz/a$a;->c:Landroidx/compose/ui/graphics/m1;

    iput-wide p4, p0, Lz/a$a;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/m1;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    invoke-static {}, Lz/e;->a()Lo0/e;

    move-result-object p1

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    new-instance p3, Lz/k;

    invoke-direct {p3}, Lz/k;-><init>()V

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    sget-object p1, Ly/m;->b:Ly/m$a;

    invoke-virtual {p1}, Ly/m$a;->b()J

    move-result-wide p4

    :cond_3
    move-wide v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lz/a$a;-><init>(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/m1;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/m1;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lz/a$a;-><init>(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/m1;J)V

    return-void
.end method


# virtual methods
.method public final a()Lo0/e;
    .locals 1

    iget-object v0, p0, Lz/a$a;->a:Lo0/e;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Lz/a$a;->b:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/graphics/m1;
    .locals 1

    iget-object v0, p0, Lz/a$a;->c:Landroidx/compose/ui/graphics/m1;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lz/a$a;->d:J

    return-wide v0
.end method

.method public final e()Landroidx/compose/ui/graphics/m1;
    .locals 1

    iget-object v0, p0, Lz/a$a;->c:Landroidx/compose/ui/graphics/m1;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lz/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lz/a$a;

    iget-object v1, p0, Lz/a$a;->a:Lo0/e;

    iget-object v3, p1, Lz/a$a;->a:Lo0/e;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lz/a$a;->b:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v3, p1, Lz/a$a;->b:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lz/a$a;->c:Landroidx/compose/ui/graphics/m1;

    iget-object v3, p1, Lz/a$a;->c:Landroidx/compose/ui/graphics/m1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lz/a$a;->d:J

    iget-wide v5, p1, Lz/a$a;->d:J

    invoke-static {v3, v4, v5, v6}, Ly/m;->f(JJ)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final f()Lo0/e;
    .locals 1

    iget-object v0, p0, Lz/a$a;->a:Lo0/e;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Lz/a$a;->b:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lz/a$a;->d:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lz/a$a;->a:Lo0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz/a$a;->b:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz/a$a;->c:Landroidx/compose/ui/graphics/m1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lz/a$a;->d:J

    invoke-static {v1, v2}, Ly/m;->j(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Landroidx/compose/ui/graphics/m1;)V
    .locals 0

    iput-object p1, p0, Lz/a$a;->c:Landroidx/compose/ui/graphics/m1;

    return-void
.end method

.method public final j(Lo0/e;)V
    .locals 0

    iput-object p1, p0, Lz/a$a;->a:Lo0/e;

    return-void
.end method

.method public final k(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    iput-object p1, p0, Lz/a$a;->b:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final l(J)V
    .locals 0

    iput-wide p1, p0, Lz/a$a;->d:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawParams(density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz/a$a;->a:Lo0/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layoutDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz/a$a;->b:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canvas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz/a$a;->c:Landroidx/compose/ui/graphics/m1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lz/a$a;->d:J

    invoke-static {v1, v2}, Ly/m;->l(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
