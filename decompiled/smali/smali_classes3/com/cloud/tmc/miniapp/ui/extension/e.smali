.class public final synthetic Lcom/cloud/tmc/miniapp/ui/extension/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->c:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->b:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/extension/e;->c:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    return-void
.end method
