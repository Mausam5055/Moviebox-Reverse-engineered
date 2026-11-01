.class public final synthetic Lcom/cloud/tmc/miniapp/ui/p0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/cloud/tmc/miniapp/ui/MiniFragment;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/p0;->a:I

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/p0;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/p0;->c:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/p0;->a:I

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/p0;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/p0;->c:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->f0(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    return-void
.end method
