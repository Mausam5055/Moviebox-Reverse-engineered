.class public final Lcom/vungle/ads/internal/omsdk/NativeOMTracker;
.super Ljava/lang/Object;


# instance fields
.field private adEvents:Lcom/iab/omid/library/vungle/adsession/a;

.field private adSession:Lcom/iab/omid/library/vungle/adsession/b;

.field private final json:Lkotlinx/serialization/json/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "omSdkData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omSdkJS"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker$json$1;->INSTANCE:Lcom/vungle/ads/internal/omsdk/NativeOMTracker$json$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/n;->b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->json:Lkotlinx/serialization/json/a;

    :try_start_0
    sget-object v1, Lcom/iab/omid/library/vungle/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/vungle/adsession/CreativeType;

    sget-object v3, Lcom/iab/omid/library/vungle/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/vungle/adsession/ImpressionType;

    sget-object v4, Lcom/iab/omid/library/vungle/adsession/Owner;->NATIVE:Lcom/iab/omid/library/vungle/adsession/Owner;

    sget-object v5, Lcom/iab/omid/library/vungle/adsession/Owner;->NONE:Lcom/iab/omid/library/vungle/adsession/Owner;

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Lcom/iab/omid/library/vungle/adsession/c;->a(Lcom/iab/omid/library/vungle/adsession/CreativeType;Lcom/iab/omid/library/vungle/adsession/ImpressionType;Lcom/iab/omid/library/vungle/adsession/Owner;Lcom/iab/omid/library/vungle/adsession/Owner;Z)Lcom/iab/omid/library/vungle/adsession/c;

    move-result-object v1

    const-string v3, "Vungle"

    const-string v4, "7.5.0"

    invoke-static {v3, v4}, Lcom/iab/omid/library/vungle/adsession/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/f;

    move-result-object v3

    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0}, Lkotlinx/serialization/e;->a()Lf00/c;

    move-result-object p1

    const-class v5, Lcom/vungle/ads/internal/model/f;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlinx/serialization/h;->b(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    move-result-object p1

    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v4}, Lkotlinx/serialization/j;->b(Lkotlinx/serialization/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/model/f;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/f;->getVendorKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    new-instance v4, Ljava/net/URL;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/f;->getVendorURL()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/f;->getParams()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    invoke-static {v0, v4, p1}, Lcom/iab/omid/library/vungle/adsession/g;->a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/g;

    move-result-object p1

    const-string v0, "verificationScriptResource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v3, p2, p1, v2, v2}, Lcom/iab/omid/library/vungle/adsession/d;->b(Lcom/iab/omid/library/vungle/adsession/f;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/d;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/iab/omid/library/vungle/adsession/b;->a(Lcom/iab/omid/library/vungle/adsession/c;Lcom/iab/omid/library/vungle/adsession/d;)Lcom/iab/omid/library/vungle/adsession/b;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adSession:Lcom/iab/omid/library/vungle/adsession/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v0, "NativeOMTracker"

    const-string v1, "error occured when create omsdk adSession:"

    invoke-virtual {p2, v0, v1, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method


# virtual methods
.method public final impressionOccurred()V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adEvents:Lcom/iab/omid/library/vungle/adsession/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/a;->b()V

    :cond_0
    return-void
.end method

.method public final start(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lre/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/vungle/adsession/b;->c(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/b;->d()V

    invoke-static {v0}, Lcom/iab/omid/library/vungle/adsession/a;->a(Lcom/iab/omid/library/vungle/adsession/b;)Lcom/iab/omid/library/vungle/adsession/a;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adEvents:Lcom/iab/omid/library/vungle/adsession/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/adsession/a;->c()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/b;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    return-void
.end method
