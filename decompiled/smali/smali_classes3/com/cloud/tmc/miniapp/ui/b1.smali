.class public final synthetic Lcom/cloud/tmc/miniapp/ui/b1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/b1;->a:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/b1;->b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/b1;->a:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/b1;->b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->k0(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    return-void
.end method
