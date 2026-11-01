.class Lcom/cloud/hisavana/sdk/common/tranmeasure/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->d(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V

    :goto_0
    return-void
.end method
