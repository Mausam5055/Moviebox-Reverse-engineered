.class final Lretrofit2/l$b;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lretrofit2/d;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lretrofit2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/l$b;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lretrofit2/l$b;->b:Lretrofit2/d;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lretrofit2/l$b;->b:Lretrofit2/d;

    invoke-interface {v0}, Lretrofit2/d;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lretrofit2/l$b;->clone()Lretrofit2/d;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit2/d;
    .locals 3

    new-instance v0, Lretrofit2/l$b;

    iget-object v1, p0, Lretrofit2/l$b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lretrofit2/l$b;->b:Lretrofit2/d;

    invoke-interface {v2}, Lretrofit2/d;->clone()Lretrofit2/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lretrofit2/l$b;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/d;)V

    return-object v0
.end method

.method public execute()Lretrofit2/j0;
    .locals 1

    iget-object v0, p0, Lretrofit2/l$b;->b:Lretrofit2/d;

    invoke-interface {v0}, Lretrofit2/d;->execute()Lretrofit2/j0;

    move-result-object v0

    return-object v0
.end method

.method public h(Lretrofit2/f;)V
    .locals 2

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lretrofit2/l$b;->b:Lretrofit2/d;

    new-instance v1, Lretrofit2/l$b$a;

    invoke-direct {v1, p0, p1}, Lretrofit2/l$b$a;-><init>(Lretrofit2/l$b;Lretrofit2/f;)V

    invoke-interface {v0, v1}, Lretrofit2/d;->h(Lretrofit2/f;)V

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lretrofit2/l$b;->b:Lretrofit2/d;

    invoke-interface {v0}, Lretrofit2/d;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lretrofit2/l$b;->b:Lretrofit2/d;

    invoke-interface {v0}, Lretrofit2/d;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method
