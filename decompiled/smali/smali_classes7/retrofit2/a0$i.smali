.class final Lretrofit2/a0$i;
.super Lretrofit2/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:I

.field private final c:Lokhttp3/Headers;

.field private final d:Lretrofit2/k;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/k;)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/a0;-><init>()V

    iput-object p1, p0, Lretrofit2/a0$i;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Lretrofit2/a0$i;->b:I

    iput-object p3, p0, Lretrofit2/a0$i;->c:Lokhttp3/Headers;

    iput-object p4, p0, Lretrofit2/a0$i;->d:Lretrofit2/k;

    return-void
.end method


# virtual methods
.method a(Lretrofit2/h0;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lretrofit2/a0$i;->d:Lretrofit2/k;

    invoke-interface {v0, p2}, Lretrofit2/k;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lretrofit2/a0$i;->c:Lokhttp3/Headers;

    invoke-virtual {p1, p2, v0}, Lretrofit2/h0;->d(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lretrofit2/a0$i;->a:Ljava/lang/reflect/Method;

    iget v1, p0, Lretrofit2/a0$i;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to RequestBody"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, p2, v2}, Lretrofit2/o0;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
