.class Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/sP/Sj/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$1;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/Dq$Sj;)Lcom/bytedance/sdk/component/sP/Sj/Zq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$1;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/sP/Sj/Dq$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object p1

    return-object p1
.end method
