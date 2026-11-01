.class public final Landroidx/compose/ui/platform/c;
.super Landroidx/compose/ui/platform/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/c$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/compose/ui/platform/c$a;

.field public static final e:I

.field private static f:Landroidx/compose/ui/platform/c;

.field private static final g:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field private static final h:Landroidx/compose/ui/text/style/ResolvedTextDirection;


# instance fields
.field private c:Landroidx/compose/ui/text/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/c;->d:Landroidx/compose/ui/platform/c$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/c;->e:I

    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    sput-object v0, Landroidx/compose/ui/platform/c;->g:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    sput-object v0, Landroidx/compose/ui/platform/c;->h:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/c;-><init>()V

    return-void
.end method

.method public static final synthetic g()Landroidx/compose/ui/platform/c;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/c;->f:Landroidx/compose/ui/platform/c;

    return-object v0
.end method

.method public static final synthetic h(Landroidx/compose/ui/platform/c;)V
    .locals 0

    sput-object p0, Landroidx/compose/ui/platform/c;->f:Landroidx/compose/ui/platform/c;

    return-void
.end method

.method private final i(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    const-string v1, "layoutResult"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/z;->t(I)I

    move-result v0

    iget-object v3, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/z;->w(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    if-nez p2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/z;->t(I)I

    move-result p1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    if-nez p2, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p2, v2

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1, v2}, Landroidx/compose/ui/text/z;->o(Landroidx/compose/ui/text/z;IZILjava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    return p1
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
    invoke-virtual {p0}, Landroidx/compose/ui/platform/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "layoutResult"

    if-gez p1, :cond_3

    iget-object p1, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/z;->p(I)I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    if-nez v2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v1

    :cond_4
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/z;->p(I)I

    move-result v2

    sget-object v3, Landroidx/compose/ui/platform/c;->g:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-direct {p0, v2, v3}, Landroidx/compose/ui/platform/c;->i(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v3

    if-ne v3, p1, :cond_5

    move p1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 p1, v2, 0x1

    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    if-nez v2, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v1

    :cond_6
    invoke-virtual {v2}, Landroidx/compose/ui/text/z;->m()I

    move-result v0

    if-lt p1, v0, :cond_7

    return-object v1

    :cond_7
    sget-object v0, Landroidx/compose/ui/platform/c;->g:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/platform/c;->i(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/platform/c;->h:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/platform/c;->i(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/platform/a;->c(II)[I

    move-result-object p1

    return-object p1
.end method

.method public b(I)[I
    .locals 3

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
    invoke-virtual {p0}, Landroidx/compose/ui/platform/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "layoutResult"

    if-le p1, v0, :cond_3

    iget-object p1, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/platform/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/z;->p(I)I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/z;->p(I)I

    move-result v0

    sget-object v2, Landroidx/compose/ui/platform/c;->h:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-direct {p0, v0, v2}, Landroidx/compose/ui/platform/c;->i(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_5

    move p1, v0

    goto :goto_0

    :cond_5
    add-int/lit8 p1, v0, -0x1

    :goto_0
    if-gez p1, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Landroidx/compose/ui/platform/c;->g:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/platform/c;->i(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/platform/c;->h:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/platform/c;->i(ILandroidx/compose/ui/text/style/ResolvedTextDirection;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/platform/a;->c(II)[I

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/String;Landroidx/compose/ui/text/z;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/a;->f(Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/c;->c:Landroidx/compose/ui/text/z;

    return-void
.end method
