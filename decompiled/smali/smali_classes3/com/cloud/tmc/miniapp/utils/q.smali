.class public final synthetic Lcom/cloud/tmc/miniapp/utils/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/q;->a:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/q;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/q;->a:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/q;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/utils/OooOOOO;->OooO00o(Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;Ljava/lang/String;)V

    return-void
.end method
