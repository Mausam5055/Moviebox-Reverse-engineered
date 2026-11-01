.class public Lcom/transsion/api/gateway/utils/SafeStringUtils;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcom/transsion/api/gateway/utils/SafeStringUtils; = null

.field public static final SP_APPID:Ljava/lang/String; = "appid"

.field public static final SP_CONFIG:Ljava/lang/String; = "gateway_config_v1"

.field public static final SP_LAST_CONFIG_SYNC_TIME:Ljava/lang/String; = "last_config_sync_time"

.field public static final SP_NAME:Ljava/lang/String; = "gate_way"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;
    .locals 2

    const-class v0, Lcom/transsion/api/gateway/utils/SafeStringUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/api/gateway/utils/SafeStringUtils;->INSTANCE:Lcom/transsion/api/gateway/utils/SafeStringUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/api/gateway/utils/SafeStringUtils;

    invoke-direct {v1, p0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/api/gateway/utils/SafeStringUtils;->INSTANCE:Lcom/transsion/api/gateway/utils/SafeStringUtils;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->INSTANCE:Lcom/transsion/api/gateway/utils/SafeStringUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    const-string v3, "gate_way"

    const/4 v4, 0x0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v4

    :cond_1
    :try_start_0
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p1

    :cond_2
    :try_start_1
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object v4
.end method


# virtual methods
.method public getInt(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v3, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-interface {v0, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public saveInt(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public saveLong(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
