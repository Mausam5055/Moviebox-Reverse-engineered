.class Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

.field final synthetic d:Lcom/cloud/hisavana/sdk/common/tranmeasure/e;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/e;Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/e;Ljava/lang/Object;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b(Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    return-void
.end method
