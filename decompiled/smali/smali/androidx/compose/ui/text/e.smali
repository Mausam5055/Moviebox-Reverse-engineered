.class public final Landroidx/compose/ui/text/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/e$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/text/e$a;

.field private static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/e;->b:Landroidx/compose/ui/text/e$a;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/text/e;->e(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/e;->c:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/text/e;->e(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/e;->d:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/text/e;->e(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/e;->e:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/e;->a:I

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/e;->e:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/e;->c:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/e;->d:I

    return v0
.end method

.method public static final synthetic d(I)Landroidx/compose/ui/text/e;
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/e;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/e;-><init>(I)V

    return-object v0
.end method

.method private static e(I)I
    .locals 0

    return p0
.end method

.method public static f(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/text/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/text/e;

    invoke-virtual {p1}, Landroidx/compose/ui/text/e;->j()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final g(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(I)I
    .locals 0

    return p0
.end method

.method public static i(I)Ljava/lang/String;
    .locals 2

    sget v0, Landroidx/compose/ui/text/e;->c:I

    if-ne p0, v0, :cond_0

    const-string p0, "EmojiSupportMatch.Default"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/e;->d:I

    if-ne p0, v0, :cond_1

    const-string p0, "EmojiSupportMatch.None"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/e;->e:I

    if-ne p0, v0, :cond_2

    const-string p0, "EmojiSupportMatch.All"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/e;->a:I

    invoke-static {v0, p1}, Landroidx/compose/ui/text/e;->f(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/e;->a:I

    invoke-static {v0}, Landroidx/compose/ui/text/e;->h(I)I

    move-result v0

    return v0
.end method

.method public final synthetic j()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/e;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/e;->a:I

    invoke-static {v0}, Landroidx/compose/ui/text/e;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
