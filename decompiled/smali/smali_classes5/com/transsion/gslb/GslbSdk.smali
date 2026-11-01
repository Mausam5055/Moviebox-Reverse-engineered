.class public Lcom/transsion/gslb/GslbSdk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/gslb/GslbSdk$GetDomainListener;,
        Lcom/transsion/gslb/GslbSdk$ResultListener;,
        Lcom/transsion/gslb/GslbSdk$GslbInitListener;,
        Lcom/transsion/gslb/GslbSdk$InitListener;
    }
.end annotation


# static fields
.field public static context:Landroid/content/Context;

.field public static deviceId:Ljava/lang/String;

.field public static isDebug:Z

.field public static mcc:Ljava/lang/String;

.field public static volatile worker:Lcom/transsion/gslb/Worker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/gslb/DomainManager;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDomain(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez v0, :cond_0

    sget-object p1, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GslbSdk is not initialized"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "url is empty"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/gslb/DomainManager;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "blank"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    sget-object v1, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not in init list "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDomain(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GetDomainListener;)V
    .locals 3

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez v0, :cond_1

    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GslbSdk is not initialized"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "url is empty"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const-string p0, "input url is empty"

    invoke-interface {p1, p0}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/gslb/DomainManager;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " this domain is not in init list "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    const-string p0, "this domain is not in init list"

    invoke-interface {p1, p0}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "blank"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    new-instance v1, Lcom/transsion/gslb/ListenerBean;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/transsion/gslb/ListenerBean;-><init>(ZLjava/lang/String;Lcom/transsion/gslb/GslbSdk$GetDomainListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/gslb/Worker;->addListeners(Lcom/transsion/gslb/ListenerBean;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbSuccess(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static getDomain(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$ResultListener;)V
    .locals 3

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez v0, :cond_1

    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GslbSdk is not initialized"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "url is empty"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/gslb/DomainManager;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " this domain is not in init list "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    goto :goto_0

    :cond_4
    const-string v2, "blank"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    new-instance v1, Lcom/transsion/gslb/ListenerBean;

    invoke-direct {v1, p0, p1}, Lcom/transsion/gslb/ListenerBean;-><init>(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$ResultListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/gslb/Worker;->addListeners(Lcom/transsion/gslb/ListenerBean;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbSuccess(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public static getWorker()Lcom/transsion/gslb/Worker;
    .locals 1

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V
    .locals 0

    sput-object p1, Lcom/transsion/gslb/GslbSdk;->mcc:Ljava/lang/String;

    sput-object p2, Lcom/transsion/gslb/GslbSdk;->deviceId:Ljava/lang/String;

    invoke-static {p0, p3, p4}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V
    .locals 0

    sput-object p1, Lcom/transsion/gslb/GslbSdk;->mcc:Ljava/lang/String;

    sput-object p2, Lcom/transsion/gslb/GslbSdk;->deviceId:Ljava/lang/String;

    invoke-static {p0, p3, p4}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    return-void
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    sget-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/gslb/Worker;->getInstance()Lcom/transsion/gslb/Worker;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    :cond_0
    if-eqz p1, :cond_1

    array-length p0, p1

    if-lez p0, :cond_1

    sget-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    new-instance v0, Lcom/transsion/gslb/ListenerBean;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/gslb/ListenerBean;-><init>(Z[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V

    invoke-virtual {p0, v0}, Lcom/transsion/gslb/Worker;->addListeners(Lcom/transsion/gslb/ListenerBean;)V

    goto :goto_0

    :cond_1
    const-string p0, "GslbSdk"

    const-string p1, "Init with invalid domains"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    sget-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/gslb/Worker;->getInstance()Lcom/transsion/gslb/Worker;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    :cond_0
    if-eqz p1, :cond_1

    array-length p0, p1

    if-lez p0, :cond_1

    sget-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    new-instance v0, Lcom/transsion/gslb/ListenerBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/gslb/ListenerBean;-><init>([Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    invoke-virtual {p0, v0}, Lcom/transsion/gslb/Worker;->addListeners(Lcom/transsion/gslb/ListenerBean;)V

    goto :goto_0

    :cond_1
    const-string p0, "GslbSdk"

    const-string p1, "Init with invalid domains"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isInitSuccess(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GslbSdk is not initialized"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static isTestMode()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/gslb/GslbSdk;->isDebug:Z

    return v0
.end method

.method public static reset()V
    .locals 1

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/gslb/DomainManager;->reset()V

    :cond_0
    return-void
.end method

.method public static reset(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/gslb/DomainManager;->reset(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setDebug(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils;->m()Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    sput-boolean p0, Lcom/transsion/gslb/GslbSdk;->isDebug:Z

    return-void
.end method
