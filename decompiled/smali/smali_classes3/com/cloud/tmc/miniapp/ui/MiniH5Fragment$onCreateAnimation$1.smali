.class public final Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onCreateAnimation$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $enter:Z

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;


# direct methods
.method public constructor <init>(ZLcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onCreateAnimation$1;->$enter:Z

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onCreateAnimation$1;->$enter:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPerEnterFlag$p(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getAppLoadResult(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$isHomepage(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPage$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$setPerEnterFlag$p(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onCreateAnimation$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPage$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
