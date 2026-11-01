.class Lcom/cloud/tmc/integration/structure/app/BaseAppContext$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->showTabBar(Lcom/cloud/tmc/integration/structure/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/app/BaseAppContext;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/app/BaseAppContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext$1;->this$0:Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext$1;->this$0:Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getTabBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
