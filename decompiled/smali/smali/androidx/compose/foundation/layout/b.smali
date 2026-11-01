.class public final Landroidx/compose/foundation/layout/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/b$d;,
        Landroidx/compose/foundation/layout/b$e;,
        Landroidx/compose/foundation/layout/b$k;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/foundation/layout/b;

.field private static final b:Landroidx/compose/foundation/layout/b$d;

.field private static final c:Landroidx/compose/foundation/layout/b$d;

.field private static final d:Landroidx/compose/foundation/layout/b$k;

.field private static final e:Landroidx/compose/foundation/layout/b$k;

.field private static final f:Landroidx/compose/foundation/layout/b$e;

.field private static final g:Landroidx/compose/foundation/layout/b$e;

.field private static final h:Landroidx/compose/foundation/layout/b$e;

.field private static final i:Landroidx/compose/foundation/layout/b$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/b;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/b;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    new-instance v0, Landroidx/compose/foundation/layout/b$i;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/b$i;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/b;->b:Landroidx/compose/foundation/layout/b$d;

    new-instance v0, Landroidx/compose/foundation/layout/b$c;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/b$c;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/b;->c:Landroidx/compose/foundation/layout/b$d;

    new-instance v0, Landroidx/compose/foundation/layout/b$j;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/b$j;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/b;->d:Landroidx/compose/foundation/layout/b$k;

    new-instance v0, Landroidx/compose/foundation/layout/b$a;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/b$a;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/b;->e:Landroidx/compose/foundation/layout/b$k;

    new-instance v0, Landroidx/compose/foundation/layout/b$b;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/b$b;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/b;->f:Landroidx/compose/foundation/layout/b$e;

    new-instance v0, Landroidx/compose/foundation/layout/b$h;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/b$h;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/b;->g:Landroidx/compose/foundation/layout/b$e;

    new-instance v0, Landroidx/compose/foundation/layout/b$g;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/b$g;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/b;->h:Landroidx/compose/foundation/layout/b$e;

    new-instance v0, Landroidx/compose/foundation/layout/b$f;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/b$f;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/b;->i:Landroidx/compose/foundation/layout/b$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/foundation/layout/b$k;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/b;->e:Landroidx/compose/foundation/layout/b$k;

    return-object v0
.end method

.method public final b()Landroidx/compose/foundation/layout/b$e;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/b;->f:Landroidx/compose/foundation/layout/b$e;

    return-object v0
.end method

.method public final c()Landroidx/compose/foundation/layout/b$d;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/b;->b:Landroidx/compose/foundation/layout/b$d;

    return-object v0
.end method

.method public final d()Landroidx/compose/foundation/layout/b$k;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/b;->d:Landroidx/compose/foundation/layout/b$k;

    return-object v0
.end method

.method public final e(I[I[IZ)V
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v3

    int-to-float p1, p1

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    if-nez p4, :cond_1

    array-length p4, p2

    move v0, v1

    :goto_1
    if-ge v1, p4, :cond_2

    aget v2, p2, v1

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p3, v0

    int-to-float v0, v2

    add-float/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_1

    :cond_1
    array-length p4, p2

    add-int/lit8 p4, p4, -0x1

    :goto_2
    const/4 v0, -0x1

    if-ge v0, p4, :cond_2

    aget v0, p2, p4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p3, p4

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final f([I[IZ)V
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    array-length p3, p1

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v0, p3, :cond_1

    aget v3, p1, v0

    add-int/lit8 v4, v1, 0x1

    aput v2, p2, v1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    :cond_0
    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    :goto_1
    const/4 v1, -0x1

    if-ge v1, p3, :cond_1

    aget v1, p1, p3

    aput v0, p2, p3

    add-int/2addr v0, v1

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final g(I[I[IZ)V
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v3

    if-nez p4, :cond_1

    array-length p4, p2

    move v0, v1

    :goto_1
    if-ge v1, p4, :cond_2

    aget v2, p2, v1

    add-int/lit8 v3, v0, 0x1

    aput p1, p3, v0

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_1

    :cond_1
    array-length p4, p2

    add-int/lit8 p4, p4, -0x1

    :goto_2
    const/4 v0, -0x1

    if-ge v0, p4, :cond_2

    aget v0, p2, p4

    aput p1, p3, p4

    add-int/2addr p1, v0

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final h(I[I[IZ)V
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    sub-int/2addr p1, v3

    int-to-float p1, p1

    array-length v0, p2

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v0, p1, v0

    if-nez p4, :cond_3

    array-length p4, p2

    move v2, v1

    :goto_3
    if-ge v1, p4, :cond_4

    aget v3, p2, v1

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, p3, v2

    int-to-float v2, v3

    add-float/2addr v2, p1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_3

    :cond_3
    array-length p4, p2

    sub-int/2addr p4, v2

    :goto_4
    const/4 v1, -0x1

    if-ge v1, p4, :cond_4

    aget v1, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p3, p4

    int-to-float v1, v1

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    add-int/lit8 p4, p4, -0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final i(I[I[IZ)V
    .locals 6

    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->Z([I)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr p1, v3

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    if-eqz p4, :cond_2

    array-length v0, p2

    if-ne v0, v2, :cond_2

    move v0, p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez p4, :cond_3

    array-length p4, p2

    move v2, v1

    :goto_2
    if-ge v1, p4, :cond_4

    aget v3, p2, v1

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, p3, v2

    int-to-float v2, v3

    add-float/2addr v2, p1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_2

    :cond_3
    array-length p4, p2

    sub-int/2addr p4, v2

    :goto_3
    const/4 v1, -0x1

    if-ge v1, p4, :cond_4

    aget v1, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p3, p4

    int-to-float v1, v1

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final j(I[I[IZ)V
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v3

    int-to-float p1, p1

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    if-nez p4, :cond_1

    array-length p4, p2

    move v2, p1

    move v0, v1

    :goto_1
    if-ge v1, p4, :cond_2

    aget v3, p2, v1

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, p3, v0

    int-to-float v0, v3

    add-float/2addr v0, p1

    add-float/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_1

    :cond_1
    array-length p4, p2

    add-int/lit8 p4, p4, -0x1

    move v0, p1

    :goto_2
    const/4 v1, -0x1

    if-ge v1, p4, :cond_2

    aget v1, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p3, p4

    int-to-float v1, v1

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method
