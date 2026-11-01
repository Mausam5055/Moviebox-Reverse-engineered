.class final Lcom/bytedance/adsdk/sP/Dq$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/Dq;->Sj(Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Fmk;
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
.field final synthetic Sj:Ljava/io/InputStream;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Dq$6;->Sj:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/Dq$6;->sP:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Dq$6;->Sj:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Dq$6;->sP:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/adsdk/sP/Dq;->sP(Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Dq$6;->Sj()Lcom/bytedance/adsdk/sP/aa;

    move-result-object v0

    return-object v0
.end method
