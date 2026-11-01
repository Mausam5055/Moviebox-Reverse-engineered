.class public final synthetic Lcom/cloud/tmc/miniapp/ui/i1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/i1;->a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/i1;->a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->k0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    return-void
.end method
