.class public final Landroidx/compose/ui/text/style/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/g$a;,
        Landroidx/compose/ui/text/style/g$b;,
        Landroidx/compose/ui/text/style/g$c;
    }
.end annotation


# static fields
.field public static final c:Landroidx/compose/ui/text/style/g$b;

.field private static final d:Landroidx/compose/ui/text/style/g;


# instance fields
.field private final a:F

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/ui/text/style/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/g$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/g;->c:Landroidx/compose/ui/text/style/g$b;

    new-instance v0, Landroidx/compose/ui/text/style/g;

    sget-object v2, Landroidx/compose/ui/text/style/g$a;->a:Landroidx/compose/ui/text/style/g$a$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/g$a$a;->b()F

    move-result v2

    sget-object v3, Landroidx/compose/ui/text/style/g$c;->a:Landroidx/compose/ui/text/style/g$c$a;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/g$c$a;->a()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/text/style/g;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/g;->d:Landroidx/compose/ui/text/style/g;

    return-void
.end method

.method private constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/g;->a:F

    iput p2, p0, Landroidx/compose/ui/text/style/g;->b:I

    return-void
.end method

.method public synthetic constructor <init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/style/g;-><init>(FI)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/text/style/g;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/g;->d:Landroidx/compose/ui/text/style/g;

    return-object v0
.end method


# virtual methods
.method public final b()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/g;->a:F

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/g;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/compose/ui/text/style/g;->a:F

    check-cast p1, Landroidx/compose/ui/text/style/g;

    iget v3, p1, Landroidx/compose/ui/text/style/g;->a:F

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/g$a;->d(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/style/g;->b:I

    iget p1, p1, Landroidx/compose/ui/text/style/g;->b:I

    invoke-static {v1, p1}, Landroidx/compose/ui/text/style/g$c;->d(II)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/style/g;->a:F

    invoke-static {v0}, Landroidx/compose/ui/text/style/g$a;->e(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/style/g;->b:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/g$c;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineHeightStyle(alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/style/g;->a:F

    invoke-static {v1}, Landroidx/compose/ui/text/style/g$a;->f(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/style/g;->b:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/g$c;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
