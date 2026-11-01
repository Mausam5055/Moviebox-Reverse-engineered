.class public Lcom/hisavana/common/utils/MediaLogUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "Hisavana_Log"

.field private static isInitLogAble:Z

.field private static isInitLogError:Z

.field private static isLogAble:Z

.field private static isLogError:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/hisavana/common/utils/MediaLogUtil;->isLogAble()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hisavana/common/utils/MediaLogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/hisavana/common/utils/MediaLogUtil;->isLogError()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hisavana/common/utils/MediaLogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hisavana_Log-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/hisavana/common/utils/MediaLogUtil;->isLogAble()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hisavana/common/utils/MediaLogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private static isLogAble()Z
    .locals 2

    sget-boolean v0, Lcom/hisavana/common/utils/MediaLogUtil;->isInitLogAble:Z

    if-nez v0, :cond_0

    const-string v0, "Hisavana_Log"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/hisavana/common/utils/MediaLogUtil;->isLogAble:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisavana/common/utils/MediaLogUtil;->isInitLogAble:Z

    :cond_0
    sget-boolean v0, Lcom/hisavana/common/utils/MediaLogUtil;->isLogAble:Z

    return v0
.end method

.method private static isLogError()Z
    .locals 2

    sget-boolean v0, Lcom/hisavana/common/utils/MediaLogUtil;->isInitLogError:Z

    if-nez v0, :cond_0

    const-string v0, "Hisavana_Log"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/hisavana/common/utils/MediaLogUtil;->isLogError:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisavana/common/utils/MediaLogUtil;->isInitLogError:Z

    :cond_0
    sget-boolean v0, Lcom/hisavana/common/utils/MediaLogUtil;->isLogError:Z

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/hisavana/common/utils/MediaLogUtil;->isLogAble()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hisavana/common/utils/MediaLogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
