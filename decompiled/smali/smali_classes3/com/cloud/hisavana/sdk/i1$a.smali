.class Lcom/cloud/hisavana/sdk/i1$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/i1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/i1;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1$a;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TranSplash"

    const-string v2, "closeAdRunnable all time is end"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$a;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->B0()V

    return-void
.end method
