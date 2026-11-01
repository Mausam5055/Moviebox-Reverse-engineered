.class Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/DisplayViewHelper;->clearScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$600(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->detachView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->detachView()V

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$302(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/videoview/displayView/IDisplayView;

    :cond_2
    return-void
.end method
