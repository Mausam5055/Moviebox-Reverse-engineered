.class public final Lp0/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lp0/b;

.field private static final b:[F

.field private static volatile c:Landroidx/collection/y0;

.field private static final d:[Ljava/lang/Object;

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lp0/b;

    invoke-direct {v0}, Lp0/b;-><init>()V

    sput-object v0, Lp0/b;->a:Lp0/b;

    const/16 v1, 0x9

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sput-object v2, Lp0/b;->b:[F

    new-instance v2, Landroidx/collection/y0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroidx/collection/y0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lp0/b;->c:Landroidx/collection/y0;

    new-array v2, v4, [Ljava/lang/Object;

    sput-object v2, Lp0/b;->d:[Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lp0/b;->c:Landroidx/collection/y0;

    new-instance v6, Lp0/c;

    new-array v7, v1, [F

    fill-array-data v7, :array_1

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    invoke-direct {v6, v7, v8}, Lp0/c;-><init>([F[F)V

    const v7, 0x3f933333    # 1.15f

    invoke-direct {v0, v3, v7, v6}, Lp0/b;->h(Landroidx/collection/y0;FLp0/a;)V

    sget-object v3, Lp0/b;->c:Landroidx/collection/y0;

    new-instance v6, Lp0/c;

    new-array v7, v1, [F

    fill-array-data v7, :array_3

    new-array v8, v1, [F

    fill-array-data v8, :array_4

    invoke-direct {v6, v7, v8}, Lp0/c;-><init>([F[F)V

    const v7, 0x3fa66666    # 1.3f

    invoke-direct {v0, v3, v7, v6}, Lp0/b;->h(Landroidx/collection/y0;FLp0/a;)V

    sget-object v3, Lp0/b;->c:Landroidx/collection/y0;

    new-instance v6, Lp0/c;

    new-array v7, v1, [F

    fill-array-data v7, :array_5

    new-array v8, v1, [F

    fill-array-data v8, :array_6

    invoke-direct {v6, v7, v8}, Lp0/c;-><init>([F[F)V

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v0, v3, v7, v6}, Lp0/b;->h(Landroidx/collection/y0;FLp0/a;)V

    sget-object v3, Lp0/b;->c:Landroidx/collection/y0;

    new-instance v6, Lp0/c;

    new-array v7, v1, [F

    fill-array-data v7, :array_7

    new-array v8, v1, [F

    fill-array-data v8, :array_8

    invoke-direct {v6, v7, v8}, Lp0/c;-><init>([F[F)V

    const v7, 0x3fe66666    # 1.8f

    invoke-direct {v0, v3, v7, v6}, Lp0/b;->h(Landroidx/collection/y0;FLp0/a;)V

    sget-object v3, Lp0/b;->c:Landroidx/collection/y0;

    new-instance v6, Lp0/c;

    new-array v7, v1, [F

    fill-array-data v7, :array_9

    new-array v1, v1, [F

    fill-array-data v1, :array_a

    invoke-direct {v6, v7, v1}, Lp0/c;-><init>([F[F)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v6}, Lp0/b;->h(Landroidx/collection/y0;FLp0/a;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    sget-object v1, Lp0/b;->c:Landroidx/collection/y0;

    invoke-virtual {v1, v4}, Landroidx/collection/y0;->k(I)I

    move-result v1

    invoke-direct {v0, v1}, Lp0/b;->e(I)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    sub-float/2addr v0, v1

    const v1, 0x3f83d70a    # 1.03f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v4, v5

    :cond_0
    if-nez v4, :cond_1

    const-string v0, "You should only apply non-linear scaling to font scales > 1"

    invoke-static {v0}, Lo0/o;->b(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x8

    sput v0, Lp0/b;->e:I

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_1
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_2
    .array-data 4
        0x41133333    # 9.2f
        0x41380000    # 11.5f
        0x415ccccd    # 13.8f
        0x41833333    # 16.4f
        0x419e6666    # 19.8f
        0x41ae6666    # 21.8f
        0x41c9999a    # 25.2f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_3
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_4
    .array-data 4
        0x41266666    # 10.4f
        0x41500000    # 13.0f
        0x4179999a    # 15.6f
        0x41966666    # 18.8f
        0x41accccd    # 21.6f
        0x41bccccd    # 23.6f
        0x41d33333    # 26.4f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_5
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_6
    .array-data 4
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_7
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_8
    .array-data 4
        0x41666666    # 14.4f
        0x41900000    # 18.0f
        0x41accccd    # 21.6f
        0x41c33333    # 24.4f
        0x41dccccd    # 27.6f
        0x41f66666    # 30.8f
        0x42033333    # 32.8f
        0x420b3333    # 34.8f
        0x42c80000    # 100.0f
    .end array-data

    :array_9
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_a
    .array-data 4
        0x41800000    # 16.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41f00000    # 30.0f
        0x42080000    # 34.0f
        0x42100000    # 36.0f
        0x42180000    # 38.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lp0/a;Lp0/a;F)Lp0/a;
    .locals 6

    sget-object v0, Lp0/b;->b:[F

    array-length v1, v0

    new-array v1, v1, [F

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lp0/b;->b:[F

    aget v3, v3, v2

    invoke-interface {p1, v3}, Lp0/a;->b(F)F

    move-result v4

    invoke-interface {p2, v3}, Lp0/a;->b(F)F

    move-result v3

    sget-object v5, Lp0/d;->a:Lp0/d;

    invoke-virtual {v5, v4, v3, p3}, Lp0/d;->b(FFF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lp0/c;

    sget-object p2, Lp0/b;->b:[F

    invoke-direct {p1, p2, v1}, Lp0/c;-><init>([F[F)V

    return-object p1
.end method

.method private final c(F)Lp0/a;
    .locals 1

    sget-object v0, Lp0/b;->c:Landroidx/collection/y0;

    invoke-direct {p0, p1}, Lp0/b;->d(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/collection/y0;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp0/a;

    return-object p1
.end method

.method private final d(F)I
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final e(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private final g(FLp0/a;)V
    .locals 3

    sget-object v0, Lp0/b;->d:[Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp0/b;->c:Landroidx/collection/y0;

    invoke-virtual {v1}, Landroidx/collection/y0;->c()Landroidx/collection/y0;

    move-result-object v1

    sget-object v2, Lp0/b;->a:Lp0/b;

    invoke-direct {v2, v1, p1, p2}, Lp0/b;->h(Landroidx/collection/y0;FLp0/a;)V

    sput-object v1, Lp0/b;->c:Landroidx/collection/y0;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final h(Landroidx/collection/y0;FLp0/a;)V
    .locals 0

    invoke-direct {p0, p2}, Lp0/b;->d(F)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroidx/collection/y0;->l(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(F)Lp0/a;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lp0/b;->f(F)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v2, Lp0/b;->a:Lp0/b;

    invoke-direct {v2, p1}, Lp0/b;->c(F)Lp0/a;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    sget-object v2, Lp0/b;->c:Landroidx/collection/y0;

    invoke-direct {p0, p1}, Lp0/b;->d(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/collection/y0;->i(I)I

    move-result v2

    if-ltz v2, :cond_2

    sget-object p1, Lp0/b;->c:Landroidx/collection/y0;

    invoke-virtual {p1, v2}, Landroidx/collection/y0;->q(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp0/a;

    return-object p1

    :cond_2
    add-int/2addr v2, v1

    neg-int v2, v2

    add-int/lit8 v3, v2, -0x1

    sget-object v4, Lp0/b;->c:Landroidx/collection/y0;

    invoke-virtual {v4}, Landroidx/collection/y0;->p()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lt v2, v4, :cond_3

    new-instance v2, Lp0/c;

    new-array v3, v1, [F

    aput v5, v3, v0

    new-array v1, v1, [F

    aput p1, v1, v0

    invoke-direct {v2, v3, v1}, Lp0/c;-><init>([F[F)V

    invoke-direct {p0, p1, v2}, Lp0/b;->g(FLp0/a;)V

    goto :goto_2

    :cond_3
    if-gez v3, :cond_4

    new-instance v0, Lp0/c;

    sget-object v1, Lp0/b;->b:[F

    invoke-direct {v0, v1, v1}, Lp0/c;-><init>([F[F)V

    :goto_0
    move v6, v5

    goto :goto_1

    :cond_4
    sget-object v0, Lp0/b;->c:Landroidx/collection/y0;

    invoke-virtual {v0, v3}, Landroidx/collection/y0;->k(I)I

    move-result v0

    invoke-direct {p0, v0}, Lp0/b;->e(I)F

    move-result v5

    sget-object v0, Lp0/b;->c:Landroidx/collection/y0;

    invoke-virtual {v0, v3}, Landroidx/collection/y0;->q(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp0/a;

    goto :goto_0

    :goto_1
    sget-object v1, Lp0/b;->c:Landroidx/collection/y0;

    invoke-virtual {v1, v2}, Landroidx/collection/y0;->k(I)I

    move-result v1

    invoke-direct {p0, v1}, Lp0/b;->e(I)F

    move-result v7

    sget-object v3, Lp0/d;->a:Lp0/d;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lp0/d;->a(FFFFF)F

    move-result v1

    sget-object v3, Lp0/b;->c:Landroidx/collection/y0;

    invoke-virtual {v3, v2}, Landroidx/collection/y0;->q(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0/a;

    invoke-direct {p0, v0, v2, v1}, Lp0/b;->a(Lp0/a;Lp0/a;F)Lp0/a;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lp0/b;->g(FLp0/a;)V

    :goto_2
    return-object v2
.end method

.method public final f(F)Z
    .locals 1

    const v0, 0x3f83d70a    # 1.03f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
