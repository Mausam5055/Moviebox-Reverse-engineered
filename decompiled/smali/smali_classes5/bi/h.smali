.class public final Lbi/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbi/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbi/h;

    invoke-direct {v0}, Lbi/h;-><init>()V

    sput-object v0, Lbi/h;->a:Lbi/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lokhttp3/Interceptor$Chain;)Lbi/i;
    .locals 2

    sget-object v0, Lbi/m;->a:Lbi/m;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object p1

    const-string v1, "chain.call()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventListener"

    invoke-virtual {v0, p1, v1}, Lbi/m;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lbi/i;

    if-eqz v0, :cond_0

    check-cast p1, Lbi/i;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;I)V
    .locals 1

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lbi/h;->b(Lokhttp3/Interceptor$Chain;)Lbi/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lbi/i;->a(Lokhttp3/Request;I)V

    :cond_0
    return-void
.end method
