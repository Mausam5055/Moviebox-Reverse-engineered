.class final Landroidx/compose/ui/text/style/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/style/l;


# instance fields
.field private final b:J


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/text/style/c;->b:J

    const-wide/16 v0, 0x10

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ColorStyle value must be specified, use TextForegroundStyle.Unspecified instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/style/c;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/style/c;->b:J

    return-wide v0
.end method

.method public synthetic b(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/l;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/TextForegroundStyle$-CC;->b(Landroidx/compose/ui/text/style/l;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Landroidx/compose/ui/text/style/l;)Landroidx/compose/ui/text/style/l;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/TextForegroundStyle$-CC;->a(Landroidx/compose/ui/text/style/l;Landroidx/compose/ui/text/style/l;)Landroidx/compose/ui/text/style/l;

    move-result-object p1

    return-object p1
.end method

.method public d()Landroidx/compose/ui/graphics/j1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/style/c;

    iget-wide v3, p0, Landroidx/compose/ui/text/style/c;->b:J

    iget-wide v5, p1, Landroidx/compose/ui/text/style/c;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getAlpha()F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/text/style/c;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/u1;->n(J)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/style/c;->b:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStyle(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/style/c;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
