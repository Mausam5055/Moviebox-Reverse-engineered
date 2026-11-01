.class public Lcom/bytedance/sdk/openadsdk/utils/sef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/oem/Sj;


# static fields
.field private static final Sj:Lcom/bytedance/sdk/openadsdk/utils/sef;

.field private static TKC:Z

.field private static sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/sef;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/sef;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/sef;->Sj:Lcom/bytedance/sdk/openadsdk/utils/sef;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic EjP()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/sef;->TKC:Z

    return v0
.end method

.method public static Sj()V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/sef;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/sef;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Sj()V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/sef;->TKC:Z

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eNi()Lcom/bytedance/sdk/openadsdk/core/model/kF;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/kF;->Jcg()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sput-object p0, Lcom/bytedance/sdk/openadsdk/utils/sef;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/sef;->Sj:Lcom/bytedance/sdk/openadsdk/utils/sef;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Sj(Lcom/bytedance/sdk/openadsdk/oem/Sj;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic TKC()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/sef;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object v0
.end method

.method public static sP()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/sef;->TKC:Z

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/sef;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->TKC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/sef$1;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/sef$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/sef;I)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
