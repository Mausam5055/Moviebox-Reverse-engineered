.class public final synthetic Lcom/cloud/hisavana/sdk/j1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/k1;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/k1;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/j1;->a:Lcom/cloud/hisavana/sdk/k1;

    iput p2, p0, Lcom/cloud/hisavana/sdk/j1;->b:I

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/j1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/j1;->a:Lcom/cloud/hisavana/sdk/k1;

    iget v1, p0, Lcom/cloud/hisavana/sdk/j1;->b:I

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/j1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/k1;->a(Lcom/cloud/hisavana/sdk/k1;ILjava/lang/String;)V

    return-void
.end method
