.class public final synthetic Lcom/cloud/tmc/miniapp/ui/q1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentManager;

.field public final synthetic b:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/q1;->a:Landroidx/fragment/app/FragmentManager;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/q1;->b:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/q1;->a:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/q1;->b:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->a(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    return-void
.end method
