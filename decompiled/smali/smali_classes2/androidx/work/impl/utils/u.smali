.class final Landroidx/work/impl/utils/u;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/work/impl/utils/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/u;

    invoke-direct {v0}, Landroidx/work/impl/utils/u;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/u;->a:Landroidx/work/impl/utils/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkRequest;)[I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/work/impl/utils/t;->a(Landroid/net/NetworkRequest;)[I

    move-result-object p1

    const-string v0, "getCapabilities(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Landroid/net/NetworkRequest;)[I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/work/impl/utils/s;->a(Landroid/net/NetworkRequest;)[I

    move-result-object p1

    const-string v0, "getTransportTypes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
