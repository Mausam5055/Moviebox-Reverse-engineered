.class final Lretrofit2/a0$h;
.super Lretrofit2/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/a0;-><init>()V

    iput-object p1, p0, Lretrofit2/a0$h;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Lretrofit2/a0$h;->b:I

    return-void
.end method


# virtual methods
.method bridge synthetic a(Lretrofit2/h0;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lokhttp3/Headers;

    invoke-virtual {p0, p1, p2}, Lretrofit2/a0$h;->d(Lretrofit2/h0;Lokhttp3/Headers;)V

    return-void
.end method

.method d(Lretrofit2/h0;Lokhttp3/Headers;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lretrofit2/h0;->c(Lokhttp3/Headers;)V

    return-void

    :cond_0
    iget-object p1, p0, Lretrofit2/a0$h;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Lretrofit2/a0$h;->b:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Headers parameter must not be null."

    invoke-static {p1, p2, v1, v0}, Lretrofit2/o0;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
