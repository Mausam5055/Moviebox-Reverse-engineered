.class public final Lcom/cloud/hisavana/sdk/s0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/s0;
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

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/s0$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/s0$a;->g(Landroid/content/Context;)V

    return-void
.end method

.method private final c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOmIdVerifications()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->url:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/p0;->f(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "OmSdk"

    if-nez v2, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "omid data.vendorUrl is not valid"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v1, "omid verification scripts num is bigger than 5"

    invoke-virtual {p1, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->verification_parameters:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/net/URL;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->url:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iab/omid/library/hisavana/adsession/g;->b(Ljava/net/URL;)Lcom/iab/omid/library/hisavana/adsession/g;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->vendorKey:Ljava/lang/String;

    new-instance v3, Ljava/net/URL;

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;->verification_parameters:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/iab/omid/library/hisavana/adsession/g;->a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/hisavana/adsession/g;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method private final d(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lfe/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lfe/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static final g(Landroid/content/Context;)V
    .locals 6

    const-string v0, "OmSdk"

    const-string v1, "$context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    :try_start_0
    sget v1, Lcom/cloud/hisavana/sdk/R$raw;->omsdk_v1:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    sget-object v3, Lcom/cloud/hisavana/sdk/s0;->a:Lcom/cloud/hisavana/sdk/s0$a;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v5, "forName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/s0;->d(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    const-string v1, "omid js loaded"

    invoke-virtual {p0, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Omid resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/iab/omid/library/hisavana/adsession/CreativeType;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/iab/omid/library/hisavana/adsession/b;
    .locals 5

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/k1;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/s0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "OmSdk"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string p3, "omid js is not ready"

    invoke-virtual {p2, v2, p3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/s0$a;->f(Landroid/content/Context;)V

    return-object v1

    :cond_1
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOmIdVerifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    goto/16 :goto_4

    :cond_2
    :try_start_0
    invoke-direct {p0, p3}, Lcom/cloud/hisavana/sdk/s0$a;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "omid valid resource count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/s0$a;->d(Landroid/content/Context;)V

    sget-object p1, Lcom/iab/omid/library/hisavana/adsession/CreativeType;->AUDIO:Lcom/iab/omid/library/hisavana/adsession/CreativeType;

    if-ne p2, p1, :cond_4

    sget-object p1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->AUDIBLE:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/iab/omid/library/hisavana/adsession/ImpressionType;->VIEWABLE:Lcom/iab/omid/library/hisavana/adsession/ImpressionType;

    :goto_0
    sget-object v0, Lcom/iab/omid/library/hisavana/adsession/Owner;->NATIVE:Lcom/iab/omid/library/hisavana/adsession/Owner;

    sget-object v3, Lcom/iab/omid/library/hisavana/adsession/CreativeType;->HTML_DISPLAY:Lcom/iab/omid/library/hisavana/adsession/CreativeType;

    if-eq p2, v3, :cond_6

    sget-object v3, Lcom/iab/omid/library/hisavana/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/hisavana/adsession/CreativeType;

    if-ne p2, v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, v0

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v3, Lcom/iab/omid/library/hisavana/adsession/Owner;->NONE:Lcom/iab/omid/library/hisavana/adsession/Owner;

    :goto_2
    const/4 v4, 0x0

    invoke-static {p2, p1, v0, v3, v4}, Lcom/iab/omid/library/hisavana/adsession/c;->a(Lcom/iab/omid/library/hisavana/adsession/CreativeType;Lcom/iab/omid/library/hisavana/adsession/ImpressionType;Lcom/iab/omid/library/hisavana/adsession/Owner;Lcom/iab/omid/library/hisavana/adsession/Owner;Z)Lcom/iab/omid/library/hisavana/adsession/c;

    move-result-object p1

    const-string p2, "hisavana"

    const-string v0, "3.3.8.0"

    invoke-static {p2, v0}, Lcom/iab/omid/library/hisavana/adsession/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/hisavana/adsession/f;

    move-result-object p2

    invoke-static {}, Lcom/cloud/hisavana/sdk/s0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "{\"partner\":\"hisavana\"}"

    invoke-static {p2, v0, p3, v1, v3}, Lcom/iab/omid/library/hisavana/adsession/d;->a(Lcom/iab/omid/library/hisavana/adsession/f;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/hisavana/adsession/d;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iab/omid/library/hisavana/adsession/b;->b(Lcom/iab/omid/library/hisavana/adsession/c;Lcom/iab/omid/library/hisavana/adsession/d;)Lcom/iab/omid/library/hisavana/adsession/b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get adSession error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-object v1
.end method

.method public final e(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/s0;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lcom/cloud/hisavana/sdk/q0;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/q0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/k1;->r()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/sdk/s0$a;->e(Landroid/content/Context;Z)V

    return-void
.end method
