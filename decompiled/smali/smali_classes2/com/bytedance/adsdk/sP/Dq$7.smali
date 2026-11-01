.class final Lcom/bytedance/adsdk/sP/Dq$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/Dq;->Sj(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/bytedance/adsdk/sP/Fmk;
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
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Dq$7;->Sj:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/adsdk/sP/aa;
    .locals 2
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

    new-instance v0, Lcom/bytedance/adsdk/sP/aa;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Dq$7;->Sj:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/aa;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Dq$7;->Sj()Lcom/bytedance/adsdk/sP/aa;

    move-result-object v0

    return-object v0
.end method
