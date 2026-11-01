.class public Landroidx/compose/ui/platform/b;
.super Landroidx/compose/ui/platform/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/b$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/compose/ui/platform/b$a;

.field public static final e:I

.field private static f:Landroidx/compose/ui/platform/b;


# instance fields
.field private c:Ljava/text/BreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/b;->d:Landroidx/compose/ui/platform/b$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/b;->e:I

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/a;-><init>()V

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/b;->i(Ljava/util/Locale;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Locale;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/b;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static final synthetic g()Landroidx/compose/ui/platform/b;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/b;->f:Landroidx/compose/ui/platform/b;

    return-object v0
.end method

.method public static final synthetic h(Landroidx/compose/ui/platform/b;)V
    .locals 0

    sput-object p0, Landroidx/compose/ui/platform/b;->f:Landroidx/compose/ui/platform/b;

    return-void
.end method

.method private final i(Ljava/util/Locale;)V
    .locals 0

    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/b;->c:Ljava/text/BreakIterator;

    return-void
.end method


# virtual methods
.method public a(I)[I
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/platform/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/b;->c:Ljava/text/BreakIterator;

    const-string v2, "impl"

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/compose/ui/platform/b;->c:Ljava/text/BreakIterator;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    if-ne p1, v3, :cond_2

    return-object v1

    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/platform/b;->c:Ljava/text/BreakIterator;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/a;->c(II)[I

    move-result-object p1

    return-object p1
.end method

.method public b(I)[I
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/platform/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/b;->c:Ljava/text/BreakIterator;

    const-string v2, "impl"

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/compose/ui/platform/b;->c:Ljava/text/BreakIterator;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    if-ne p1, v3, :cond_2

    return-object v1

    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/platform/b;->c:Ljava/text/BreakIterator;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/platform/a;->c(II)[I

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/compose/ui/platform/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/b;->c:Ljava/text/BreakIterator;

    if-nez v0, :cond_0

    const-string v0, "impl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method
