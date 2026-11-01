.class public Lcom/transsion/sdk/oneid/data/PackageInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public pkg:Ljava/lang/String;

.field public signatures:Ljava/lang/String;

.field public ssaid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->pkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->signatures:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->pkg:Ljava/lang/String;

    const-string v1, "SHA-256"

    invoke-static {p1, v1}, Lcom/transsion/sdk/oneid/b;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->signatures:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "android_id"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/PackageInfo;->ssaid:Ljava/lang/String;

    :cond_0
    return-void
.end method
