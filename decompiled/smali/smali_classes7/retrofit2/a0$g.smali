.class final Lretrofit2/a0$g;
.super Lretrofit2/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:I

.field private final c:Lretrofit2/k;

.field private final d:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;ILretrofit2/k;Z)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/a0;-><init>()V

    iput-object p1, p0, Lretrofit2/a0$g;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Lretrofit2/a0$g;->b:I

    iput-object p3, p0, Lretrofit2/a0$g;->c:Lretrofit2/k;

    iput-boolean p4, p0, Lretrofit2/a0$g;->d:Z

    return-void
.end method


# virtual methods
.method bridge synthetic a(Lretrofit2/h0;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lretrofit2/a0$g;->d(Lretrofit2/h0;Ljava/util/Map;)V

    return-void
.end method

.method d(Lretrofit2/h0;Ljava/util/Map;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lretrofit2/a0$g;->c:Lretrofit2/k;

    invoke-interface {v3, v1}, Lretrofit2/k;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v3, p0, Lretrofit2/a0$g;->d:Z

    invoke-virtual {p1, v2, v1, v3}, Lretrofit2/h0;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lretrofit2/a0$g;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Lretrofit2/a0$g;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header map contained null value for key \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1, v0}, Lretrofit2/o0;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    iget-object p1, p0, Lretrofit2/a0$g;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Lretrofit2/a0$g;->b:I

    const-string v1, "Header map contained null key."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1, v0}, Lretrofit2/o0;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lretrofit2/a0$g;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Lretrofit2/a0$g;->b:I

    const-string v1, "Header map was null."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1, v0}, Lretrofit2/o0;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
