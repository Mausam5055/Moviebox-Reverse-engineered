.class public abstract Lcom/bytedance/sdk/component/Sj/HiB;
.super Lcom/bytedance/sdk/component/Sj/sP;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/component/Sj/sP<",
        "TP;TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/sP;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/component/Sj/vS;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public bridge synthetic Sj()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/component/Sj/sP;->Sj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
