.class public final synthetic Lcom/cloud/hisavana/sdk/m3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/e;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/m3;->a:Lcom/cloud/hisavana/sdk/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m3;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/e;->a(Lcom/cloud/hisavana/sdk/e;)V

    return-void
.end method
