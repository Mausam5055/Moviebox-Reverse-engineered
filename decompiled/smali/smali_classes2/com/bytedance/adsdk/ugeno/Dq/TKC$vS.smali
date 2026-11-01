.class Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/Dq/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "vS"
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/Dq/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/Dq/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;->Sj:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;->Sj:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$vS;->Sj:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->sP()V

    return-void
.end method
