.class Lretrofit2/d0$b;
.super Lretrofit2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/d0;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/reflect/Method;I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lretrofit2/e0;->a(Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Parameter;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0}, Lretrofit2/f0;->a(Ljava/lang/reflect/Parameter;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parameter \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lretrofit2/g0;->a(Ljava/lang/reflect/Parameter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lretrofit2/d0;->a(Ljava/lang/reflect/Method;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lretrofit2/t;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method c(Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-static {p1}, Lretrofit2/c0;->a(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
