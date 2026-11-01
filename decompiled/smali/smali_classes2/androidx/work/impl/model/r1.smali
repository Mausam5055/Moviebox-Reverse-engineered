.class public final Landroidx/work/impl/model/r1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/model/k0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/r1$c;
    }
.end annotation


# static fields
.field public static final d:Landroidx/work/impl/model/r1$c;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/model/r1$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/model/r1$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/model/r1;->d:Landroidx/work/impl/model/r1$c;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Landroidx/work/impl/model/r1$a;

    invoke-direct {p1}, Landroidx/work/impl/model/r1$a;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/r1;->b:Landroidx/room/g;

    new-instance p1, Landroidx/work/impl/model/r1$b;

    invoke-direct {p1}, Landroidx/work/impl/model/r1$b;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/r1;->c:Landroidx/room/e;

    return-void
.end method

.method private static final A0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z

    invoke-static {p2}, Landroidx/room/util/j;->b(Lz3/b;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final B0(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/model/r1;->b:Landroidx/room/g;

    invoke-virtual {p0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic C(Ljava/lang/String;Lz3/b;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/model/r1;->D0(Ljava/lang/String;Lz3/b;)I

    move-result p0

    return p0
.end method

.method private static final C0(Ljava/lang/String;JLjava/lang/String;Lz3/b;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0, p1, p2}, Lz3/e;->c(IJ)V

    const/4 p1, 0x2

    invoke-interface {p0, p1, p3}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z

    invoke-static {p4}, Landroidx/room/util/j;->b(Lz3/b;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method public static synthetic D(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->L0(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final D0(Ljava/lang/String;Lz3/b;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    invoke-static {p1}, Landroidx/room/util/j;->b(Lz3/b;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method public static synthetic E(Ljava/lang/String;Lz3/b;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/model/r1;->k0(Ljava/lang/String;Lz3/b;)I

    move-result p0

    return p0
.end method

.method private static final E0(Ljava/lang/String;Ljava/lang/String;ILz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p3, 0x1

    :try_start_0
    invoke-interface {p0, p3, p1}, Lz3/e;->j(ILjava/lang/String;)V

    const/4 p1, 0x2

    int-to-long p2, p2

    invoke-interface {p0, p1, p2, p3}, Lz3/e;->c(IJ)V

    invoke-interface {p0}, Lz3/e;->A0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method public static synthetic F(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Lz3/b;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/r1;->J0(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Lz3/b;)I

    move-result p0

    return p0
.end method

.method private static final F0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z

    invoke-static {p2}, Landroidx/room/util/j;->b(Lz3/b;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method public static synthetic G(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->u0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final G0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z

    invoke-static {p2}, Landroidx/room/util/j;->b(Lz3/b;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method public static synthetic H(Ljava/lang/String;ILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/r1;->K0(Ljava/lang/String;ILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final H0(Ljava/lang/String;JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p4, 0x1

    :try_start_0
    invoke-interface {p0, p4, p1, p2}, Lz3/e;->c(IJ)V

    const/4 p1, 0x2

    invoke-interface {p0, p1, p3}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method public static synthetic I(Ljava/lang/String;ILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->m0(Ljava/lang/String;ILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final I0(Ljava/lang/String;Landroidx/work/f;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    sget-object p3, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {p3, p1}, Landroidx/work/f$b;->e(Landroidx/work/f;)[B

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p0, p3, p1}, Lz3/e;->e(I[B)V

    const/4 p1, 0x2

    invoke-interface {p0, p1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method public static synthetic J(Ljava/lang/String;Ljava/lang/String;Lz3/b;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->A0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)I

    move-result p0

    return p0
.end method

.method private static final J0(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Lz3/b;)I
    .locals 2

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    invoke-static {p1}, Landroidx/work/impl/model/a2;->k(Landroidx/work/WorkInfo$State;)I

    move-result p1

    int-to-long v0, p1

    const/4 p1, 0x1

    invoke-interface {p0, p1, v0, v1}, Lz3/e;->c(IJ)V

    const/4 p1, 0x2

    invoke-interface {p0, p1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z

    invoke-static {p3}, Landroidx/room/util/j;->b(Lz3/b;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method public static synthetic K(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/model/r1;->r0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final K0(Ljava/lang/String;ILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p3, 0x1

    int-to-long v0, p1

    :try_start_0
    invoke-interface {p0, p3, v0, v1}, Lz3/e;->c(IJ)V

    const/4 p1, 0x2

    invoke-interface {p0, p1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method public static synthetic L(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->z0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final L0(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/model/r1;->c:Landroidx/room/e;

    invoke-virtual {p0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic M(Landroidx/work/impl/model/r1;Lz3/b;Landroidx/collection/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->j0(Landroidx/work/impl/model/r1;Lz3/b;Landroidx/collection/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Ljava/lang/String;Ljava/lang/String;Lz3/b;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->G0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)I

    move-result p0

    return p0
.end method

.method public static synthetic O(Ljava/lang/String;Ljava/lang/String;Lz3/b;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->F0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)I

    move-result p0

    return p0
.end method

.method public static synthetic P(Landroidx/work/impl/model/r1;Lz3/b;Landroidx/collection/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->h0(Landroidx/work/impl/model/r1;Lz3/b;Landroidx/collection/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->B0(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Landroidx/work/WorkInfo$State;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->t0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Landroidx/work/WorkInfo$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/model/r1;->o0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Ljava/lang/String;JLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/work/impl/model/r1;->H0(Ljava/lang/String;JLjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Ljava/lang/String;JLjava/lang/String;Lz3/b;)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/work/impl/model/r1;->C0(Ljava/lang/String;JLjava/lang/String;Lz3/b;)I

    move-result p0

    return p0
.end method

.method public static synthetic V(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/model/r1;->s0(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Ljava/lang/String;Ljava/lang/String;ILz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/r1;->E0(Ljava/lang/String;Ljava/lang/String;ILz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Ljava/lang/String;ILz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->n0(Ljava/lang/String;ILz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Ljava/lang/String;Lz3/b;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/model/r1;->y0(Ljava/lang/String;Lz3/b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Z(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->w0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Ljava/lang/String;JLz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/r1;->q0(Ljava/lang/String;JLz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/r1;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/r1;->x0(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/r1;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->l0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Ljava/lang/String;Landroidx/work/f;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/r1;->I0(Ljava/lang/String;Landroidx/work/f;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->p0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Landroidx/work/impl/model/j0;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/r1;->v0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Landroidx/work/impl/model/j0;

    move-result-object p0

    return-object p0
.end method

.method private final g0(Lz3/b;Landroidx/collection/a;)V
    .locals 4

    invoke-virtual {p2}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/collection/x0;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    new-instance v0, Landroidx/work/impl/model/e1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/e1;-><init>(Landroidx/work/impl/model/r1;Lz3/b;)V

    invoke-static {p2, v3, v0}, Landroidx/room/util/h;->a(Landroidx/collection/a;ZLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/room/util/n;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lz3/e;->j(ILjava/lang/String;)V

    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "work_spec_id"

    invoke-static {p1, v0}, Landroidx/room/util/k;->c(Lz3/e;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lz3/e;->close()V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lz3/e;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v3, v2}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lz3/e;->close()V

    return-void

    :goto_2
    invoke-interface {p1}, Lz3/e;->close()V

    throw p2
.end method

.method private static final h0(Landroidx/work/impl/model/r1;Lz3/b;Landroidx/collection/a;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_tmpMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/model/r1;->g0(Lz3/b;Landroidx/collection/a;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final i0(Lz3/b;Landroidx/collection/a;)V
    .locals 4

    invoke-virtual {p2}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/collection/x0;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    new-instance v0, Landroidx/work/impl/model/f1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/f1;-><init>(Landroidx/work/impl/model/r1;Lz3/b;)V

    invoke-static {p2, v3, v0}, Landroidx/room/util/h;->a(Landroidx/collection/a;ZLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/room/util/n;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lz3/e;->j(ILjava/lang/String;)V

    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "work_spec_id"

    invoke-static {p1, v0}, Landroidx/room/util/k;->c(Lz3/e;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lz3/e;->close()V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lz3/e;->close()V

    return-void

    :goto_2
    invoke-interface {p1}, Lz3/e;->close()V

    throw p2
.end method

.method private static final j0(Landroidx/work/impl/model/r1;Lz3/b;Landroidx/collection/a;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_tmpMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/model/r1;->i0(Lz3/b;Landroidx/collection/a;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final k0(Ljava/lang/String;Lz3/b;)I
    .locals 2

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, Lz3/e;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lz3/e;->close()V

    return v0

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final l0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final m0(Ljava/lang/String;ILz3/b;)Ljava/util/List;
    .locals 87

    move-object/from16 v0, p2

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    move/from16 v0, p1

    int-to-long v2, v0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v2, "id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "state"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "worker_class_name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "input_merger_class_name"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "output"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "initial_delay"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "interval_duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "flex_duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "run_attempt_count"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_policy"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_delay_duration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_enqueue_time"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "minimum_retention_duration"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v0, "schedule_requested_at"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "run_in_foreground"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "out_of_quota_policy"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "period_count"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "generation"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "next_schedule_time_override"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "next_schedule_time_override_generation"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "stop_reason"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "trace_tag"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "backoff_on_system_interruptions"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "required_network_type"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "required_network_request"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "requires_charging"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "requires_device_idle"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "requires_battery_not_low"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "requires_storage_not_low"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "trigger_content_update_delay"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "trigger_max_content_delay"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    const-string v0, "content_uri_triggers"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move/from16 v33, v14

    move/from16 v68, v15

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object v36

    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v1, v6}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    sget-object v15, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v39

    invoke-interface {v1, v7}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v40

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v43

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move v15, v2

    move/from16 v69, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroidx/work/impl/model/a2;->d(I)Landroidx/work/BackoffPolicy;

    move-result-object v49

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v50

    move/from16 v2, v33

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v52

    move/from16 v3, v68

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v54

    move/from16 v33, v2

    move/from16 v2, p1

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v56

    move/from16 p1, v2

    move/from16 v68, v3

    move/from16 v2, p2

    move/from16 p2, v4

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_0

    move/from16 v3, v16

    const/16 v58, 0x1

    :goto_1
    move/from16 v16, v5

    goto :goto_2

    :cond_0
    move/from16 v3, v16

    const/16 v58, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Landroidx/work/impl/model/a2;->f(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v59

    move v5, v2

    move/from16 v4, v17

    move/from16 v17, v3

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v70, v5

    move/from16 v3, v18

    move/from16 v18, v4

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v19

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v62

    move/from16 v19, v3

    move/from16 v71, v5

    move/from16 v3, v20

    move/from16 v20, v6

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v72, v8

    move/from16 v6, v21

    move/from16 v21, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v22

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v22

    const/16 v47, 0x0

    if-eqz v22, :cond_1

    move/from16 v22, v3

    move/from16 v3, v23

    move-object/from16 v66, v47

    goto :goto_3

    :cond_1
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v66, v22

    move/from16 v22, v3

    move/from16 v3, v23

    :goto_3
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v73, v8

    move/from16 v23, v9

    move-object/from16 v8, v47

    goto :goto_4

    :cond_2
    move/from16 v73, v8

    move/from16 v23, v9

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v67, v8

    move/from16 v8, v24

    :goto_6
    move/from16 v24, v10

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_4
    move/from16 v8, v24

    move-object/from16 v67, v47

    goto :goto_6

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Landroidx/work/impl/model/a2;->e(I)Landroidx/work/NetworkType;

    move-result-object v76

    move/from16 v9, v25

    invoke-interface {v1, v9}, Lz3/e;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/work/impl/model/a2;->l([B)Landroidx/work/impl/utils/v;

    move-result-object v75

    move/from16 v25, v8

    move/from16 v10, v26

    move/from16 v26, v9

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_5

    move/from16 v8, v27

    const/16 v77, 0x1

    :goto_8
    move/from16 v27, v10

    goto :goto_9

    :cond_5
    move/from16 v8, v27

    const/16 v77, 0x0

    goto :goto_8

    :goto_9
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    if-eqz v9, :cond_6

    move/from16 v9, v28

    const/16 v78, 0x1

    :goto_a
    move/from16 v28, v11

    goto :goto_b

    :cond_6
    move/from16 v9, v28

    const/16 v78, 0x0

    goto :goto_a

    :goto_b
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move v11, v8

    if-eqz v10, :cond_7

    move/from16 v10, v29

    const/16 v79, 0x1

    :goto_c
    move/from16 v29, v9

    goto :goto_d

    :cond_7
    move/from16 v10, v29

    const/16 v79, 0x0

    goto :goto_c

    :goto_d
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_8

    move/from16 v8, v30

    const/16 v80, 0x1

    goto :goto_e

    :cond_8
    move/from16 v8, v30

    const/16 v80, 0x0

    :goto_e
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v81

    move/from16 v9, v31

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v83

    move/from16 v30, v3

    move/from16 v3, v32

    invoke-interface {v1, v3}, Lz3/e;->getBlob(I)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/a2;->b([B)Ljava/util/Set;

    move-result-object v85

    new-instance v47, Landroidx/work/d;

    move-object/from16 v74, v47

    invoke-direct/range {v74 .. v85}, Landroidx/work/d;-><init>(Landroidx/work/impl/utils/v;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move/from16 v32, v3

    new-instance v3, Landroidx/work/impl/model/j0;

    move-object/from16 v34, v3

    move/from16 v48, v14

    move/from16 v60, v2

    move/from16 v61, v4

    move/from16 v64, v5

    move/from16 v65, v7

    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/j0;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, p2

    move/from16 v31, v9

    move v2, v15

    move/from16 v5, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v7, v21

    move/from16 v9, v23

    move/from16 v23, v30

    move/from16 v14, v33

    move/from16 v15, v68

    move/from16 v3, v69

    move/from16 p2, v70

    move/from16 v19, v71

    move/from16 v21, v6

    move/from16 v30, v8

    move/from16 v6, v20

    move/from16 v20, v22

    move/from16 v8, v72

    move/from16 v22, v73

    move/from16 v86, v29

    move/from16 v29, v10

    move/from16 v10, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v11

    move/from16 v11, v28

    move/from16 v28, v86

    goto/16 :goto_0

    :cond_9
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v0

    :goto_f
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static final n0(Ljava/lang/String;ILz3/b;)Ljava/util/List;
    .locals 87

    move-object/from16 v0, p2

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    move/from16 v0, p1

    int-to-long v2, v0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v2, "id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "state"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "worker_class_name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "input_merger_class_name"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "output"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "initial_delay"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "interval_duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "flex_duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "run_attempt_count"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_policy"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_delay_duration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_enqueue_time"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "minimum_retention_duration"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v0, "schedule_requested_at"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "run_in_foreground"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "out_of_quota_policy"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "period_count"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "generation"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "next_schedule_time_override"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "next_schedule_time_override_generation"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "stop_reason"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "trace_tag"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "backoff_on_system_interruptions"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "required_network_type"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "required_network_request"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "requires_charging"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "requires_device_idle"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "requires_battery_not_low"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "requires_storage_not_low"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "trigger_content_update_delay"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "trigger_max_content_delay"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    const-string v0, "content_uri_triggers"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move/from16 v33, v14

    move/from16 v68, v15

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object v36

    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v1, v6}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    sget-object v15, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v39

    invoke-interface {v1, v7}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v40

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v43

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move v15, v2

    move/from16 v69, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroidx/work/impl/model/a2;->d(I)Landroidx/work/BackoffPolicy;

    move-result-object v49

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v50

    move/from16 v2, v33

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v52

    move/from16 v3, v68

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v54

    move/from16 v33, v2

    move/from16 v2, p1

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v56

    move/from16 p1, v2

    move/from16 v68, v3

    move/from16 v2, p2

    move/from16 p2, v4

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_0

    move/from16 v3, v16

    const/16 v58, 0x1

    :goto_1
    move/from16 v16, v5

    goto :goto_2

    :cond_0
    move/from16 v3, v16

    const/16 v58, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Landroidx/work/impl/model/a2;->f(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v59

    move v5, v2

    move/from16 v4, v17

    move/from16 v17, v3

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v70, v5

    move/from16 v3, v18

    move/from16 v18, v4

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v19

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v62

    move/from16 v19, v3

    move/from16 v71, v5

    move/from16 v3, v20

    move/from16 v20, v6

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v72, v8

    move/from16 v6, v21

    move/from16 v21, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v22

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v22

    const/16 v47, 0x0

    if-eqz v22, :cond_1

    move/from16 v22, v3

    move/from16 v3, v23

    move-object/from16 v66, v47

    goto :goto_3

    :cond_1
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v66, v22

    move/from16 v22, v3

    move/from16 v3, v23

    :goto_3
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v73, v8

    move/from16 v23, v9

    move-object/from16 v8, v47

    goto :goto_4

    :cond_2
    move/from16 v73, v8

    move/from16 v23, v9

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v67, v8

    move/from16 v8, v24

    :goto_6
    move/from16 v24, v10

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_4
    move/from16 v8, v24

    move-object/from16 v67, v47

    goto :goto_6

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Landroidx/work/impl/model/a2;->e(I)Landroidx/work/NetworkType;

    move-result-object v76

    move/from16 v9, v25

    invoke-interface {v1, v9}, Lz3/e;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/work/impl/model/a2;->l([B)Landroidx/work/impl/utils/v;

    move-result-object v75

    move/from16 v25, v8

    move/from16 v10, v26

    move/from16 v26, v9

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_5

    move/from16 v8, v27

    const/16 v77, 0x1

    :goto_8
    move/from16 v27, v10

    goto :goto_9

    :cond_5
    move/from16 v8, v27

    const/16 v77, 0x0

    goto :goto_8

    :goto_9
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    if-eqz v9, :cond_6

    move/from16 v9, v28

    const/16 v78, 0x1

    :goto_a
    move/from16 v28, v11

    goto :goto_b

    :cond_6
    move/from16 v9, v28

    const/16 v78, 0x0

    goto :goto_a

    :goto_b
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move v11, v8

    if-eqz v10, :cond_7

    move/from16 v10, v29

    const/16 v79, 0x1

    :goto_c
    move/from16 v29, v9

    goto :goto_d

    :cond_7
    move/from16 v10, v29

    const/16 v79, 0x0

    goto :goto_c

    :goto_d
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_8

    move/from16 v8, v30

    const/16 v80, 0x1

    goto :goto_e

    :cond_8
    move/from16 v8, v30

    const/16 v80, 0x0

    :goto_e
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v81

    move/from16 v9, v31

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v83

    move/from16 v30, v3

    move/from16 v3, v32

    invoke-interface {v1, v3}, Lz3/e;->getBlob(I)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/a2;->b([B)Ljava/util/Set;

    move-result-object v85

    new-instance v47, Landroidx/work/d;

    move-object/from16 v74, v47

    invoke-direct/range {v74 .. v85}, Landroidx/work/d;-><init>(Landroidx/work/impl/utils/v;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move/from16 v32, v3

    new-instance v3, Landroidx/work/impl/model/j0;

    move-object/from16 v34, v3

    move/from16 v48, v14

    move/from16 v60, v2

    move/from16 v61, v4

    move/from16 v64, v5

    move/from16 v65, v7

    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/j0;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, p2

    move/from16 v31, v9

    move v2, v15

    move/from16 v5, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v7, v21

    move/from16 v9, v23

    move/from16 v23, v30

    move/from16 v14, v33

    move/from16 v15, v68

    move/from16 v3, v69

    move/from16 p2, v70

    move/from16 v19, v71

    move/from16 v21, v6

    move/from16 v30, v8

    move/from16 v6, v20

    move/from16 v20, v22

    move/from16 v8, v72

    move/from16 v22, v73

    move/from16 v86, v29

    move/from16 v29, v10

    move/from16 v10, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v11

    move/from16 v11, v28

    move/from16 v28, v86

    goto/16 :goto_0

    :cond_9
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v0

    :goto_f
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static final o0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 88

    move-object/from16 v0, p1

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "state"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "worker_class_name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "input_merger_class_name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "input"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "output"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "initial_delay"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "interval_duration"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "flex_duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "run_attempt_count"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "backoff_policy"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_delay_duration"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_enqueue_time"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "minimum_retention_duration"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "schedule_requested_at"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "run_in_foreground"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "out_of_quota_policy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "period_count"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "generation"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "next_schedule_time_override"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "next_schedule_time_override_generation"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "stop_reason"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "trace_tag"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "backoff_on_system_interruptions"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "required_network_type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "required_network_request"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "requires_charging"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "requires_device_idle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "requires_battery_not_low"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "requires_storage_not_low"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "trigger_content_update_delay"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "trigger_max_content_delay"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "content_uri_triggers"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move/from16 v33, v14

    move-object/from16 v68, v15

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object v36

    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v1, v5}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    sget-object v15, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v39

    invoke-interface {v1, v6}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v40

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v43

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move v15, v2

    move/from16 v69, v3

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroidx/work/impl/model/a2;->d(I)Landroidx/work/BackoffPolicy;

    move-result-object v49

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v50

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v52

    move/from16 v2, v33

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v54

    move/from16 v3, p0

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v56

    move/from16 p0, v0

    move/from16 v33, v2

    move/from16 v0, p1

    move/from16 p1, v3

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v34, 0x1

    if-eqz v2, :cond_0

    move/from16 v2, v16

    move/from16 v58, v34

    :goto_1
    move/from16 v16, v4

    goto :goto_2

    :cond_0
    move/from16 v2, v16

    const/16 v58, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/a2;->f(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v59

    move/from16 v3, v17

    move/from16 v17, v5

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v70, v3

    move/from16 v5, v18

    move/from16 v18, v2

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v3, v19

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v62

    move/from16 v19, v0

    move/from16 v71, v5

    move/from16 v0, v20

    move/from16 v20, v6

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v72, v8

    move/from16 v6, v21

    move/from16 v21, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v22

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v22

    const/16 v48, 0x0

    if-eqz v22, :cond_1

    move/from16 v22, v0

    move/from16 v0, v23

    move-object/from16 v66, v48

    goto :goto_3

    :cond_1
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v66, v22

    move/from16 v22, v0

    move/from16 v0, v23

    :goto_3
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v73, v8

    move/from16 v23, v9

    move-object/from16 v8, v48

    goto :goto_4

    :cond_2
    move/from16 v73, v8

    move/from16 v23, v9

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    move/from16 v8, v34

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v67, v8

    move/from16 v8, v24

    :goto_6
    move/from16 v24, v10

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_4
    move/from16 v8, v24

    move-object/from16 v67, v48

    goto :goto_6

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Landroidx/work/impl/model/a2;->e(I)Landroidx/work/NetworkType;

    move-result-object v76

    move/from16 v9, v25

    invoke-interface {v1, v9}, Lz3/e;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/work/impl/model/a2;->l([B)Landroidx/work/impl/utils/v;

    move-result-object v75

    move/from16 v25, v8

    move/from16 v10, v26

    move/from16 v26, v9

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_5

    move/from16 v8, v27

    move/from16 v77, v34

    :goto_8
    move/from16 v27, v10

    goto :goto_9

    :cond_5
    move/from16 v8, v27

    const/16 v77, 0x0

    goto :goto_8

    :goto_9
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    if-eqz v9, :cond_6

    move/from16 v9, v28

    move/from16 v78, v34

    :goto_a
    move/from16 v28, v11

    goto :goto_b

    :cond_6
    move/from16 v9, v28

    const/16 v78, 0x0

    goto :goto_a

    :goto_b
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move v11, v8

    if-eqz v10, :cond_7

    move/from16 v10, v29

    move/from16 v79, v34

    :goto_c
    move/from16 v29, v9

    goto :goto_d

    :cond_7
    move/from16 v10, v29

    const/16 v79, 0x0

    goto :goto_c

    :goto_d
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_8

    move/from16 v8, v30

    move/from16 v80, v34

    goto :goto_e

    :cond_8
    move/from16 v8, v30

    const/16 v80, 0x0

    :goto_e
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v81

    move/from16 v9, v31

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v83

    move/from16 v30, v0

    move/from16 v0, v32

    invoke-interface {v1, v0}, Lz3/e;->getBlob(I)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/a2;->b([B)Ljava/util/Set;

    move-result-object v85

    new-instance v47, Landroidx/work/d;

    move-object/from16 v74, v47

    invoke-direct/range {v74 .. v85}, Landroidx/work/d;-><init>(Landroidx/work/impl/utils/v;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move/from16 v32, v0

    new-instance v0, Landroidx/work/impl/model/j0;

    move-object/from16 v34, v0

    move/from16 v48, v14

    move/from16 v60, v4

    move/from16 v61, v2

    move/from16 v64, v5

    move/from16 v65, v7

    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/j0;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v2, v68

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 p0, p1

    move/from16 v31, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v16, v18

    move/from16 p1, v19

    move/from16 v7, v21

    move/from16 v9, v23

    move/from16 v23, v30

    move/from16 v14, v33

    move/from16 v17, v70

    move/from16 v18, v71

    move/from16 v19, v3

    move/from16 v21, v6

    move/from16 v30, v8

    move/from16 v6, v20

    move/from16 v20, v22

    move/from16 v3, v69

    move/from16 v8, v72

    move/from16 v22, v73

    move/from16 v86, v15

    move-object v15, v2

    move/from16 v2, v86

    move/from16 v87, v29

    move/from16 v29, v10

    move/from16 v10, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v11

    move/from16 v11, v28

    move/from16 v28, v87

    goto/16 :goto_0

    :cond_9
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_f
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static final p0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, Lz3/e;->j(ILjava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lz3/e;->getBlob(I)[B

    move-result-object p2

    sget-object v0, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v0, p2}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lz3/e;->close()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final q0(Ljava/lang/String;JLz3/b;)Ljava/util/List;
    .locals 86

    move-object/from16 v0, p3

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v0, 0x1

    move-wide/from16 v2, p1

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lz3/e;->c(IJ)V

    const-string v2, "id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "state"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "worker_class_name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "input_merger_class_name"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "output"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "initial_delay"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "interval_duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "flex_duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "run_attempt_count"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_policy"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_delay_duration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_enqueue_time"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "minimum_retention_duration"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v0, "schedule_requested_at"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "run_in_foreground"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "out_of_quota_policy"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p3, v0

    const-string v0, "period_count"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "generation"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "next_schedule_time_override"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "next_schedule_time_override_generation"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "stop_reason"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "trace_tag"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "backoff_on_system_interruptions"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "required_network_type"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "required_network_request"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "requires_charging"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "requires_device_idle"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "requires_battery_not_low"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "requires_storage_not_low"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "trigger_content_update_delay"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "trigger_max_content_delay"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "content_uri_triggers"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v32

    if-eqz v32, :cond_9

    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v34

    move/from16 v32, v14

    move/from16 v67, v15

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object v35

    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v1, v6}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    sget-object v15, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v38

    invoke-interface {v1, v7}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v39

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v40

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v42

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v44

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move v15, v2

    move/from16 v68, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroidx/work/impl/model/a2;->d(I)Landroidx/work/BackoffPolicy;

    move-result-object v48

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v49

    move/from16 v2, v32

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v51

    move/from16 v3, v67

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v53

    move/from16 v32, v2

    move/from16 v2, p1

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v55

    move/from16 p1, v2

    move/from16 v67, v3

    move/from16 v2, p2

    move/from16 p2, v4

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_0

    move/from16 v3, p3

    move/from16 p3, v5

    const/16 v57, 0x1

    goto :goto_1

    :cond_0
    move/from16 v3, p3

    move/from16 p3, v5

    const/16 v57, 0x0

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Landroidx/work/impl/model/a2;->f(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v58

    move v5, v2

    move/from16 v4, v16

    move/from16 v16, v3

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v69, v5

    move/from16 v3, v17

    move/from16 v17, v4

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v18

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v61

    move/from16 v18, v3

    move/from16 v70, v5

    move/from16 v3, v19

    move/from16 v19, v6

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v71, v8

    move/from16 v6, v20

    move/from16 v20, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v21

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v21

    const/16 v46, 0x0

    if-eqz v21, :cond_1

    move/from16 v21, v3

    move/from16 v3, v22

    move-object/from16 v65, v46

    goto :goto_2

    :cond_1
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v65, v21

    move/from16 v21, v3

    move/from16 v3, v22

    :goto_2
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_2

    move/from16 v72, v8

    move/from16 v22, v9

    move-object/from16 v8, v46

    goto :goto_3

    :cond_2
    move/from16 v72, v8

    move/from16 v22, v9

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v66, v8

    move/from16 v8, v23

    :goto_5
    move/from16 v23, v10

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_4
    move/from16 v8, v23

    move-object/from16 v66, v46

    goto :goto_5

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Landroidx/work/impl/model/a2;->e(I)Landroidx/work/NetworkType;

    move-result-object v75

    move/from16 v9, v24

    invoke-interface {v1, v9}, Lz3/e;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/work/impl/model/a2;->l([B)Landroidx/work/impl/utils/v;

    move-result-object v74

    move/from16 v24, v8

    move/from16 v10, v25

    move/from16 v25, v9

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_5

    move/from16 v8, v26

    const/16 v76, 0x1

    :goto_7
    move/from16 v26, v10

    goto :goto_8

    :cond_5
    move/from16 v8, v26

    const/16 v76, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    if-eqz v9, :cond_6

    move/from16 v9, v27

    const/16 v77, 0x1

    :goto_9
    move/from16 v27, v11

    goto :goto_a

    :cond_6
    move/from16 v9, v27

    const/16 v77, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move v11, v8

    if-eqz v10, :cond_7

    move/from16 v10, v28

    const/16 v78, 0x1

    :goto_b
    move/from16 v28, v9

    goto :goto_c

    :cond_7
    move/from16 v10, v28

    const/16 v78, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_8

    move/from16 v8, v29

    const/16 v79, 0x1

    goto :goto_d

    :cond_8
    move/from16 v8, v29

    const/16 v79, 0x0

    :goto_d
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v80

    move/from16 v9, v30

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v82

    move/from16 v29, v3

    move/from16 v3, v31

    invoke-interface {v1, v3}, Lz3/e;->getBlob(I)[B

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/a2;->b([B)Ljava/util/Set;

    move-result-object v84

    new-instance v46, Landroidx/work/d;

    move-object/from16 v73, v46

    invoke-direct/range {v73 .. v84}, Landroidx/work/d;-><init>(Landroidx/work/impl/utils/v;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move/from16 v31, v3

    new-instance v3, Landroidx/work/impl/model/j0;

    move-object/from16 v33, v3

    move/from16 v47, v14

    move/from16 v59, v2

    move/from16 v60, v4

    move/from16 v63, v5

    move/from16 v64, v7

    invoke-direct/range {v33 .. v66}, Landroidx/work/impl/model/j0;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v30, v9

    move v2, v15

    move/from16 p3, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v7, v20

    move/from16 v9, v22

    move/from16 v22, v29

    move/from16 v14, v32

    move/from16 v15, v67

    move/from16 v3, v68

    move/from16 p2, v69

    move/from16 v18, v70

    move/from16 v20, v6

    move/from16 v29, v8

    move/from16 v6, v19

    move/from16 v19, v21

    move/from16 v8, v71

    move/from16 v21, v72

    move/from16 v85, v28

    move/from16 v28, v10

    move/from16 v10, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v11

    move/from16 v11, v27

    move/from16 v27, v85

    goto/16 :goto_0

    :cond_9
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v0

    :goto_e
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static final r0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 88

    move-object/from16 v0, p1

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "state"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "worker_class_name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "input_merger_class_name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "input"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "output"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "initial_delay"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "interval_duration"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "flex_duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "run_attempt_count"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "backoff_policy"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_delay_duration"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_enqueue_time"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "minimum_retention_duration"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "schedule_requested_at"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "run_in_foreground"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "out_of_quota_policy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "period_count"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "generation"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "next_schedule_time_override"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "next_schedule_time_override_generation"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "stop_reason"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "trace_tag"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "backoff_on_system_interruptions"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "required_network_type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "required_network_request"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "requires_charging"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "requires_device_idle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "requires_battery_not_low"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "requires_storage_not_low"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "trigger_content_update_delay"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "trigger_max_content_delay"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "content_uri_triggers"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move/from16 v33, v14

    move-object/from16 v68, v15

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object v36

    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v1, v5}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    sget-object v15, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v39

    invoke-interface {v1, v6}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v40

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v43

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move v15, v2

    move/from16 v69, v3

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroidx/work/impl/model/a2;->d(I)Landroidx/work/BackoffPolicy;

    move-result-object v49

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v50

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v52

    move/from16 v2, v33

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v54

    move/from16 v3, p0

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v56

    move/from16 p0, v0

    move/from16 v33, v2

    move/from16 v0, p1

    move/from16 p1, v3

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v34, 0x1

    if-eqz v2, :cond_0

    move/from16 v2, v16

    move/from16 v58, v34

    :goto_1
    move/from16 v16, v4

    goto :goto_2

    :cond_0
    move/from16 v2, v16

    const/16 v58, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/a2;->f(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v59

    move/from16 v3, v17

    move/from16 v17, v5

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v70, v3

    move/from16 v5, v18

    move/from16 v18, v2

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v3, v19

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v62

    move/from16 v19, v0

    move/from16 v71, v5

    move/from16 v0, v20

    move/from16 v20, v6

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v72, v8

    move/from16 v6, v21

    move/from16 v21, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v22

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v22

    const/16 v48, 0x0

    if-eqz v22, :cond_1

    move/from16 v22, v0

    move/from16 v0, v23

    move-object/from16 v66, v48

    goto :goto_3

    :cond_1
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v66, v22

    move/from16 v22, v0

    move/from16 v0, v23

    :goto_3
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v73, v8

    move/from16 v23, v9

    move-object/from16 v8, v48

    goto :goto_4

    :cond_2
    move/from16 v73, v8

    move/from16 v23, v9

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    move/from16 v8, v34

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v67, v8

    move/from16 v8, v24

    :goto_6
    move/from16 v24, v10

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_4
    move/from16 v8, v24

    move-object/from16 v67, v48

    goto :goto_6

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Landroidx/work/impl/model/a2;->e(I)Landroidx/work/NetworkType;

    move-result-object v76

    move/from16 v9, v25

    invoke-interface {v1, v9}, Lz3/e;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/work/impl/model/a2;->l([B)Landroidx/work/impl/utils/v;

    move-result-object v75

    move/from16 v25, v8

    move/from16 v10, v26

    move/from16 v26, v9

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_5

    move/from16 v8, v27

    move/from16 v77, v34

    :goto_8
    move/from16 v27, v10

    goto :goto_9

    :cond_5
    move/from16 v8, v27

    const/16 v77, 0x0

    goto :goto_8

    :goto_9
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    if-eqz v9, :cond_6

    move/from16 v9, v28

    move/from16 v78, v34

    :goto_a
    move/from16 v28, v11

    goto :goto_b

    :cond_6
    move/from16 v9, v28

    const/16 v78, 0x0

    goto :goto_a

    :goto_b
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move v11, v8

    if-eqz v10, :cond_7

    move/from16 v10, v29

    move/from16 v79, v34

    :goto_c
    move/from16 v29, v9

    goto :goto_d

    :cond_7
    move/from16 v10, v29

    const/16 v79, 0x0

    goto :goto_c

    :goto_d
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_8

    move/from16 v8, v30

    move/from16 v80, v34

    goto :goto_e

    :cond_8
    move/from16 v8, v30

    const/16 v80, 0x0

    :goto_e
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v81

    move/from16 v9, v31

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v83

    move/from16 v30, v0

    move/from16 v0, v32

    invoke-interface {v1, v0}, Lz3/e;->getBlob(I)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/a2;->b([B)Ljava/util/Set;

    move-result-object v85

    new-instance v47, Landroidx/work/d;

    move-object/from16 v74, v47

    invoke-direct/range {v74 .. v85}, Landroidx/work/d;-><init>(Landroidx/work/impl/utils/v;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move/from16 v32, v0

    new-instance v0, Landroidx/work/impl/model/j0;

    move-object/from16 v34, v0

    move/from16 v48, v14

    move/from16 v60, v4

    move/from16 v61, v2

    move/from16 v64, v5

    move/from16 v65, v7

    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/j0;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v2, v68

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 p0, p1

    move/from16 v31, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v16, v18

    move/from16 p1, v19

    move/from16 v7, v21

    move/from16 v9, v23

    move/from16 v23, v30

    move/from16 v14, v33

    move/from16 v17, v70

    move/from16 v18, v71

    move/from16 v19, v3

    move/from16 v21, v6

    move/from16 v30, v8

    move/from16 v6, v20

    move/from16 v20, v22

    move/from16 v3, v69

    move/from16 v8, v72

    move/from16 v22, v73

    move/from16 v86, v15

    move-object v15, v2

    move/from16 v2, v86

    move/from16 v87, v29

    move/from16 v29, v10

    move/from16 v10, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v11

    move/from16 v11, v28

    move/from16 v28, v87

    goto/16 :goto_0

    :cond_9
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_f
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static final s0(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 88

    move-object/from16 v0, p1

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "state"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "worker_class_name"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "input_merger_class_name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "input"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "output"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "initial_delay"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "interval_duration"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "flex_duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "run_attempt_count"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "backoff_policy"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_delay_duration"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_enqueue_time"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "minimum_retention_duration"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "schedule_requested_at"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "run_in_foreground"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "out_of_quota_policy"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "period_count"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "generation"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "next_schedule_time_override"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "next_schedule_time_override_generation"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "stop_reason"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "trace_tag"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "backoff_on_system_interruptions"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "required_network_type"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "required_network_request"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "requires_charging"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "requires_device_idle"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "requires_battery_not_low"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "requires_storage_not_low"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "trigger_content_update_delay"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "trigger_max_content_delay"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "content_uri_triggers"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-interface {v1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    move/from16 v33, v14

    move-object/from16 v68, v15

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object v36

    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v1, v5}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    sget-object v15, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v39

    invoke-interface {v1, v6}, Lz3/e;->getBlob(I)[B

    move-result-object v14

    invoke-virtual {v15, v14}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v40

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v43

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move v15, v2

    move/from16 v69, v3

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroidx/work/impl/model/a2;->d(I)Landroidx/work/BackoffPolicy;

    move-result-object v49

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v50

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v52

    move/from16 v2, v33

    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v54

    move/from16 v3, p0

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v56

    move/from16 p0, v0

    move/from16 v33, v2

    move/from16 v0, p1

    move/from16 p1, v3

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v34, 0x1

    if-eqz v2, :cond_0

    move/from16 v2, v16

    move/from16 v58, v34

    :goto_1
    move/from16 v16, v4

    goto :goto_2

    :cond_0
    move/from16 v2, v16

    const/16 v58, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/a2;->f(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v59

    move/from16 v3, v17

    move/from16 v17, v5

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v70, v3

    move/from16 v5, v18

    move/from16 v18, v2

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v3, v19

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v62

    move/from16 v19, v0

    move/from16 v71, v5

    move/from16 v0, v20

    move/from16 v20, v6

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v72, v8

    move/from16 v6, v21

    move/from16 v21, v7

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v22

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v22

    const/16 v48, 0x0

    if-eqz v22, :cond_1

    move/from16 v22, v0

    move/from16 v0, v23

    move-object/from16 v66, v48

    goto :goto_3

    :cond_1
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v66, v22

    move/from16 v22, v0

    move/from16 v0, v23

    :goto_3
    invoke-interface {v1, v0}, Lz3/e;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_2

    move/from16 v73, v8

    move/from16 v23, v9

    move-object/from16 v8, v48

    goto :goto_4

    :cond_2
    move/from16 v73, v8

    move/from16 v23, v9

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    move/from16 v8, v34

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v67, v8

    move/from16 v8, v24

    :goto_6
    move/from16 v24, v10

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_4
    move/from16 v8, v24

    move-object/from16 v67, v48

    goto :goto_6

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Landroidx/work/impl/model/a2;->e(I)Landroidx/work/NetworkType;

    move-result-object v76

    move/from16 v9, v25

    invoke-interface {v1, v9}, Lz3/e;->getBlob(I)[B

    move-result-object v10

    invoke-static {v10}, Landroidx/work/impl/model/a2;->l([B)Landroidx/work/impl/utils/v;

    move-result-object v75

    move/from16 v25, v8

    move/from16 v10, v26

    move/from16 v26, v9

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_5

    move/from16 v8, v27

    move/from16 v77, v34

    :goto_8
    move/from16 v27, v10

    goto :goto_9

    :cond_5
    move/from16 v8, v27

    const/16 v77, 0x0

    goto :goto_8

    :goto_9
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    if-eqz v9, :cond_6

    move/from16 v9, v28

    move/from16 v78, v34

    :goto_a
    move/from16 v28, v11

    goto :goto_b

    :cond_6
    move/from16 v9, v28

    const/16 v78, 0x0

    goto :goto_a

    :goto_b
    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move v11, v8

    if-eqz v10, :cond_7

    move/from16 v10, v29

    move/from16 v79, v34

    :goto_c
    move/from16 v29, v9

    goto :goto_d

    :cond_7
    move/from16 v10, v29

    const/16 v79, 0x0

    goto :goto_c

    :goto_d
    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_8

    move/from16 v8, v30

    move/from16 v80, v34

    goto :goto_e

    :cond_8
    move/from16 v8, v30

    const/16 v80, 0x0

    :goto_e
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v81

    move/from16 v9, v31

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v83

    move/from16 v30, v0

    move/from16 v0, v32

    invoke-interface {v1, v0}, Lz3/e;->getBlob(I)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/a2;->b([B)Ljava/util/Set;

    move-result-object v85

    new-instance v47, Landroidx/work/d;

    move-object/from16 v74, v47

    invoke-direct/range {v74 .. v85}, Landroidx/work/d;-><init>(Landroidx/work/impl/utils/v;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move/from16 v32, v0

    new-instance v0, Landroidx/work/impl/model/j0;

    move-object/from16 v34, v0

    move/from16 v48, v14

    move/from16 v60, v4

    move/from16 v61, v2

    move/from16 v64, v5

    move/from16 v65, v7

    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/j0;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v2, v68

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 p0, p1

    move/from16 v31, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v16, v18

    move/from16 p1, v19

    move/from16 v7, v21

    move/from16 v9, v23

    move/from16 v23, v30

    move/from16 v14, v33

    move/from16 v17, v70

    move/from16 v18, v71

    move/from16 v19, v3

    move/from16 v21, v6

    move/from16 v30, v8

    move/from16 v6, v20

    move/from16 v20, v22

    move/from16 v3, v69

    move/from16 v8, v72

    move/from16 v22, v73

    move/from16 v86, v15

    move-object v15, v2

    move/from16 v2, v86

    move/from16 v87, v29

    move/from16 v29, v10

    move/from16 v10, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v11

    move/from16 v11, v28

    move/from16 v28, v87

    goto/16 :goto_0

    :cond_9
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_f
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static final t0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Landroidx/work/WorkInfo$State;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    return-object p2

    :goto_2
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final u0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, Lz3/e;->j(ILjava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lz3/e;->close()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final v0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Landroidx/work/impl/model/j0;
    .locals 68

    move-object/from16 v0, p2

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    :try_start_0
    invoke-interface {v1, v0, v2}, Lz3/e;->j(ILjava/lang/String;)V

    const-string v2, "id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "state"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "worker_class_name"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "input_merger_class_name"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "output"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "initial_delay"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "interval_duration"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "flex_duration"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "run_attempt_count"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_policy"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_delay_duration"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_enqueue_time"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "minimum_retention_duration"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v0, "schedule_requested_at"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    const-string v0, "run_in_foreground"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    const-string v0, "out_of_quota_policy"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "period_count"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "generation"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "next_schedule_time_override"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "next_schedule_time_override_generation"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "stop_reason"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "trace_tag"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "backoff_on_system_interruptions"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "required_network_type"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "required_network_request"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "requires_charging"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "requires_device_idle"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "requires_battery_not_low"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "requires_storage_not_low"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "trigger_content_update_delay"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "trigger_max_content_delay"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    const-string v0, "content_uri_triggers"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v32

    const/16 v33, 0x0

    if-eqz v32, :cond_9

    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object v36

    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v1, v6}, Lz3/e;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v3, v2}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v39

    invoke-interface {v1, v7}, Lz3/e;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v40

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v41

    invoke-interface {v1, v9}, Lz3/e;->getLong(I)J

    move-result-wide v43

    invoke-interface {v1, v10}, Lz3/e;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Landroidx/work/impl/model/a2;->d(I)Landroidx/work/BackoffPolicy;

    move-result-object v49

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v50

    invoke-interface {v1, v14}, Lz3/e;->getLong(I)J

    move-result-wide v52

    invoke-interface {v1, v15}, Lz3/e;->getLong(I)J

    move-result-wide v54

    move/from16 v3, p1

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v56

    move/from16 v3, p2

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move/from16 v3, v16

    const/16 v58, 0x1

    goto :goto_0

    :cond_0
    move/from16 v58, v4

    move/from16 v3, v16

    :goto_0
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    invoke-static {v3}, Landroidx/work/impl/model/a2;->f(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v59

    move/from16 v3, v17

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v3, v5

    move/from16 v5, v18

    invoke-interface {v1, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v19

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v62

    move/from16 v6, v20

    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    move/from16 v7, v21

    invoke-interface {v1, v7}, Lz3/e;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, v22

    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move/from16 v8, v23

    move-object/from16 v66, v33

    goto :goto_1

    :cond_1
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v66, v8

    move/from16 v8, v23

    :goto_1
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v8, v33

    goto :goto_2

    :cond_2
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    :cond_4
    move/from16 v8, v24

    move-object/from16 v67, v33

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :goto_4
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Landroidx/work/impl/model/a2;->e(I)Landroidx/work/NetworkType;

    move-result-object v11

    move/from16 v8, v25

    invoke-interface {v1, v8}, Lz3/e;->getBlob(I)[B

    move-result-object v8

    invoke-static {v8}, Landroidx/work/impl/model/a2;->l([B)Landroidx/work/impl/utils/v;

    move-result-object v10

    move/from16 v8, v26

    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_5

    move/from16 v8, v27

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    move v12, v4

    move/from16 v8, v27

    :goto_5
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_6

    move/from16 v8, v28

    const/4 v13, 0x1

    goto :goto_6

    :cond_6
    move v13, v4

    move/from16 v8, v28

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_7

    move/from16 v8, v29

    const/4 v14, 0x1

    goto :goto_7

    :cond_7
    move v14, v4

    move/from16 v8, v29

    :goto_7
    invoke-interface {v1, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_8

    move/from16 v4, v30

    const/4 v15, 0x1

    goto :goto_8

    :cond_8
    move v15, v4

    move/from16 v4, v30

    :goto_8
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v16

    move/from16 v4, v31

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v18

    invoke-interface {v1, v0}, Lz3/e;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/model/a2;->b([B)Ljava/util/Set;

    move-result-object v20

    new-instance v47, Landroidx/work/d;

    move-object/from16 v9, v47

    invoke-direct/range {v9 .. v20}, Landroidx/work/d;-><init>(Landroidx/work/impl/utils/v;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    new-instance v33, Landroidx/work/impl/model/j0;

    move-object/from16 v34, v33

    move/from16 v48, v2

    move/from16 v60, v3

    move/from16 v61, v5

    move/from16 v64, v6

    move/from16 v65, v7

    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/j0;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v33

    :goto_9
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static final w0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 3

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, Lz3/e;->j(ILjava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, Lz3/e;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/model/j0$b;

    invoke-direct {v2, v0, v1}, Landroidx/work/impl/model/j0$b;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lz3/e;->close()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final x0(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/r1;Lz3/b;)Ljava/util/List;
    .locals 45

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "getValue(...)"

    const-string v3, "_connection"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v3

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Lz3/e;->j(ILjava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    new-instance v4, Landroidx/collection/a;

    invoke-direct {v4}, Landroidx/collection/a;-><init>()V

    new-instance v6, Landroidx/collection/a;

    invoke-direct {v6}, Landroidx/collection/a;-><init>()V

    :cond_1
    :goto_1
    invoke-interface {v3}, Lz3/e;->A0()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-interface {v3, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v7, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v3, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lz3/e;->reset()V

    invoke-direct {v0, v1, v4}, Landroidx/work/impl/model/r1;->i0(Lz3/b;Landroidx/collection/a;)V

    invoke-direct {v0, v1, v6}, Landroidx/work/impl/model/r1;->g0(Lz3/b;Landroidx/collection/a;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v3}, Lz3/e;->A0()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v5}, Lz3/e;->getLong(I)J

    move-result-wide v11

    long-to-int v1, v11

    invoke-static {v1}, Landroidx/work/impl/model/a2;->g(I)Landroidx/work/WorkInfo$State;

    move-result-object v11

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Lz3/e;->getBlob(I)[B

    move-result-object v1

    sget-object v7, Landroidx/work/f;->b:Landroidx/work/f$b;

    invoke-virtual {v7, v1}, Landroidx/work/f$b;->a([B)Landroidx/work/f;

    move-result-object v12

    const/4 v1, 0x3

    invoke-interface {v3, v1}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v1, v13

    const/4 v7, 0x4

    invoke-interface {v3, v7}, Lz3/e;->getLong(I)J

    move-result-wide v13

    long-to-int v7, v13

    const/16 v9, 0xe

    invoke-interface {v3, v9}, Lz3/e;->getLong(I)J

    move-result-wide v13

    const/16 v9, 0xf

    invoke-interface {v3, v9}, Lz3/e;->getLong(I)J

    move-result-wide v15

    const/16 v9, 0x10

    invoke-interface {v3, v9}, Lz3/e;->getLong(I)J

    move-result-wide v17

    const/16 v9, 0x11

    move-object/from16 p1, v6

    invoke-interface {v3, v9}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Landroidx/work/impl/model/a2;->d(I)Landroidx/work/BackoffPolicy;

    move-result-object v21

    const/16 v5, 0x12

    invoke-interface {v3, v5}, Lz3/e;->getLong(I)J

    move-result-wide v22

    const/16 v5, 0x13

    invoke-interface {v3, v5}, Lz3/e;->getLong(I)J

    move-result-wide v24

    const/16 v5, 0x14

    invoke-interface {v3, v5}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    const/16 v6, 0x15

    invoke-interface {v3, v6}, Lz3/e;->getLong(I)J

    move-result-wide v28

    const/16 v6, 0x16

    invoke-interface {v3, v6}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v6, v8

    const/4 v8, 0x5

    invoke-interface {v3, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Landroidx/work/impl/model/a2;->e(I)Landroidx/work/NetworkType;

    move-result-object v35

    const/4 v8, 0x6

    invoke-interface {v3, v8}, Lz3/e;->getBlob(I)[B

    move-result-object v8

    invoke-static {v8}, Landroidx/work/impl/model/a2;->l([B)Landroidx/work/impl/utils/v;

    move-result-object v34

    const/4 v8, 0x7

    invoke-interface {v3, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_4

    const/16 v36, 0x1

    goto :goto_3

    :cond_4
    const/16 v36, 0x0

    :goto_3
    const/16 v8, 0x8

    invoke-interface {v3, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_5

    const/16 v37, 0x1

    goto :goto_4

    :cond_5
    const/16 v37, 0x0

    :goto_4
    const/16 v8, 0x9

    invoke-interface {v3, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_6

    const/16 v38, 0x1

    goto :goto_5

    :cond_6
    const/16 v38, 0x0

    :goto_5
    const/16 v8, 0xa

    invoke-interface {v3, v8}, Lz3/e;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_7

    const/16 v39, 0x1

    goto :goto_6

    :cond_7
    const/16 v39, 0x0

    :goto_6
    const/16 v8, 0xb

    invoke-interface {v3, v8}, Lz3/e;->getLong(I)J

    move-result-wide v40

    const/16 v8, 0xc

    invoke-interface {v3, v8}, Lz3/e;->getLong(I)J

    move-result-wide v42

    const/16 v8, 0xd

    invoke-interface {v3, v8}, Lz3/e;->getBlob(I)[B

    move-result-object v8

    invoke-static {v8}, Landroidx/work/impl/model/a2;->b([B)Ljava/util/Set;

    move-result-object v44

    new-instance v19, Landroidx/work/d;

    move-object/from16 v33, v19

    invoke-direct/range {v33 .. v44}, Landroidx/work/d;-><init>(Landroidx/work/impl/utils/v;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v31, v9

    check-cast v31, Ljava/util/List;

    invoke-interface {v3, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, p1

    invoke-static {v8, v9}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v32, v9

    check-cast v32, Ljava/util/List;

    new-instance v9, Landroidx/work/impl/model/j0$c;

    move-object/from16 p1, v9

    move-object/from16 v9, p1

    move/from16 v20, v1

    move/from16 v26, v5

    move/from16 v27, v7

    move/from16 v30, v6

    invoke-direct/range {v9 .. v32}, Landroidx/work/impl/model/j0$c;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_8
    invoke-interface {v3}, Lz3/e;->close()V

    return-object v0

    :goto_7
    invoke-interface {v3}, Lz3/e;->close()V

    throw v0
.end method

.method private static final y0(Ljava/lang/String;Lz3/b;)Z
    .locals 3

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, Lz3/e;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lz3/e;->close()V

    return v0

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final z0(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method


# virtual methods
.method public A()I
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/l1;

    const-string v2, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    invoke-direct {v1, v2}, Landroidx/work/impl/model/l1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public B(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/z0;

    const-string v2, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    invoke-direct {v1, v2, p1, p2}, Landroidx/work/impl/model/z0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/k1;

    const-string v2, "UPDATE workspec SET stop_reason=? WHERE id=?"

    invoke-direct {v1, v2, p2, p1}, Landroidx/work/impl/model/k1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/m1;

    const-string v2, "DELETE FROM workspec WHERE id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/m1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public c(Landroidx/work/impl/model/j0;)V
    .locals 3

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/g1;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/model/g1;-><init>(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/b1;

    const-string v2, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/b1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public e(J)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/h1;

    const-string v2, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    invoke-direct {v1, v2, p1, p2}, Landroidx/work/impl/model/h1;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public f(Landroidx/work/impl/model/j0;)V
    .locals 3

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/y0;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/model/y0;-><init>(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public g()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/o0;

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    invoke-direct {v1, v2}, Landroidx/work/impl/model/o0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/u0;

    const-string v2, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/u0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public i(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/t0;

    const-string v2, "SELECT state FROM workspec WHERE id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/t0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/WorkInfo$State;

    return-object p1
.end method

.method public j(Ljava/lang/String;)Landroidx/work/impl/model/j0;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/n0;

    const-string v2, "SELECT * FROM workspec WHERE id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/n0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/model/j0;

    return-object p1
.end method

.method public k(Ljava/lang/String;)I
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/v0;

    const-string v2, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/v0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/d1;

    const-string v2, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/d1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public m(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/o1;

    const-string v2, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/o1;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public n()I
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/p1;

    const-string v2, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    invoke-direct {v1, v2}, Landroidx/work/impl/model/p1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public o(Ljava/lang/String;J)I
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/q0;

    const-string v2, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    invoke-direct {v1, v2, p2, p3, p1}, Landroidx/work/impl/model/q0;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/q1;

    const-string v2, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/q1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public q()Lkotlinx/coroutines/flow/b;
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    const-string v1, "workspec"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/model/n1;

    const-string v3, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    invoke-direct {v2, v3}, Landroidx/work/impl/model/n1;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/coroutines/FlowUtil;->a(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/b;

    move-result-object v0

    return-object v0
.end method

.method public r(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/p0;

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/p0;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public s(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/s0;

    const-string v2, "UPDATE workspec SET state=? WHERE id=?"

    invoke-direct {v1, v2, p1, p2}, Landroidx/work/impl/model/s0;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public t(Ljava/lang/String;Landroidx/work/f;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/w0;

    const-string v2, "UPDATE workspec SET output=? WHERE id=?"

    invoke-direct {v1, v2, p2, p1}, Landroidx/work/impl/model/w0;-><init>(Ljava/lang/String;Landroidx/work/f;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public u(Ljava/lang/String;J)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/x0;

    const-string v2, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    invoke-direct {v1, v2, p2, p3, p1}, Landroidx/work/impl/model/x0;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public v()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/r0;

    const-string v2, "SELECT * FROM workspec WHERE state=1"

    invoke-direct {v1, v2}, Landroidx/work/impl/model/r0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/j1;

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    invoke-direct {v1, v2}, Landroidx/work/impl/model/j1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public x(Ljava/lang/String;)I
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/a1;

    const-string v2, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/a1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public y(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 5

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/room/util/n;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->y()Landroidx/room/InvalidationTracker;

    move-result-object v1

    const-string v2, "WorkProgress"

    const-string v3, "workspec"

    const-string v4, "WorkTag"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/c1;

    invoke-direct {v3, v0, p1, p0}, Landroidx/work/impl/model/c1;-><init>(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/r1;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroidx/room/InvalidationTracker;->m([Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/lang/String;)I
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/r1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/i1;

    const-string v2, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/i1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method
