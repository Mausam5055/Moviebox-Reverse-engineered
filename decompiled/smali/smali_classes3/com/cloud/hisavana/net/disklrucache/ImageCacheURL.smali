.class public Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/nio/charset/Charset;


# instance fields
.field private volatile a:[B

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->c:Ljava/lang/String;

    const-string v0, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->b:Ljava/lang/String;

    const-string p1, "url must be can not null or empty"

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->a:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->b:Ljava/lang/String;

    sget-object v1, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->a:[B

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->a:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    invoke-virtual {p0}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
