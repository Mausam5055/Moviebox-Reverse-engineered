.class public final Lkotlinx/serialization/internal/g1;
.super Le00/b;


# static fields
.field public static final a:Lkotlinx/serialization/internal/g1;

.field private static final b:Lf00/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/g1;

    invoke-direct {v0}, Lkotlinx/serialization/internal/g1;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/g1;->a:Lkotlinx/serialization/internal/g1;

    invoke-static {}, Lf00/d;->a()Lf00/c;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/g1;->b:Lf00/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le00/b;-><init>()V

    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 0

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public J(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a()Lf00/c;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/g1;->b:Lf00/c;

    return-object v0
.end method

.method public g(D)V
    .locals 0

    return-void
.end method

.method public h(B)V
    .locals 0

    return-void
.end method

.method public k(Lkotlinx/serialization/descriptors/f;I)V
    .locals 0

    const-string p2, "enumDescriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public m(J)V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public q(S)V
    .locals 0

    return-void
.end method

.method public r(Z)V
    .locals 0

    return-void
.end method

.method public t(F)V
    .locals 0

    return-void
.end method

.method public u(C)V
    .locals 0

    return-void
.end method
