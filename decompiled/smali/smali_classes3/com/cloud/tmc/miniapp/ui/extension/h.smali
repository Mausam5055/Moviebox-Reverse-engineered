.class public final synthetic Lcom/cloud/tmc/miniapp/ui/extension/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic c:Landroid/widget/LinearLayout;

.field public final synthetic d:Landroid/widget/LinearLayout;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->c:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->d:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->d:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->e:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->b(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    return-void
.end method
