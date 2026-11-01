.class final Lcom/bytedance/adsdk/sP/Dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/bytedance/adsdk/sP/aa<",
        "Lcom/bytedance/adsdk/sP/Jcg;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Landroid/content/Context;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Dq$1;->Sj:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/Dq$1;->sP:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/Dq$1;->TKC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/adsdk/sP/aa;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/aa<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Dq$1;->Sj:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Landroid/content/Context;)Lcom/bytedance/adsdk/sP/EjP/Dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Dq$1;->Sj:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Dq$1;->sP:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Dq$1;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/sP/EjP/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Dq$1;->TKC:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/aa;->Sj()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/adsdk/sP/TKC/HiB;->Sj()Lcom/bytedance/adsdk/sP/TKC/HiB;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Dq$1;->TKC:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/aa;->Sj()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/HiB;->Sj(Ljava/lang/String;Lcom/bytedance/adsdk/sP/Jcg;)V

    :cond_0
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Dq$1;->Sj()Lcom/bytedance/adsdk/sP/aa;

    move-result-object v0

    return-object v0
.end method
