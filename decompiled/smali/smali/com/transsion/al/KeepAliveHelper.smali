.class public Lcom/transsion/al/KeepAliveHelper;
.super Ljava/lang/Object;


# static fields
.field public static final AL_ERROR_COUNT:I = 0x2

.field public static final AL_ERROR_TIME_MIN:I = 0x3

.field public static final KEY_AL_CUR_START_COUNT:Ljava/lang/String; = "KEY_AL_CUR_START_COUNT"

.field public static final KEY_AL_LAST_START_TIME:Ljava/lang/String; = "KEY_AL_LAST_START_TIME"

.field public static final KEY_CLOSE_ALIVE_CURRENT:Ljava/lang/String; = "key_close_alive_current"

.field public static final KEY_IS_ALIVE_PROCESS_START:Ljava/lang/String; = "KEY_IS_ALIVE_PROCESS_START"

.field public static final KEY_IS_MAIN_PROCESS_START:Ljava/lang/String; = "KEY_IS_MAIN_PROCESS_START"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "keyAliveOff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/al/ka/KaManager;->init(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
