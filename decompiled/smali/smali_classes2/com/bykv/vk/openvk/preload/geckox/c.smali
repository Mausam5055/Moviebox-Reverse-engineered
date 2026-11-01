.class public final Lcom/bykv/vk/openvk/preload/geckox/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/io/File;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljava/util/HashSet;

    const-string v14, "otf"

    const-string v15, "sfnt"

    const-string v1, "js"

    const-string v2, "css"

    const-string v3, "html"

    const-string v4, "ico"

    const-string v5, "jpeg"

    const-string v6, "jpg"

    const-string v7, "png"

    const-string v8, "gif"

    const-string v9, "woff"

    const-string v10, "svg"

    const-string v11, "ttf"

    const-string v12, "woff2"

    const-string v13, "webp"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/c;->g:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/c;-><init>()V

    return-void
.end method

.method public static a(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    :try_start_0
    new-instance p0, Lcom/bykv/vk/openvk/preload/falconx/loader/a;

    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/c;->b:Landroid/content/Context;

    const-string v2, "f36c832c8dbb162c49b46a7a6dd47fbd"

    sget-object v3, Lcom/bykv/vk/openvk/preload/geckox/c;->a:Ljava/io/File;

    invoke-direct {p0, v1, v2, v3}, Lcom/bykv/vk/openvk/preload/falconx/loader/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/preload/falconx/loader/a;->a(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method public static a()Lcom/bykv/vk/openvk/preload/geckox/c;
    .locals 1

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c$a;->a()Lcom/bykv/vk/openvk/preload/geckox/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/geckox/c;
    .locals 2

    sput-object p0, Lcom/bykv/vk/openvk/preload/geckox/c;->b:Landroid/content/Context;

    sget-object p0, Lcom/bykv/vk/openvk/preload/geckox/c;->a:Ljava/io/File;

    if-nez p0, :cond_0

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gecko"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/bykv/vk/openvk/preload/geckox/c;->a:Ljava/io/File;

    :cond_0
    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c$a;->a()Lcom/bykv/vk/openvk/preload/geckox/c;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "md5"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/c;->d:Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "f36c832c8dbb162c49b46a7a6dd47fbd"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    new-instance v1, Lcom/bykv/vk/openvk/preload/falconx/loader/a;

    sget-object v3, Lcom/bykv/vk/openvk/preload/geckox/c;->b:Landroid/content/Context;

    sget-object v4, Lcom/bykv/vk/openvk/preload/geckox/c;->a:Ljava/io/File;

    invoke-direct {v1, v3, v2, v4}, Lcom/bykv/vk/openvk/preload/falconx/loader/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/manifest.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bykv/vk/openvk/preload/falconx/loader/a;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/geckox/utils/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/c;->d:Ljava/util/Map$Entry;

    :cond_3
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/c;->e:Ljava/util/Map$Entry;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    new-instance v1, Lcom/bykv/vk/openvk/preload/falconx/loader/a;

    sget-object v3, Lcom/bykv/vk/openvk/preload/geckox/c;->b:Landroid/content/Context;

    sget-object v4, Lcom/bykv/vk/openvk/preload/geckox/c;->a:Ljava/io/File;

    invoke-direct {v1, v3, v2, v4}, Lcom/bykv/vk/openvk/preload/falconx/loader/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/md5_url_map.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/preload/falconx/loader/a;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/geckox/utils/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v0

    :cond_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/c;->e:Ljava/util/Map$Entry;

    :cond_6
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/c;->d:Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/c;->e:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {p2, v1}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, p1, v2, p2}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_7
    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/geckox/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    return-object v0

    :cond_8
    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, v1, p2}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catchall_0
    :cond_9
    :goto_0
    return-object v0
.end method

.method public static a(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/openvk/preload/geckox/c;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "once"

    const-string v2, "cacheStrategy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "hitStrategy"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/bykv/vk/openvk/preload/geckox/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static b()Lcom/bykv/vk/openvk/preload/falconx/loader/a;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/falconx/loader/a;

    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/c;->b:Landroid/content/Context;

    const-string v2, "f36c832c8dbb162c49b46a7a6dd47fbd"

    sget-object v3, Lcom/bykv/vk/openvk/preload/geckox/c;->a:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/preload/falconx/loader/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/c;->f:Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/c;->f:Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;->syncDoGet(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;
    .locals 7

    const-string v0, "respHeader"

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    invoke-direct {p1, v1, v2}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;-><init>(ILandroid/webkit/WebResourceResponse;)V

    return-object p1

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v3, "^https?:\\/\\/www\\.google-analytics\\.com/(?:ga|urchin|analytics)\\.js"

    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "^https?:\\/\\/www\\.googletagmanager\\.com\\/(gtag\\/js|gtm\\.js)"

    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "^https?:\\/\\/analytics\\.tiktok\\.com\\/i18n\\/pixel"

    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "https?:\\/\\/connect\\.facebook\\.net\\/(.*)\\/fbevents\\.js"

    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "https?:\\/\\/mc\\.yandex\\.ru\\/"

    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "jsonp"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "Callback"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "analytics.tiktok.com/i18n/pixel"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "google-analytics.com/analytics"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "connect.facebook.net"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v5, Lcom/bykv/vk/openvk/preload/geckox/c;->g:Ljava/util/Set;

    invoke-static {p3}, Lcom/bykv/vk/openvk/preload/geckox/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v6, "."

    invoke-virtual {p3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v1, :cond_3

    const-string p3, ""

    goto :goto_0

    :cond_3
    add-int/2addr v6, v4

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-interface {v5, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x2

    goto :goto_1

    :cond_4
    move p3, v1

    :goto_1
    if-nez v3, :cond_5

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    invoke-direct {p1, p3, v2}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;-><init>(ILandroid/webkit/WebResourceResponse;)V

    return-object p1

    :cond_5
    const-string v4, "fileName"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    invoke-direct {p1, p3, v2}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;-><init>(ILandroid/webkit/WebResourceResponse;)V

    return-object p1

    :cond_6
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_8

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    invoke-direct {p1, p3, v2}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;-><init>(ILandroid/webkit/WebResourceResponse;)V

    return-object p1

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;->exist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object p1, v2

    goto :goto_3

    :cond_9
    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_a

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    invoke-direct {p1, p3, v2}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;-><init>(ILandroid/webkit/WebResourceResponse;)V

    return-object p1

    :cond_a
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/io/InputStream;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    invoke-direct {v0, p3, p1}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;-><init>(ILandroid/webkit/WebResourceResponse;)V

    return-object v0

    :cond_c
    :goto_5
    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    invoke-direct {p1, v4, v2}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;-><init>(ILandroid/webkit/WebResourceResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    invoke-direct {p1, v1, v2}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;-><init>(ILandroid/webkit/WebResourceResponse;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;Ljava/util/Set;Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/b$a;

    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/b$a;-><init>(Landroid/content/Context;)V

    const-string v1, "f36c832c8dbb162c49b46a7a6dd47fbd"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->b([Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->a([Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->b()Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->b(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object p1

    const-string v0, "9999999.0.0"

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object p1

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;->a()Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;

    move-result-object v0

    sget-object v2, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->b:Lcom/bykv/vk/openvk/preload/geckox/a/a/b;

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;->a(Lcom/bykv/vk/openvk/preload/geckox/a/a/b;)Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;->b()Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->a(Lcom/bykv/vk/openvk/preload/geckox/a/a/a;)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object p1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/c;->a:Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->a(Ljava/io/File;)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->a()Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object p1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->c(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->a(Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->a(Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bykv/vk/openvk/preload/geckox/b$a;->a(J)Lcom/bykv/vk/openvk/preload/geckox/b$a;

    move-result-object p1

    new-instance p2, Lcom/bykv/vk/openvk/preload/geckox/b;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/bykv/vk/openvk/preload/geckox/b;-><init>(Lcom/bykv/vk/openvk/preload/geckox/b$a;B)V

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/geckox/c;->f:Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;

    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/geckox/a;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;

    invoke-direct {v2, v0}, Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/a;->a(Ljava/util/Map;)V

    return-void
.end method
