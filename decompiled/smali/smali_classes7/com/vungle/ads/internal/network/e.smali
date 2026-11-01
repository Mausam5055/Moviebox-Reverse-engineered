.class public final Lcom/vungle/ads/internal/network/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/e$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/e$a;


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private final errorBody:Lokhttp3/ResponseBody;

.field private final rawResponse:Lokhttp3/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/network/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/network/e;->Companion:Lcom/vungle/ads/internal/network/e$a;

    return-void
.end method

.method private constructor <init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/lang/Object;",
            "Lokhttp3/ResponseBody;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/e;->body:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vungle/ads/internal/network/e;->errorBody:Lokhttp3/ResponseBody;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/internal/network/e;-><init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;)V

    return-void
.end method


# virtual methods
.method public final body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public final code()I
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public final errorBody()Lokhttp3/ResponseBody;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->errorBody:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public final headers()Lokhttp3/Headers;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final isSuccessful()Z
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    return v0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final raw()Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/e;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
