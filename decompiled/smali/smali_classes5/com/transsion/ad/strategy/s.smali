.class public final Lcom/transsion/ad/strategy/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/strategy/s;

.field private static b:Z

.field private static c:J

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/strategy/s;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/s;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/s;->a:Lcom/transsion/ad/strategy/s;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/ad/strategy/s;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    sget-boolean v0, Lcom/transsion/ad/strategy/s;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "newUserAdShieldHour"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/ad/strategy/s;->d:I

    :cond_0
    sget v0, Lcom/transsion/ad/strategy/s;->d:I

    return v0
.end method

.method public final b()J
    .locals 4

    sget-boolean v0, Lcom/transsion/ad/strategy/s;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "userCreateTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/ad/strategy/s;->c:J

    :cond_0
    sget-wide v0, Lcom/transsion/ad/strategy/s;->c:J

    return-wide v0
.end method

.method public final c()Z
    .locals 8

    sget-boolean v0, Lcom/transsion/ad/strategy/s;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "userCreateTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/transsion/ad/strategy/s;->c:J

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "newUserAdShieldHour"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/ad/strategy/s;->d:I

    :cond_0
    sput-boolean v1, Lcom/transsion/ad/strategy/s;->b:Z

    sget v0, Lcom/transsion/ad/strategy/s;->d:I

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/transsion/ad/strategy/s;->c:J

    sub-long/2addr v2, v4

    sget v0, Lcom/transsion/ad/strategy/s;->d:I

    int-to-long v4, v0

    const/16 v0, 0xe10

    int-to-long v6, v0

    mul-long/2addr v4, v6

    const/16 v0, 0x3e8

    int-to-long v6, v0

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final d(Lcom/transsion/ad/monopoly/model/MbAdPlansBean;)V
    .locals 7

    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getUserCreateTime()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const-string v4, "userCreateTime"

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getNewUserAdShieldHour()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "newUserAdShieldHour"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/ad/strategy/s;->b:Z

    sget-object v1, Loi/a;->a:Loi/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getUserCreateTime()Ljava/lang/Long;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getNewUserAdShieldHour()Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewUserShieldStrategy --> saveNewUserShieldData() --> \u4fdd\u5b58\u65b0\u7528\u6237\u5c4f\u853d\u6570\u636e --> userCreateTime = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newUserAdShieldHour = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method
