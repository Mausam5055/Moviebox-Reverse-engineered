.class final Landroidx/room/support/AutoClosingRoomOpenHelper$a;
.super Ljava/lang/Object;

# interfaces
.implements La4/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/support/AutoClosingRoomOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/support/AutoClosingRoomOpenHelper$a$a;
    }
.end annotation


# static fields
.field public static final h:Landroidx/room/support/AutoClosingRoomOpenHelper$a$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/room/support/AutoCloser;

.field private c:[I

.field private d:[J

.field private e:[D

.field private f:[Ljava/lang/String;

.field private g:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/support/AutoClosingRoomOpenHelper$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/support/AutoClosingRoomOpenHelper$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->h:Landroidx/room/support/AutoClosingRoomOpenHelper$a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/room/support/AutoCloser;)V
    .locals 1

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->b:Landroidx/room/support/AutoCloser;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->d:[J

    new-array p2, p1, [D

    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->e:[D

    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->f:[Ljava/lang/String;

    new-array p1, p1, [[B

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->g:[[B

    return-void
.end method

.method public static synthetic b(La4/h;)I
    .locals 0

    invoke-static {p0}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->p(La4/h;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(La4/h;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->n(La4/h;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(La4/h;)J
    .locals 2

    invoke-static {p0}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->o(La4/h;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic i(Landroidx/room/support/AutoClosingRoomOpenHelper$a;Lkotlin/jvm/functions/Function1;La4/d;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->r(Landroidx/room/support/AutoClosingRoomOpenHelper$a;Lkotlin/jvm/functions/Function1;La4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final k(La4/f;)V
    .locals 6

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    array-length v0, v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, La4/f;->g(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->g:[[B

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, La4/f;->e(I[B)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->f:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, La4/f;->y(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->e:[D

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, La4/f;->a(ID)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->d:[J

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, La4/f;->c(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final m(II)V
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iget-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    array-length v2, v1

    const-string v3, "copyOf(...)"

    if-ge v2, p2, :cond_0

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    :cond_0
    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->g:[[B

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [[B

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->g:[[B

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->f:[Ljava/lang/String;

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->f:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->e:[D

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->e:[D

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->d:[J

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->d:[J

    :cond_5
    :goto_0
    return-void
.end method

.method private static final n(La4/h;)Lkotlin/Unit;
    .locals 1

    const-string v0, "statement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, La4/h;->execute()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final o(La4/h;)J
    .locals 2

    const-string v0, "obj"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, La4/h;->R()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final p(La4/h;)I
    .locals 1

    const-string v0, "obj"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, La4/h;->F()I

    move-result p0

    return p0
.end method

.method private final q(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->b:Landroidx/room/support/AutoCloser;

    new-instance v1, Landroidx/room/support/k;

    invoke-direct {v1, p0, p1}, Landroidx/room/support/k;-><init>(Landroidx/room/support/AutoClosingRoomOpenHelper$a;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroidx/room/support/AutoCloser;->h(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static final r(Landroidx/room/support/AutoClosingRoomOpenHelper$a;Lkotlin/jvm/functions/Function1;La4/d;)Ljava/lang/Object;
    .locals 1

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, La4/d;->W(Ljava/lang/String;)La4/h;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->k(La4/f;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public F()I
    .locals 1

    new-instance v0, Landroidx/room/support/h;

    invoke-direct {v0}, Landroidx/room/support/h;-><init>()V

    invoke-direct {p0, v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->q(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public R()J
    .locals 2

    new-instance v0, Landroidx/room/support/i;

    invoke-direct {v0}, Landroidx/room/support/i;-><init>()V

    invoke-direct {p0, v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->q(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(ID)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->m(II)V

    iget-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    aput v0, v1, p1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->e:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public c(IJ)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->m(II)V

    iget-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    aput v0, v1, p1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->d:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->l()V

    return-void
.end method

.method public e(I[B)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->m(II)V

    iget-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    aput v0, v1, p1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->g:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public execute()V
    .locals 1

    new-instance v0, Landroidx/room/support/j;

    invoke-direct {v0}, Landroidx/room/support/j;-><init>()V

    invoke-direct {p0, v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->q(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public g(I)V
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->m(II)V

    iget-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    aput v0, v1, p1

    return-void
.end method

.method public l()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->d:[J

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->e:[D

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->f:[Ljava/lang/String;

    new-array v0, v0, [[B

    iput-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->g:[[B

    return-void
.end method

.method public y(ILjava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->m(II)V

    iget-object v1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->c:[I

    aput v0, v1, p1

    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper$a;->f:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method
