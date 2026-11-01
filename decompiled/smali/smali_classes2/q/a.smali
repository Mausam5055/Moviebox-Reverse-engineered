.class public abstract Lq/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/a5;


# instance fields
.field private final a:Lq/b;

.field private final b:Lq/b;

.field private final c:Lq/b;

.field private final d:Lq/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lq/b;Lq/b;Lq/b;Lq/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/a;->a:Lq/b;

    iput-object p2, p0, Lq/a;->b:Lq/b;

    iput-object p3, p0, Lq/a;->c:Lq/b;

    iput-object p4, p0, Lq/a;->d:Lq/b;

    return-void
.end method


# virtual methods
.method public final a(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4;
    .locals 9

    iget-object v3, p0, Lq/a;->a:Lq/b;

    invoke-interface {v3, p1, p2, p4}, Lq/b;->a(JLo0/e;)F

    move-result v3

    iget-object v4, p0, Lq/a;->b:Lq/b;

    invoke-interface {v4, p1, p2, p4}, Lq/b;->a(JLo0/e;)F

    move-result v4

    iget-object v5, p0, Lq/a;->c:Lq/b;

    invoke-interface {v5, p1, p2, p4}, Lq/b;->a(JLo0/e;)F

    move-result v5

    iget-object v6, p0, Lq/a;->d:Lq/b;

    invoke-interface {v6, p1, p2, p4}, Lq/b;->a(JLo0/e;)F

    move-result v0

    invoke-static {p1, p2}, Ly/m;->h(J)F

    move-result v6

    add-float v7, v3, v0

    cmpl-float v8, v7, v6

    if-lez v8, :cond_0

    div-float v7, v6, v7

    mul-float/2addr v3, v7

    mul-float/2addr v0, v7

    :cond_0
    move v7, v0

    add-float v0, v4, v5

    cmpl-float v8, v0, v6

    if-lez v8, :cond_1

    div-float/2addr v6, v0

    mul-float/2addr v4, v6

    mul-float/2addr v5, v6

    :cond_1
    const/4 v0, 0x0

    cmpl-float v6, v3, v0

    if-ltz v6, :cond_2

    cmpl-float v6, v4, v0

    if-ltz v6, :cond_2

    cmpl-float v6, v5, v0

    if-ltz v6, :cond_2

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_2

    move-object v0, p0

    move-wide v1, p1

    move v6, v7

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lq/a;->b(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/k4;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Corner size in Px can\'t be negative(topStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", topEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottomEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottomStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract b(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/k4;
.end method

.method public final c()Lq/b;
    .locals 1

    iget-object v0, p0, Lq/a;->c:Lq/b;

    return-object v0
.end method

.method public final d()Lq/b;
    .locals 1

    iget-object v0, p0, Lq/a;->d:Lq/b;

    return-object v0
.end method

.method public final e()Lq/b;
    .locals 1

    iget-object v0, p0, Lq/a;->b:Lq/b;

    return-object v0
.end method

.method public final f()Lq/b;
    .locals 1

    iget-object v0, p0, Lq/a;->a:Lq/b;

    return-object v0
.end method
