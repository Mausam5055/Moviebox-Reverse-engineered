.class public Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/Zq;
.implements Lcom/bytedance/sdk/component/adexpress/sP/uA;


# instance fields
.field private final EjP:Ljava/lang/String;

.field private HiB:J

.field private final Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

.field private final TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final sP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->sP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->EjP:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->sP:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/sP;->sef()V

    return-void
.end method

.method public EjP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->Sj()V

    return-void
.end method

.method public EjP(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_sub_render2_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->EjP(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_sub_render_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->EjP(Ljava/lang/String;)V

    return-void
.end method

.method public HiB()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->sP()V

    return-void
.end method

.method public HiB(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_sub_render2_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->EjP(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_sub_render_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->EjP(Ljava/lang/String;)V

    return-void
.end method

.method public Jcg()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/sP;->Fmk()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk$2;

    const-string v1, "native_success"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v1, "ugen_render_start"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->HiB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v1, "ugen_sub_analysis_start"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->HiB(Ljava/lang/String;)V

    return-void
.end method

.method public Sj(I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->HiB:J

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_render2_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->TKC(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_render_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->TKC(Ljava/lang/String;)V

    return-void
.end method

.method public Sj(IILjava/lang/String;Z)V
    .locals 6

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const/4 v0, 0x1

    invoke-interface {p4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->Sj(Z)V

    :cond_0
    const/4 p4, 0x3

    if-ne p1, p4, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string p4, "dynamic_render2_error"

    invoke-interface {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->sP(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string p4, "dynamic_render_error"

    invoke-interface {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->sP(ILjava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->sP:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->EjP:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const-string v0, "NDR"

    move v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/Ym;->Sj(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->Sj(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->sP:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->EjP:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const-string v1, "Web"

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/Ym;->Sj(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/sef;)V
    .locals 9

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "ugen_sub_render_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->HiB(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "ugen_render_success"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->vS(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj()I

    move-result v1

    const-string v2, "ugen_render_error"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->TKC(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/sef;->sP()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->sP:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->EjP:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const-string v3, "UGen"

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/Dq/Ym;->Sj(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->Sj(Z)V

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/vS;->Sj(I)V

    return-void
.end method

.method public TEQ()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->sP()V

    return-void
.end method

.method public TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v1, "ugen_sub_render_start"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->HiB(Ljava/lang/String;)V

    return-void
.end method

.method public TKC(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_sub_analysis2_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->EjP(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_sub_analysis_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->EjP(Ljava/lang/String;)V

    return-void
.end method

.method public Ym()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->Ym()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->aa()V

    return-void
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v1, "ugen_sub_analysis_end"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->HiB(Ljava/lang/String;)V

    return-void
.end method

.method public sP(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_sub_analysis2_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->EjP(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_sub_analysis_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->EjP(Ljava/lang/String;)V

    return-void
.end method

.method public uA()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->Zq()V

    return-void
.end method

.method public vS()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/sP;->TKC()V

    return-void
.end method

.method public vS(I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_render2_success"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->Jcg(Ljava/lang/String;)V

    const-string p1, "dynamic2_render"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const-string v0, "dynamic_render_success"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/Sj;->Jcg(Ljava/lang/String;)V

    const-string p1, "dynamic_backup_native_render"

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->Sj(Z)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk$1;

    const-string v1, "dynamic_success"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method
