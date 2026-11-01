.class Lretrofit2/l$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/l$b;->h(Lretrofit2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/f;

.field final synthetic b:Lretrofit2/l$b;


# direct methods
.method constructor <init>(Lretrofit2/l$b;Lretrofit2/f;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/l$b$a;->b:Lretrofit2/l$b;

    iput-object p2, p0, Lretrofit2/l$b$a;->a:Lretrofit2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lretrofit2/l$b$a;Lretrofit2/f;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lretrofit2/l$b$a;->e(Lretrofit2/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lretrofit2/l$b$a;Lretrofit2/f;Lretrofit2/j0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lretrofit2/l$b$a;->f(Lretrofit2/f;Lretrofit2/j0;)V

    return-void
.end method

.method private synthetic e(Lretrofit2/f;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lretrofit2/l$b$a;->b:Lretrofit2/l$b;

    invoke-interface {p1, v0, p2}, Lretrofit2/f;->a(Lretrofit2/d;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic f(Lretrofit2/f;Lretrofit2/j0;)V
    .locals 2

    iget-object v0, p0, Lretrofit2/l$b$a;->b:Lretrofit2/l$b;

    iget-object v0, v0, Lretrofit2/l$b;->b:Lretrofit2/d;

    invoke-interface {v0}, Lretrofit2/d;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lretrofit2/l$b$a;->b:Lretrofit2/l$b;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lretrofit2/f;->a(Lretrofit2/d;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lretrofit2/l$b$a;->b:Lretrofit2/l$b;

    invoke-interface {p1, v0, p2}, Lretrofit2/f;->b(Lretrofit2/d;Lretrofit2/j0;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lretrofit2/d;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lretrofit2/l$b$a;->b:Lretrofit2/l$b;

    iget-object p1, p1, Lretrofit2/l$b;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lretrofit2/l$b$a;->a:Lretrofit2/f;

    new-instance v1, Lretrofit2/n;

    invoke-direct {v1, p0, v0, p2}, Lretrofit2/n;-><init>(Lretrofit2/l$b$a;Lretrofit2/f;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lretrofit2/d;Lretrofit2/j0;)V
    .locals 2

    iget-object p1, p0, Lretrofit2/l$b$a;->b:Lretrofit2/l$b;

    iget-object p1, p1, Lretrofit2/l$b;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lretrofit2/l$b$a;->a:Lretrofit2/f;

    new-instance v1, Lretrofit2/m;

    invoke-direct {v1, p0, v0, p2}, Lretrofit2/m;-><init>(Lretrofit2/l$b$a;Lretrofit2/f;Lretrofit2/j0;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
