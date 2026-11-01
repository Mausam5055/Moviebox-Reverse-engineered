.class Lcom/cloud/hisavana/sdk/u3$b;
.super Lcom/cloud/hisavana/sdk/common/tranmeasure/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/u3;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u3$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/u3$b;->c(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TranNative"

    const-string v2, "onViewImpressed: start impression report"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u3$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/u3;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/u3;->F(Lcom/cloud/hisavana/sdk/u3;)Lcom/cloud/hisavana/sdk/f;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/u3;->F(Lcom/cloud/hisavana/sdk/u3;)Lcom/cloud/hisavana/sdk/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/f;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    :cond_0
    return-void
.end method
