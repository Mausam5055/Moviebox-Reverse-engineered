.class public Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/sP/Sj/Dq$Sj;


# instance fields
.field Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/Dq;",
            ">;"
        }
    .end annotation
.end field

.field TKC:I

.field sP:Lcom/bytedance/sdk/component/sP/Sj/Fmk;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/Dq;",
            ">;",
            "Lcom/bytedance/sdk/component/sP/Sj/Fmk;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->TKC:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->Sj:Ljava/util/List;

    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/Zq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    iget p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->TKC:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->TKC:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->Sj:Ljava/util/List;

    iget v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/TKC;->TKC:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/sP/Sj/Dq;

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/sP/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Dq$Sj;)Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object p1

    return-object p1
.end method
