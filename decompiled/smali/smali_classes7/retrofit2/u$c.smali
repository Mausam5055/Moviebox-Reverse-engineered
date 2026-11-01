.class final Lretrofit2/u$c;
.super Lretrofit2/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final d:Lretrofit2/e;


# direct methods
.method constructor <init>(Lretrofit2/i0;Lokhttp3/Call$Factory;Lretrofit2/k;Lretrofit2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lretrofit2/u;-><init>(Lretrofit2/i0;Lokhttp3/Call$Factory;Lretrofit2/k;)V

    iput-object p4, p0, Lretrofit2/u$c;->d:Lretrofit2/e;

    return-void
.end method


# virtual methods
.method protected c(Lretrofit2/d;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lretrofit2/u$c;->d:Lretrofit2/e;

    invoke-interface {v0, p1}, Lretrofit2/e;->b(Lretrofit2/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/d;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    :try_start_0
    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->c(Lretrofit2/d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->e(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
