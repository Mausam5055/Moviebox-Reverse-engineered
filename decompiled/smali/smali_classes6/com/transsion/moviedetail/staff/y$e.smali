.class final Lcom/transsion/moviedetail/staff/y$e;
.super Ljava/lang/Object;

# interfaces
.implements Llz/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/staff/y;->y(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/staff/y;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/staff/y;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/staff/y$e;->a:Lcom/transsion/moviedetail/staff/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/m;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$e;->a:Lcom/transsion/moviedetail/staff/y;

    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->d(Lcom/transsion/moviedetail/staff/y;)Lcom/transsion/moviedetail/staff/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/transsion/moviedetail/staff/a$a;->d(Lcom/transsion/moviedetail/staff/a;Lokhttp3/RequestBody;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/RequestBody;

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/staff/y$e;->a(Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method
