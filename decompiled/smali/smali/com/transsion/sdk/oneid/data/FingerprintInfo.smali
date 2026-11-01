.class public Lcom/transsion/sdk/oneid/data/FingerprintInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public gsf:Ljava/lang/String;

.field public hdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds",
            "MissingPermission"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->gsf:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->hdid:Ljava/lang/String;

    :try_start_0
    const-string v1, "content://com.google.android.gsf.gservices"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "android_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->gsf:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->gsf:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-static {}, Lcom/transsion/sdk/oneid/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->hdid:Ljava/lang/String;

    return-void
.end method
