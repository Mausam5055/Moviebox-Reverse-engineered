.class public Lcom/cloud/tmc/kernel/log/TmcLogger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;,
        Lcom/cloud/tmc/kernel/log/TmcLogger$DefaultLoggerImpl;
    }
.end annotation


# static fields
.field private static final EMPTY_TEXT:Ljava/lang/String; = ""

.field private static final LOG_PREFIX:Ljava/lang/String; = "Tmc_"

.field private static final LOG_PREFIX_LENGTH:I = 0x4

.field private static LOG_SWITCH_TAG:Ljava/lang/String; = "miniapp"

.field private static final MAX_LOG_TAG_LENGTH:I = 0x17

.field private static final TAG:Ljava/lang/String; = "TmcLogger"

.field private static isLogOpen:Z

.field public static sDefaultImpl:Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "miniapp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/cloud/tmc/kernel/log/TmcLogger;->isLogOpen:Z

    new-instance v0, Lcom/cloud/tmc/kernel/log/TmcLogger$DefaultLoggerImpl;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger$DefaultLoggerImpl;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/log/TmcLogger;->sDefaultImpl:Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/cloud/tmc/kernel/log/TmcLogger;->isLogOpen:Z

    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TmcLogger"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TmcLogger"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "TmcLogger"

    invoke-static {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static enableDebugLog(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/cloud/tmc/kernel/log/TmcLogger;->isLogOpen:Z

    :cond_0
    return-void
.end method

.method private static get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/tmc/kernel/log/TmcLogger;->sDefaultImpl:Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    :goto_0
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TmcLogger"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static makeLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->makeLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/cloud/tmc/kernel/log/TmcLogger;->LOG_PREFIX_LENGTH:I

    rsub-int/lit8 v2, v1, 0x17

    const-string v3, "Tmc_"

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v1, v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printPerformanceLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [Stage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] [Info:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] [TimeStamp:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TmcPerformance"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TmcLogger"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TmcLogger"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
