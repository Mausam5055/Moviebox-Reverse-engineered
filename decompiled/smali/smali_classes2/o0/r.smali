.class public final Lo0/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/r$a;
    }
.end annotation


# static fields
.field public static final e:Lo0/r$a;

.field private static final f:Lo0/r;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo0/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo0/r$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo0/r;->e:Lo0/r$a;

    new-instance v0, Lo0/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lo0/r;-><init>(IIII)V

    sput-object v0, Lo0/r;->f:Lo0/r;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo0/r;->a:I

    iput p2, p0, Lo0/r;->b:I

    iput p3, p0, Lo0/r;->c:I

    iput p4, p0, Lo0/r;->d:I

    return-void
.end method

.method public static final synthetic a()Lo0/r;
    .locals 1

    sget-object v0, Lo0/r;->f:Lo0/r;

    return-object v0
.end method

.method public static synthetic c(Lo0/r;IIIIILjava/lang/Object;)Lo0/r;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lo0/r;->a:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lo0/r;->b:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lo0/r;->c:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lo0/r;->d:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lo0/r;->b(IIII)Lo0/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(IIII)Lo0/r;
    .locals 1

    new-instance v0, Lo0/r;

    invoke-direct {v0, p1, p2, p3, p4}, Lo0/r;-><init>(IIII)V

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lo0/r;->d:I

    return v0
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lo0/r;->d:I

    iget v1, p0, Lo0/r;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo0/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/r;

    iget v1, p0, Lo0/r;->a:I

    iget v3, p1, Lo0/r;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lo0/r;->b:I

    iget v3, p1, Lo0/r;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lo0/r;->c:I

    iget v3, p1, Lo0/r;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lo0/r;->d:I

    iget p1, p1, Lo0/r;->d:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lo0/r;->a:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lo0/r;->c:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lo0/r;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lo0/r;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo0/r;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo0/r;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo0/r;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()J
    .locals 2

    iget v0, p0, Lo0/r;->a:I

    iget v1, p0, Lo0/r;->b:I

    invoke-static {v0, v1}, Lo0/q;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()I
    .locals 2

    iget v0, p0, Lo0/r;->c:I

    iget v1, p0, Lo0/r;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lo0/r;->a:I

    iget v1, p0, Lo0/r;->c:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lo0/r;->b:I

    iget v1, p0, Lo0/r;->d:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final l(II)Lo0/r;
    .locals 4

    new-instance v0, Lo0/r;

    iget v1, p0, Lo0/r;->a:I

    add-int/2addr v1, p1

    iget v2, p0, Lo0/r;->b:I

    add-int/2addr v2, p2

    iget v3, p0, Lo0/r;->c:I

    add-int/2addr v3, p1

    iget p1, p0, Lo0/r;->d:I

    add-int/2addr p1, p2

    invoke-direct {v0, v1, v2, v3, p1}, Lo0/r;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntRect.fromLTRB("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo0/r;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo0/r;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/r;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
