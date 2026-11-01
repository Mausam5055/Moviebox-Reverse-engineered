.class public Lcom/bytedance/sdk/openadsdk/uA/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/uvD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/HiB/uvD<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final Sj:J

.field private final TKC:Lcom/bytedance/sdk/component/HiB/uvD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/HiB/uvD<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/HiB/uvD<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->Sj:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->TKC:Lcom/bytedance/sdk/component/HiB/uvD;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->sP:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->sP()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/bytedance/sdk/openadsdk/uA/sP$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/uA/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/uA/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    :cond_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/uA/sP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->sP:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/uA/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 11
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->TKC:Lcom/bytedance/sdk/component/HiB/uvD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->Sj:J

    sub-long v6, v0, v2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/uA/sP$4;

    move-object v4, v0

    move-object v5, p0

    move v8, p1

    move-object v9, p3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/uA/sP$4;-><init>(Lcom/bytedance/sdk/openadsdk/uA/sP;JILjava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "load_image_error"

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->sP()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/uA/sP$5;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/uA/sP$5;-><init>(Lcom/bytedance/sdk/openadsdk/uA/sP;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/HiB/Ym<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->TKC:Lcom/bytedance/sdk/component/HiB/uvD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/uA/sP;->Sj:J

    sub-long v6, v0, v2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->Jcg()I

    move-result v0

    div-int/lit16 v8, v0, 0x400

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->vS()Z

    move-result v9

    new-instance p1, Lcom/bytedance/sdk/openadsdk/uA/sP$2;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/uA/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/uA/sP;JII)V

    const-string v0, "load_image_success"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->sP()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/uA/sP$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/uA/sP$3;-><init>(Lcom/bytedance/sdk/openadsdk/uA/sP;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    :cond_1
    return-void
.end method
