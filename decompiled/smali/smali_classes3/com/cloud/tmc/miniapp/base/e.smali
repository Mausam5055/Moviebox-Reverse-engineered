.class public final synthetic Lcom/cloud/tmc/miniapp/base/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/widget/CapsuleView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/e;->a:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/base/e;->b:Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/e;->a:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/e;->b:Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->W(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    return-void
.end method
