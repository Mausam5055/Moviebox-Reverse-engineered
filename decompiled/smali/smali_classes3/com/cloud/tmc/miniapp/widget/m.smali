.class public final synthetic Lcom/cloud/tmc/miniapp/widget/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/widget/OfflineAppView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/m;->a:Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/m;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/m;->a:Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/m;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/OfflineAppView;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
