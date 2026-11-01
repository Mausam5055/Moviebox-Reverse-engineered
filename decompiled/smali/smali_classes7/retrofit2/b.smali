.class final Lretrofit2/b;
.super Lretrofit2/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/b$d;,
        Lretrofit2/b$a;,
        Lretrofit2/b$c;,
        Lretrofit2/b$b;,
        Lretrofit2/b$e;,
        Lretrofit2/b$f;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/k0;)Lretrofit2/k;
    .locals 0

    const-class p2, Lokhttp3/RequestBody;

    invoke-static {p1}, Lretrofit2/o0;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lretrofit2/b$b;->a:Lretrofit2/b$b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/k0;)Lretrofit2/k;
    .locals 0

    const-class p3, Lokhttp3/ResponseBody;

    if-ne p1, p3, :cond_1

    const-class p1, Lretrofit2/http/Streaming;

    invoke-static {p2, p1}, Lretrofit2/o0;->l([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lretrofit2/b$c;->a:Lretrofit2/b$c;

    goto :goto_0

    :cond_0
    sget-object p1, Lretrofit2/b$a;->a:Lretrofit2/b$a;

    :goto_0
    return-object p1

    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    sget-object p1, Lretrofit2/b$f;->a:Lretrofit2/b$f;

    return-object p1

    :cond_2
    invoke-static {p1}, Lretrofit2/o0;->m(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lretrofit2/b$e;->a:Lretrofit2/b$e;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
