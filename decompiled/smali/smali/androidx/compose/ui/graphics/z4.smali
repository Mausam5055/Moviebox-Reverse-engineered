.class public final Landroidx/compose/ui/graphics/z4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/z4$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/compose/ui/graphics/z4$a;

.field private static final e:Landroidx/compose/ui/graphics/z4;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/compose/ui/graphics/z4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/z4$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/z4;->d:Landroidx/compose/ui/graphics/z4$a;

    new-instance v0, Landroidx/compose/ui/graphics/z4;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/z4;-><init>(JJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/z4;->e:Landroidx/compose/ui/graphics/z4;

    return-void
.end method

.method private constructor <init>(JJF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/graphics/z4;->a:J

    iput-wide p3, p0, Landroidx/compose/ui/graphics/z4;->b:J

    iput p5, p0, Landroidx/compose/ui/graphics/z4;->c:F

    return-void
.end method

.method public synthetic constructor <init>(JJFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide p1, 0xff000000L

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->d(J)J

    move-result-wide p1

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    sget-object p1, Ly/g;->b:Ly/g$a;

    invoke-virtual {p1}, Ly/g$a;->c()J

    move-result-wide p3

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 p5, 0x0

    :cond_2
    move v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/z4;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/graphics/z4;-><init>(JJF)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/graphics/z4;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/z4;->e:Landroidx/compose/ui/graphics/z4;

    return-object v0
.end method


# virtual methods
.method public final b()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/z4;->c:F

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/z4;->a:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/z4;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/z4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroidx/compose/ui/graphics/z4;->a:J

    check-cast p1, Landroidx/compose/ui/graphics/z4;

    iget-wide v5, p1, Landroidx/compose/ui/graphics/z4;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/graphics/z4;->b:J

    iget-wide v5, p1, Landroidx/compose/ui/graphics/z4;->b:J

    invoke-static {v3, v4, v5, v6}, Ly/g;->j(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/graphics/z4;->c:F

    iget p1, p1, Landroidx/compose/ui/graphics/z4;->c:F

    cmpg-float p1, v1, p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/z4;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/graphics/z4;->b:J

    invoke-static {v1, v2}, Ly/g;->o(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/z4;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shadow(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/z4;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/z4;->b:J

    invoke-static {v1, v2}, Ly/g;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/z4;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
