.class public final Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/InitConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;
    }
.end annotation


# static fields
.field private static TEQ:Ljava/lang/String;


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:I

.field private HiB:I

.field private Jcg:Z

.field private Sj:Ljava/lang/String;

.field private TKC:I

.field private Ym:Ljava/lang/String;

.field private sP:Z

.field private uA:Ljava/lang/String;

.field private vS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->EjP:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->HiB:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->vS:I

    return-void
.end method

.method private EjP(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->vS:I

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->TKC(I)V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->EjP(Ljava/lang/String;)V

    return-void
.end method

.method private EjP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Ym:Ljava/lang/String;

    return-void
.end method

.method private Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->TKC:I

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Sj(I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->sP(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->sP(Z)V

    return-void
.end method

.method private Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->uA:Ljava/lang/String;

    return-void
.end method

.method private Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->sP:Z

    return-void
.end method

.method private TKC(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->HiB:I

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->sP(I)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method private TKC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Dq:Ljava/lang/String;

    return-void
.end method

.method public static debugLog(Z)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/wE;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/wE;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/wE;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/wE;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/wE;

    sget-object p0, Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;->EjP:Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;

    invoke-static {p0}, Lcom/bytedance/sdk/component/Jcg/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->TKC()V

    invoke-static {}, Lw5/b;->d()V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/sU;->sP()V

    :cond_1
    return-void
.end method

.method public static getGDPRConsent()I
    .locals 2

    const-string v0, "getGdpr"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->uA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/wE;->sP()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static getPAConsent()I
    .locals 1

    const-string v0, "getPAConsent"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->uA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/wE;->HiB()I

    move-result v0

    return v0
.end method

.method private sP(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->EjP:I

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->EjP(I)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->TKC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Sj(Z)V

    return-void
.end method

.method private sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Sj:Ljava/lang/String;

    return-void
.end method

.method private sP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Jcg:Z

    invoke-static {p1}, Lt5/b;->g(Z)V

    return-void
.end method

.method public static setAppIconId(I)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/wE;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/wE;

    :cond_0
    return-void
.end method

.method public static setGDPRConsent(I)V
    .locals 2
    .param p0    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGGDPRConsentType;
        .end annotation
    .end param

    const-string v0, "setGdpr"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->uA(Ljava/lang/String;)Z

    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    :cond_0
    move p0, v0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/wE;->sP(I)Lcom/bytedance/sdk/openadsdk/core/wE;

    return-void
.end method

.method public static setPAConsent(I)V
    .locals 1
    .param p0    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGPAConsentType;
        .end annotation
    .end param

    const-string v0, "setPAConsent"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->uA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object p0

    const/4 v0, -0x2

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/wE;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/wE;

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/wE;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/wE;

    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->TEQ:Ljava/lang/String;

    return-void
.end method

.method public static setUserData(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/wE;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/wE;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAdxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Ym:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIconId()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->TKC:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->uA:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugLog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->sP:Z

    return v0
.end method

.method public getGdpr()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->EjP:I

    return v0
.end method

.method public getPA()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->HiB:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->TEQ:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Dq:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBarTheme()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->vS:I

    return v0
.end method

.method public isSupportMultiProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Jcg:Z

    return v0
.end method

.method public isUseTextureView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
