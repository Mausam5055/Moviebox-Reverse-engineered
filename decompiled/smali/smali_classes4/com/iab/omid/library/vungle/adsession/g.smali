.class public final Lcom/iab/omid/library/vungle/adsession/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/net/URL;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/vungle/adsession/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iab/omid/library/vungle/adsession/g;->b:Ljava/net/URL;

    iput-object p3, p0, Lcom/iab/omid/library/vungle/adsession/g;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/g;
    .locals 1

    const-string v0, "VendorKey is null or empty"

    invoke-static {p0, v0}, Lue/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResourceURL is null"

    invoke-static {p1, v0}, Lue/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationParameters is null or empty"

    invoke-static {p2, v0}, Lue/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/vungle/adsession/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/iab/omid/library/vungle/adsession/g;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/g;->b:Ljava/net/URL;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/iab/omid/library/vungle/adsession/g;->a:Ljava/lang/String;

    const-string v2, "vendorKey"

    invoke-static {v0, v2, v1}, Lue/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/vungle/adsession/g;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceUrl"

    invoke-static {v0, v2, v1}, Lue/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/vungle/adsession/g;->c:Ljava/lang/String;

    const-string v2, "verificationParameters"

    invoke-static {v0, v2, v1}, Lue/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
