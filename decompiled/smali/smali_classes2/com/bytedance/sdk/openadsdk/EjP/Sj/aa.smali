.class Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;


# static fields
.field public static final Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Jcg()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/Zq/sP;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/sP;Z)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/Zq/sP;Z)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa$1;

    const-string v1, "uploadLogEvent"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/sP;Z)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method
