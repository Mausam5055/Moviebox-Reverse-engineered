.class final Landroidx/compose/material/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/b0;


# instance fields
.field private final a:Z

.field private final b:F

.field private final c:Landroidx/compose/ui/graphics/x1;

.field private final d:J


# direct methods
.method private constructor <init>(ZFJ)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/i;-><init>(ZFLandroidx/compose/ui/graphics/x1;J)V

    return-void
.end method

.method public synthetic constructor <init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material/i;-><init>(ZFJ)V

    return-void
.end method

.method private constructor <init>(ZFLandroidx/compose/ui/graphics/x1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material/i;->a:Z

    iput p2, p0, Landroidx/compose/material/i;->b:F

    iput-object p3, p0, Landroidx/compose/material/i;->c:Landroidx/compose/ui/graphics/x1;

    iput-wide p4, p0, Landroidx/compose/material/i;->d:J

    return-void
.end method

.method public static final synthetic c(Landroidx/compose/material/i;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material/i;->d:J

    return-wide v0
.end method


# virtual methods
.method public synthetic a(Lp/g;Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/y;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/w;->a(Landroidx/compose/foundation/x;Lp/g;Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/y;

    move-result-object p1

    return-object p1
.end method

.method public b(Lp/g;)Landroidx/compose/ui/node/f;
    .locals 7

    iget-object v0, p0, Landroidx/compose/material/i;->c:Landroidx/compose/ui/graphics/x1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material/i$a;

    invoke-direct {v0, p0}, Landroidx/compose/material/i$a;-><init>(Landroidx/compose/material/i;)V

    :cond_0
    move-object v5, v0

    new-instance v0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;

    iget-boolean v3, p0, Landroidx/compose/material/i;->a:Z

    iget v4, p0, Landroidx/compose/material/i;->b:F

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;-><init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/compose/material/i;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Landroidx/compose/material/i;->a:Z

    check-cast p1, Landroidx/compose/material/i;

    iget-boolean v2, p1, Landroidx/compose/material/i;->a:Z

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget v0, p0, Landroidx/compose/material/i;->b:F

    iget v2, p1, Landroidx/compose/material/i;->b:F

    invoke-static {v0, v2}, Lo0/i;->i(FF)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Landroidx/compose/material/i;->c:Landroidx/compose/ui/graphics/x1;

    iget-object v2, p1, Landroidx/compose/material/i;->c:Landroidx/compose/ui/graphics/x1;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-wide v0, p0, Landroidx/compose/material/i;->d:J

    iget-wide v2, p1, Landroidx/compose/material/i;->d:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/material/i;->a:Z

    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/material/i;->b:F

    invoke-static {v1}, Lo0/i;->j(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material/i;->c:Landroidx/compose/ui/graphics/x1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/i;->d:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
