.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    const-string v3, "ssp"

    const-string v4, "----------------> \u66dd\u5149\u56de\u8c03"

    invoke-virtual {v2, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
