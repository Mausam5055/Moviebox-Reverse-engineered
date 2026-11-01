.class public final Lretrofit2/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/v;->a:Ljava/lang/Class;

    iput-object p2, p0, Lretrofit2/v;->b:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/v;->c:Ljava/lang/reflect/Method;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/v;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lretrofit2/v;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lretrofit2/v;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lretrofit2/v;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/v;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/v;->d:Ljava/util/List;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s.%s() %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
