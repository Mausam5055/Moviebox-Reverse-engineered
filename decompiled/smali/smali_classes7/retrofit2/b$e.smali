.class final Lretrofit2/b$e;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final a:Lretrofit2/b$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lretrofit2/b$e;

    invoke-direct {v0}, Lretrofit2/b$e;-><init>()V

    sput-object v0, Lretrofit2/b$e;->a:Lretrofit2/b$e;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit2/b$e;->a(Lokhttp3/ResponseBody;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
