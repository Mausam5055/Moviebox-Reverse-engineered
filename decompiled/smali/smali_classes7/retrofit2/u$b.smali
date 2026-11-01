.class final Lretrofit2/u$b;
.super Lretrofit2/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final d:Lretrofit2/e;

.field private final e:Z

.field private final f:Z


# direct methods
.method constructor <init>(Lretrofit2/i0;Lokhttp3/Call$Factory;Lretrofit2/k;Lretrofit2/e;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lretrofit2/u;-><init>(Lretrofit2/i0;Lokhttp3/Call$Factory;Lretrofit2/k;)V

    iput-object p4, p0, Lretrofit2/u$b;->d:Lretrofit2/e;

    iput-boolean p5, p0, Lretrofit2/u$b;->e:Z

    iput-boolean p6, p0, Lretrofit2/u$b;->f:Z

    return-void
.end method


# virtual methods
.method protected c(Lretrofit2/d;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lretrofit2/u$b;->d:Lretrofit2/e;

    invoke-interface {v0, p1}, Lretrofit2/e;->b(Lretrofit2/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/d;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/u$b;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->d(Lretrofit2/d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lretrofit2/u$b;->e:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->b(Lretrofit2/d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->a(Lretrofit2/d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_0
    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->e(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_1
    throw p1
.end method
