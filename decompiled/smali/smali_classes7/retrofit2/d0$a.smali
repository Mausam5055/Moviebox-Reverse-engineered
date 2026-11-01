.class final Lretrofit2/d0$a;
.super Lretrofit2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/d0;-><init>()V

    return-void
.end method


# virtual methods
.method b(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3, p4}, Lretrofit2/t;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Calling default methods on API 24 and 25 is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method c(Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-static {p1}, Lretrofit2/c0;->a(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
