.class final Lretrofit2/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/j$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/j$a;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lretrofit2/j$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic b(Lretrofit2/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lretrofit2/j$a;->c(Lretrofit2/d;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public c(Lretrofit2/d;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    new-instance v0, Lretrofit2/j$b;

    invoke-direct {v0, p1}, Lretrofit2/j$b;-><init>(Lretrofit2/d;)V

    new-instance v1, Lretrofit2/j$a$a;

    invoke-direct {v1, p0, v0}, Lretrofit2/j$a$a;-><init>(Lretrofit2/j$a;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1}, Lretrofit2/d;->h(Lretrofit2/f;)V

    return-object v0
.end method
