.class public final Landroidx/compose/ui/text/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/u$a;
    }
.end annotation


# static fields
.field public static final c:Landroidx/compose/ui/text/u$a;

.field private static final d:Landroidx/compose/ui/text/u;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/u$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/u;->c:Landroidx/compose/ui/text/u$a;

    new-instance v0, Landroidx/compose/ui/text/u;

    invoke-direct {v0}, Landroidx/compose/ui/text/u;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/u;->d:Landroidx/compose/ui/text/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/e;->b:Landroidx/compose/ui/text/e$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/e$a;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/ui/text/u;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidx/compose/ui/text/u;->a:Z

    iput p1, p0, Landroidx/compose/ui/text/u;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/u;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/text/u;->a:Z

    sget-object p1, Landroidx/compose/ui/text/e;->b:Landroidx/compose/ui/text/e$a;

    invoke-virtual {p1}, Landroidx/compose/ui/text/e$a;->b()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/u;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/u;->b:I

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/u;->a:Z

    return v0
.end method

.method public final c(Landroidx/compose/ui/text/u;)Landroidx/compose/ui/text/u;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/u;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/text/u;->a:Z

    check-cast p1, Landroidx/compose/ui/text/u;

    iget-boolean v3, p1, Landroidx/compose/ui/text/u;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/u;->b:I

    iget p1, p1, Landroidx/compose/ui/text/u;->b:I

    invoke-static {v1, p1}, Landroidx/compose/ui/text/e;->g(II)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/u;->a:Z

    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/u;->b:I

    invoke-static {v1}, Landroidx/compose/ui/text/e;->h(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformParagraphStyle(includeFontPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/text/u;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", emojiSupportMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/u;->b:I

    invoke-static {v1}, Landroidx/compose/ui/text/e;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
