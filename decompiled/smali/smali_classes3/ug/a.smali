.class public Lug/a;
.super Lretrofit2/k$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/k$a;-><init>()V

    return-void
.end method

.method public static f()Lug/a;
    .locals 1

    new-instance v0, Lug/a;

    invoke-direct {v0}, Lug/a;-><init>()V

    return-object v0
.end method

.method private g([Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 4

    const-string v0, "no_code"

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    instance-of v3, v3, Lrg/a;

    if-eqz v3, :cond_1

    const-string p1, "1311"

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/k0;)Lretrofit2/k;
    .locals 0

    new-instance p1, Lug/b;

    invoke-direct {p1}, Lug/b;-><init>()V

    return-object p1
.end method

.method public d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/k0;)Lretrofit2/k;
    .locals 0

    new-instance p3, Lug/c;

    invoke-direct {p0, p2}, Lug/a;->g([Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lug/c;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-object p3
.end method
