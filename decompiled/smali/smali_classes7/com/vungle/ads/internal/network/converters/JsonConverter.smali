.class public final Lcom/vungle/ads/internal/network/converters/JsonConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/network/converters/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/converters/JsonConverter$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/converters/JsonConverter$a;

.field private static final json:Lkotlinx/serialization/json/a;


# instance fields
.field private final kType:Lkotlin/reflect/KType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vungle/ads/internal/network/converters/JsonConverter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/converters/JsonConverter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/network/converters/JsonConverter;->Companion:Lcom/vungle/ads/internal/network/converters/JsonConverter$a;

    sget-object v0, Lcom/vungle/ads/internal/network/converters/JsonConverter$Companion$json$1;->INSTANCE:Lcom/vungle/ads/internal/network/converters/JsonConverter$Companion$json$1;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/n;->b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/network/converters/JsonConverter;->json:Lkotlinx/serialization/json/a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KType;)V
    .locals 1

    const-string v0, "kType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/converters/JsonConverter;->kType:Lkotlin/reflect/KType;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/network/converters/JsonConverter;->convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vungle/ads/internal/network/converters/JsonConverter;->json:Lkotlinx/serialization/json/a;

    sget-object v3, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    invoke-virtual {v3}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/ads/internal/network/converters/JsonConverter;->kType:Lkotlin/reflect/KType;

    invoke-static {v3, v4}, Lkotlinx/serialization/h;->b(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lkotlinx/serialization/json/a;->b(Lkotlinx/serialization/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0
.end method
