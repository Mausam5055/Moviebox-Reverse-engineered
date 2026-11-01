.class final Lretrofit2/z$a;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lretrofit2/k;


# direct methods
.method constructor <init>(Lretrofit2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/z$a;->a:Lretrofit2/k;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Ljava/util/Optional;
    .locals 1

    iget-object v0, p0, Lretrofit2/z$a;->a:Lretrofit2/k;

    invoke-interface {v0, p1}, Lretrofit2/k;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/y;->a(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit2/z$a;->a(Lokhttp3/ResponseBody;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
