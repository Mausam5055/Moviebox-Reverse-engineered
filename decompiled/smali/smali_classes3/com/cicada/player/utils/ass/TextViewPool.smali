.class public Lcom/cicada/player/utils/ass/TextViewPool;
.super Ljava/lang/Object;


# instance fields
.field private busyTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cicada/player/utils/ass/AssTextView;",
            ">;"
        }
    .end annotation
.end field

.field private idelTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cicada/player/utils/ass/AssTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/TextViewPool;->idelTextViewList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/TextViewPool;->busyTextViewList:Ljava/util/List;

    iput-object p1, p0, Lcom/cicada/player/utils/ass/TextViewPool;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public obtain()Lcom/cicada/player/utils/ass/AssTextView;
    .locals 2

    iget-object v0, p0, Lcom/cicada/player/utils/ass/TextViewPool;->idelTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cicada/player/utils/ass/AssTextView;

    iget-object v1, p0, Lcom/cicada/player/utils/ass/TextViewPool;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cicada/player/utils/ass/AssTextView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cicada/player/utils/ass/TextViewPool;->idelTextViewList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cicada/player/utils/ass/AssTextView;

    iget-object v1, p0, Lcom/cicada/player/utils/ass/TextViewPool;->idelTextViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/cicada/player/utils/ass/TextViewPool;->busyTextViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public recycle(Lcom/cicada/player/utils/ass/AssTextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/cicada/player/utils/ass/TextViewPool;->busyTextViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cicada/player/utils/ass/TextViewPool;->idelTextViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
