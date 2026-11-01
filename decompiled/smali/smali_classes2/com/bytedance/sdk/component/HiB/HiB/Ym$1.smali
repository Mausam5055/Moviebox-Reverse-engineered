.class Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/HiB/Ym;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:[B

.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/sP;

.field final synthetic TKC:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

.field final synthetic sP:Lcom/bytedance/sdk/component/HiB/TKC/vS;

.field final synthetic vS:Lcom/bytedance/sdk/component/HiB/HiB/Ym;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/HiB/Ym;Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/TKC/vS;Lcom/bytedance/sdk/component/HiB/TKC/TKC;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->vS:Lcom/bytedance/sdk/component/HiB/HiB/Ym;

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->Sj:Lcom/bytedance/sdk/component/HiB/sP;

    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->sP:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    iput-object p4, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    iput-object p5, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->EjP:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->HiB:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->Sj:Lcom/bytedance/sdk/component/HiB/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->sP:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->TKC(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TKC;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->EjP:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->HiB:[B

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
