.class Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/sP/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->sP(Ljava/util/List;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z

.field final synthetic TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

.field final synthetic sP:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$2;->Sj:Z

    iput-wide p3, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$2;->sP:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->sP(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;

    move-result-object v5

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;->sP()Ljava/util/List;

    move-result-object v6

    iget-object v3, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    iget-boolean v4, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$2;->Sj:Z

    iget-wide v7, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC$2;->sP:J

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;ZLcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method
