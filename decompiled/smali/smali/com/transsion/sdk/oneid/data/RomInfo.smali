.class public Lcom/transsion/sdk/oneid/data/RomInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public api:Ljava/lang/String;

.field public aver:Ljava/lang/String;

.field public build_id:Ljava/lang/String;

.field public build_spv:Ljava/lang/String;

.field public buildt:Ljava/lang/String;

.field public buildv:Ljava/lang/String;

.field public fp:Ljava/lang/String;

.field public gsmv:Ljava/lang/String;

.field public osver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->aver:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->api:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->buildv:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->buildt:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->osver:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->build_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->build_spv:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->gsmv:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->fp:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->aver:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->api:Ljava/lang/String;

    :try_start_0
    const-string v0, "ro.product.build.id"

    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->buildv:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v0, "ro.system.build.date.utc"

    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->buildt:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v0, "ro.tranos.version"

    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->osver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.os_product.version"

    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->osver:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    :try_start_3
    const-string v0, "ro.system.build.id"

    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->build_id:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    const-string v0, "ro.vendor.build.security_patch"

    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->build_spv:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    const-string v0, "gsm.version.baseband"

    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->gsmv:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    const-string v0, "ro.build.fingerprint"

    invoke-static {p1, v0}, Lcom/transsion/sdk/oneid/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/RomInfo;->fp:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
