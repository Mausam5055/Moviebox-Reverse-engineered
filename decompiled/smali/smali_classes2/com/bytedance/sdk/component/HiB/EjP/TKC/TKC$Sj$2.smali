.class Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/Ym;

.field final synthetic sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;Lcom/bytedance/sdk/component/HiB/Ym;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$2;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$2;->Sj:Lcom/bytedance/sdk/component/HiB/Ym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$2;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$2;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj$2;->Sj:Lcom/bytedance/sdk/component/HiB/Ym;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    :cond_0
    return-void
.end method
