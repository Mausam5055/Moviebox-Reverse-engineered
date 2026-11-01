.class public Lcom/transsion/sdk/oneid/data/EnvironInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lang:Ljava/lang/String;

.field public tz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string p1, "GMT+00:00"

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->lang:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;

    const-string v1, "GMT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->lang:Ljava/lang/String;

    return-void
.end method
