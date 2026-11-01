.class Lretrofit2/w$a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/w;->h(Lretrofit2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/f;

.field final synthetic b:Lretrofit2/w;


# direct methods
.method constructor <init>(Lretrofit2/w;Lretrofit2/f;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/w$a;->b:Lretrofit2/w;

    iput-object p2, p0, Lretrofit2/w$a;->a:Lretrofit2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lretrofit2/w$a;->a:Lretrofit2/f;

    iget-object v1, p0, Lretrofit2/w$a;->b:Lretrofit2/w;

    invoke-interface {v0, v1, p1}, Lretrofit2/f;->a(Lretrofit2/d;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lretrofit2/o0;->t(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p2}, Lretrofit2/w$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lretrofit2/w$a;->b:Lretrofit2/w;

    invoke-virtual {p1, p2}, Lretrofit2/w;->d(Lokhttp3/Response;)Lretrofit2/j0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lretrofit2/w$a;->a:Lretrofit2/f;

    iget-object v0, p0, Lretrofit2/w$a;->b:Lretrofit2/w;

    invoke-interface {p2, v0, p1}, Lretrofit2/f;->b(Lretrofit2/d;Lretrofit2/j0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lretrofit2/o0;->t(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lretrofit2/o0;->t(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lretrofit2/w$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
