.class public final synthetic Lcom/cloud/tmc/miniapp/ui/s0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/s0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/s0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->j0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    return-void
.end method
