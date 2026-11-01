.class public final synthetic Lcom/cloud/hisavana/sdk/api/listener/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/api/listener/d;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/listener/a;->a:Lcom/cloud/hisavana/sdk/api/listener/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/listener/a;->a:Lcom/cloud/hisavana/sdk/api/listener/d;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->c(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    return-void
.end method
