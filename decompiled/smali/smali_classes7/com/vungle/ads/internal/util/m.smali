.class public final Lcom/vungle/ads/internal/util/m;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/util/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/util/m;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/m;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/m;->INSTANCE:Lcom/vungle/ads/internal/util/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContentStringValue(Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p2}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/h;

    invoke-static {p1}, Lkotlinx/serialization/json/j;->l(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/u;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
