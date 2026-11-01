.class public Lcom/bytedance/sdk/component/HiB/EjP/sP/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/uvD;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "generate_key"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/RiZ;Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/sP/sP;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sP(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
