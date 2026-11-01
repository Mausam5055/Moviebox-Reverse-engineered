.class abstract Lretrofit2/l0;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Lretrofit2/k0;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/l0;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Lretrofit2/i0;->b(Lretrofit2/k0;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/i0;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/o0;->j(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    invoke-static {p0, p2, p1}, Lretrofit2/u;->f(Lretrofit2/k0;Ljava/lang/reflect/Method;Lretrofit2/i0;)Lretrofit2/u;

    move-result-object p0

    return-object p0

    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Service methods cannot return void."

    invoke-static {p2, p1, p0}, Lretrofit2/o0;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const-string p0, "Method return type must not include a type variable or wildcard: %s"

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v0

    invoke-static {p2, p0, p1}, Lretrofit2/o0;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
