.class Lretrofit2/j$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CompletableFuture;

.field final synthetic b:Lretrofit2/j$a;


# direct methods
.method public constructor <init>(Lretrofit2/j$a;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/j$a$a;->b:Lretrofit2/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lretrofit2/j$a$a;->a:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/d;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lretrofit2/j$a$a;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1, p2}, Lretrofit2/h;->a(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-void
.end method

.method public b(Lretrofit2/d;Lretrofit2/j0;)V
    .locals 1

    invoke-virtual {p2}, Lretrofit2/j0;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lretrofit2/j$a$a;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p2}, Lretrofit2/j0;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lretrofit2/i;->a(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lretrofit2/j$a$a;->a:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Lretrofit2/HttpException;

    invoke-direct {v0, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/j0;)V

    invoke-static {p1, v0}, Lretrofit2/h;->a(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
