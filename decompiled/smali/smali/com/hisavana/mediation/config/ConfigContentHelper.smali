.class public Lcom/hisavana/mediation/config/ConfigContentHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mediation/config/ConfigContentHelper$a;
    }
.end annotation


# instance fields
.field public final a:Lbe/j;

.field public final b:Lbe/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lbe/g;->d()Lbe/g;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lbe/g;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAhaChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbe/f;->d()Lbe/f;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lbe/j;

    goto :goto_0

    :cond_0
    invoke-static {}, Lbe/e;->d()Lbe/e;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lbe/j;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/hisavana/mediation/config/ConfigContentHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/mediation/config/ConfigContentHelper;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mediation/config/ConfigContentHelper;)Lbe/j;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lbe/j;

    return-object p0
.end method

.method public static g()Lcom/hisavana/mediation/config/ConfigContentHelper;
    .locals 1

    invoke-static {}, Lcom/hisavana/mediation/config/ConfigContentHelper$a;->a()Lcom/hisavana/mediation/config/ConfigContentHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lbe/g;

    invoke-virtual {v0}, Lbe/g;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lbe/g;

    invoke-virtual {v0}, Lbe/g;->b()V

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lbe/j;

    invoke-interface {v0}, Lbe/j;->a()V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lbe/j;

    invoke-interface {v0}, Lbe/j;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigContentHelper"

    if-eqz v0, :cond_0

    const-string p1, "getConfig,codeSeatId is empty"

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lbe/g;

    invoke-virtual {v0, p1}, Lbe/g;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v3, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v4, Lcom/hisavana/mediation/config/ConfigContentHelper$1;

    invoke-direct {v4, p0}, Lcom/hisavana/mediation/config/ConfigContentHelper$1;-><init>(Lcom/hisavana/mediation/config/ConfigContentHelper;)V

    invoke-virtual {v3, v4}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAhaChannel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aha"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/hisavana/common/bean/Network;

    invoke-direct {v0}, Lcom/hisavana/common/bean/Network;-><init>()V

    new-instance v3, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-direct {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setNetworks(Ljava/util/List;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setCodeSeatId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/Network;->setCodeSeatId(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/hisavana/common/bean/Network;->setSource(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v4, "aha channel return default config"

    invoke-virtual {v0, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :cond_2
    return-object v0

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig,codeSeatId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",codeSeat is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lbe/j;

    invoke-interface {v0}, Lbe/j;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "ConfigContentHelper"

    const-string v2, "getConfig from database"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lbe/j;

    invoke-interface {v0}, Lbe/j;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lbe/g;

    invoke-virtual {v1, v0}, Lbe/g;->c(Ljava/util/List;)V

    return-void
.end method

.method public i(Ljava/util/List;)Z
    .locals 6

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "ConfigContentHelper"

    const-string v2, "insert "

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/config/ConfigContentHelper;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourZeroClock()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setCurrentHourZeroClock(J)V

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setLastShowTime(J)V

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourShowTimes()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setCurrentHourShowTimes(I)V

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayZeroClock()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setTodayZeroClock(J)V

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayShowTimes()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->setTodayShowTimes(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->b:Lbe/g;

    invoke-virtual {v0, p1}, Lbe/g;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/hisavana/mediation/config/ConfigContentHelper;->a:Lbe/j;

    invoke-interface {v0, p1}, Lbe/j;->a(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public j(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigContentHelper"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/hisavana/mediation/config/ConfigContentHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/hisavana/mediation/config/ConfigContentHelper$2;-><init>(Lcom/hisavana/mediation/config/ConfigContentHelper;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    return-void
.end method
