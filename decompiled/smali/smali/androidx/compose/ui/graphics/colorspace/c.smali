.class public abstract Landroidx/compose/ui/graphics/colorspace/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/c$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/compose/ui/graphics/colorspace/c$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/c;->d:Landroidx/compose/ui/graphics/colorspace/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/c;->a:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/compose/ui/graphics/colorspace/c;->b:J

    iput p4, p0, Landroidx/compose/ui/graphics/colorspace/c;->c:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-lt p4, p1, :cond_0

    const/16 p1, 0x3f

    if-gt p4, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The id must be between -1 and 63"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The name of a color space cannot be null and must contain at least 1 character"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/colorspace/c;-><init>(Ljava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/c;->b:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/b;->f(J)I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/colorspace/c;->c:I

    return v0
.end method

.method public abstract c(I)F
.end method

.method public abstract d(I)F
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/c;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/colorspace/c;

    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/c;->c:I

    iget v2, p1, Landroidx/compose/ui/graphics/colorspace/c;->c:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/c;->a:Ljava/lang/String;

    iget-object v2, p1, Landroidx/compose/ui/graphics/colorspace/c;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/c;->b:J

    iget-wide v2, p1, Landroidx/compose/ui/graphics/colorspace/c;->b:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/b;->e(JJ)Z

    move-result v0

    :cond_4
    :goto_0
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract h(FFF)J
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/c;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/colorspace/b;->g(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/c;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract i(FFF)F
.end method

.method public abstract j(FFFFLandroidx/compose/ui/graphics/colorspace/c;)J
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/c;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/colorspace/b;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
