.class public final synthetic Lcom/cloud/hisavana/sdk/b4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/i1;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b4;->a:Lcom/cloud/hisavana/sdk/i1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b4;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->G(Lcom/cloud/hisavana/sdk/i1;)V

    return-void
.end method
