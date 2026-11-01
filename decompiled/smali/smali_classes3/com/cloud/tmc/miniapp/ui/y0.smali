.class public final synthetic Lcom/cloud/tmc/miniapp/ui/y0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/Page;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/y0;->a:Lcom/cloud/tmc/integration/structure/Page;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/y0;->b:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    return-void
.end method


# virtual methods
.method public final success()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/y0;->a:Lcom/cloud/tmc/integration/structure/Page;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/y0;->b:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->e0(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V

    return-void
.end method
