.class public final Lcom/vungle/ads/internal/network/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/network/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/ResponseBody;",
            "Lokhttp3/Response;",
            ")",
            "Lcom/vungle/ads/internal/network/e;"
        }
    .end annotation

    const-string v0, "rawResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vungle/ads/internal/network/e;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1, v1}, Lcom/vungle/ads/internal/network/e;-><init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rawResponse should not be successful response"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final success(Ljava/lang/Object;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lokhttp3/Response;",
            ")",
            "Lcom/vungle/ads/internal/network/e;"
        }
    .end annotation

    const-string v0, "rawResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vungle/ads/internal/network/e;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1, v1}, Lcom/vungle/ads/internal/network/e;-><init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rawResponse must be successful response"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
