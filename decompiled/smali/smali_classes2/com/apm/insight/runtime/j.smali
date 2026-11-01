.class public final Lcom/apm/insight/runtime/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/apm/insight/MonitorCrash; = null

.field private static b:I = -0x1

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Lcom/apm/insight/MonitorCrash;
    .locals 7

    sget-object v0, Lcom/apm/insight/runtime/j;->a:Lcom/apm/insight/MonitorCrash;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v1

    const-string v5, "2008-20250701130429"

    const-string v6, "com.apm.insight"

    const-string v2, "239017"

    const-wide/16 v3, 0x4e79

    invoke-static/range {v1 .. v6}, Lcom/apm/insight/MonitorCrash;->initSDK(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    move-result-object v0

    sput-object v0, Lcom/apm/insight/runtime/j;->a:Lcom/apm/insight/MonitorCrash;

    invoke-virtual {v0}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v0, v1}, Lcom/apm/insight/MonitorCrash$Config;->setChannel(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    :cond_0
    sget-object v0, Lcom/apm/insight/runtime/j;->a:Lcom/apm/insight/MonitorCrash;

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/apm/insight/runtime/j;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    sput v0, Lcom/apm/insight/runtime/j;->b:I

    :cond_1
    sget v0, Lcom/apm/insight/runtime/j;->c:I

    sget v1, Lcom/apm/insight/runtime/j;->b:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/apm/insight/runtime/j;->c:I

    invoke-static {}, Lcom/apm/insight/runtime/j;->a()Lcom/apm/insight/MonitorCrash;

    move-result-object v0

    const-string v1, "INNER"

    invoke-virtual {v0, p1, v1, p0}, Lcom/apm/insight/MonitorCrash;->reportCustomErr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
