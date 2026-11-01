.class public Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;
.super Ljava/lang/Object;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;

.field private final sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;->sP:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;

    return-object v0
.end method

.method public sP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;->sP:Ljava/util/List;

    return-object v0
.end method
