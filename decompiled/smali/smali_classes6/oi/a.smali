.class public final Loi/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loi/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loi/a;

    invoke-direct {v0}, Loi/a;-><init>()V

    sput-object v0, Loi/a;->a:Loi/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1, p2, p3, p4}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1, p2, p3, p4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    sget-object p1, Llg/a;->a:Llg/a$a;

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p4}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1, p2, p3, p4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x4

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/2addr p4, v0

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Loi/a;->b(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic e(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x3

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Loi/a;->d(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, "ad_"

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Loi/a;->f(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x3

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Loi/a;->h(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x3

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Loi/a;->j(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic m(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x3

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Loi/a;->l(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_init"

    invoke-direct {p0, p2, v0, p1, p3}, Loi/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final d(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_cct"

    invoke-direct {p0, p2, v0, p1, p3}, Loi/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p2, p4}, Loi/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final h(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_ic"

    invoke-direct {p0, p2, v0, p1, p3}, Loi/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final j(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_ps_d"

    invoke-direct {p0, p2, v0, p1, p3}, Loi/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final l(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_ps_a"

    invoke-direct {p0, p2, v0, p1, p3}, Loi/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1, p2, p4}, Loi/a;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
