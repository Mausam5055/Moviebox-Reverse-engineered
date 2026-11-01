.class public final synthetic Lcom/cloud/tmc/miniapp/ui/extension/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;ZIILcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->c:Lcom/cloud/tmc/integration/structure/App;

    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->d:Z

    iput p5, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->e:I

    iput p6, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->f:I

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->g:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->b:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->c:Lcom/cloud/tmc/integration/structure/App;

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->d:Z

    iget v4, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->e:I

    iget v5, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->f:I

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/extension/d;->g:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->b(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;ZIILcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    return-void
.end method
