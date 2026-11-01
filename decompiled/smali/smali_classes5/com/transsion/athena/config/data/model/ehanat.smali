.class public Lcom/transsion/athena/config/data/model/ehanat;
.super Ljava/lang/Object;


# static fields
.field private static A:Ljava/lang/String; = ""

.field private static B:Z = false

.field public static C:Z = false

.field public static D:Z = false

.field public static E:Z = false

.field public static F:Z = false

.field public static G:Z = true

.field public static H:Z = true

.field public static I:Z = true

.field public static J:Z = true

.field public static K:Z = false

.field private static L:Lorg/json/JSONObject; = null

.field private static M:Lorg/json/JSONObject; = null

.field private static N:Lorg/json/JSONObject; = null

.field private static O:Lorg/json/JSONObject; = null

.field private static P:Lorg/json/JSONObject; = null

.field private static final Q:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static R:Z = false

.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field public static h:Ljava/lang/String; = null

.field public static i:Ljava/lang/String; = null

.field public static j:Ljava/lang/String; = null

.field public static k:Ljava/lang/String; = null

.field public static l:Ljava/lang/String; = null

.field public static m:[B = null

.field public static n:[B = null

.field public static o:[B = null

.field private static p:Z = false

.field private static q:Ljava/lang/String; = "online"

.field private static r:J = 0x7530L

.field private static s:Ljava/lang/String; = ""

.field private static t:Ljava/lang/String; = ""

.field private static u:Z = true

.field private static v:Z = true

.field private static w:Z = false

.field private static x:I = 0xa00000

.field private static y:I

.field private static z:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->L:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->M:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->N:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->O:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->P:Lorg/json/JSONObject;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->Q:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->R:Z

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->Q:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/ehanat;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3c5549ad

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x18415

    if-eq v1, v2, :cond_1

    const v2, 0x364492

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_5

    if-eqz p0, :cond_4

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->d:Ljava/lang/String;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->e:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->c:Ljava/lang/String;

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->a:Ljava/lang/String;

    :goto_2
    :try_start_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v1

    const-string v2, "debug.athena.test_mode"

    invoke-static {v1, v2, v3}, Lcom/transsion/athena/config/data/model/anehat;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p0, :cond_8

    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->b:Ljava/lang/String;

    :goto_3
    move-object v0, p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->w:Z

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->Q:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(J)V
    .locals 3

    const-wide/16 v0, 0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    :cond_0
    sput-wide p0, Lcom/transsion/athena/config/data/model/ehanat;->r:J

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->M:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->s:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static a(SLjava/lang/String;)V
    .locals 0

    sput-short p0, Lcom/transsion/athena/config/data/model/ehanat;->z:S

    sput-object p1, Lcom/transsion/athena/config/data/model/ehanat;->A:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    const/16 v2, 0x7d0

    if-le p0, v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "custom param is too long,limit is 2000 bytes(now is %d bytes)"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    return v0

    :cond_0
    return v1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)V
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    sput p0, Lcom/transsion/athena/config/data/model/ehanat;->y:I

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->P:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/athena/config/data/model/ehanat;->v:Z

    return-void
.end method

.method public static c()S
    .locals 1

    sget-short v0, Lcom/transsion/athena/config/data/model/ehanat;->z:S

    return v0
.end method

.method public static c(I)V
    .locals 1

    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_0

    sput v0, Lcom/transsion/athena/config/data/model/ehanat;->x:I

    :cond_0
    sput p0, Lcom/transsion/athena/config/data/model/ehanat;->x:I

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "athena_ea"

    const-string v1, "athena_def"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "d"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->a:Ljava/lang/String;

    const-string p0, "tu"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->b:Ljava/lang/String;

    const-string p0, "tc"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->c:Ljava/lang/String;

    const-string p0, "ou"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->d:Ljava/lang/String;

    const-string p0, "oc"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->e:Ljava/lang/String;

    const-string p0, "c"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "v6"

    const-string v4, "v7"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->f:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "v2"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->g:Ljava/lang/String;

    const-string p0, "u"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;

    const-string v4, "v3"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->i:Ljava/lang/String;

    const-string p0, "fc"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->j:Ljava/lang/String;

    const-string p0, "fd"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->k:Ljava/lang/String;

    const-string p0, "fe"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->l:Ljava/lang/String;

    const-string p0, "w"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->n:[B

    const-string p0, "iv"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->o:[B

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lk4/a;->a(Landroid/content/Context;)Lk4/a;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1}, Lk4/a;->e(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lk4/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lk4/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->m:[B

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->n:[B

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->m:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lk4/a;->b(Ljava/lang/String;I)V

    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->n:[B

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->m:[B

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->O:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/athena/config/data/model/ehanat;->p:Z

    return-void
.end method

.method public static d()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->M:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->t:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-class v0, Lcom/transsion/athena/config/data/model/ehanat;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->L:Lorg/json/JSONObject;

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static d(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable isEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    sput-boolean p0, Lcom/transsion/athena/config/data/model/ehanat;->u:Z

    return-void
.end method

.method public static e()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->P:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->N:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static e(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/athena/config/data/model/ehanat;->B:Z

    return-void
.end method

.method public static f()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->O:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static f(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "test"

    goto :goto_0

    :cond_0
    const-string p0, "online"

    :goto_0
    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->q:Ljava/lang/String;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized h()Lorg/json/JSONObject;
    .locals 2

    const-class v0, Lcom/transsion/athena/config/data/model/ehanat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->L:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()I
    .locals 1

    sget v0, Lcom/transsion/athena/config/data/model/ehanat;->y:I

    return v0
.end method

.method public static k()I
    .locals 1

    sget v0, Lcom/transsion/athena/config/data/model/ehanat;->x:I

    return v0
.end method

.method public static l()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->N:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static n()J
    .locals 2

    sget-wide v0, Lcom/transsion/athena/config/data/model/ehanat;->r:J

    return-wide v0
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->v:Z

    return v0
.end method

.method public static q()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->p:Z

    return v0
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->u:Z

    return v0
.end method

.method public static s()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->B:Z

    return v0
.end method

.method public static t()Z
    .locals 2

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->q:Ljava/lang/String;

    const-string v1, "online"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->w:Z

    return v0
.end method

.method public static v()Z
    .locals 2

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->q:Ljava/lang/String;

    const-string v1, "test"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
