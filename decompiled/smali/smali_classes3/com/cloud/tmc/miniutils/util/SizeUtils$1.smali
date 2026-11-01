.class Lcom/cloud/tmc/miniutils/util/SizeUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/SizeUtils;->forceGetViewSize(Landroid/view/View;Lcom/cloud/tmc/miniutils/util/SizeUtils$OnGetSizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/cloud/tmc/miniutils/util/SizeUtils$OnGetSizeListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/SizeUtils$OnGetSizeListener;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/SizeUtils$1;->val$listener:Lcom/cloud/tmc/miniutils/util/SizeUtils$OnGetSizeListener;

    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/SizeUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/SizeUtils$1;->val$listener:Lcom/cloud/tmc/miniutils/util/SizeUtils$OnGetSizeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/SizeUtils$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/miniutils/util/SizeUtils$OnGetSizeListener;->onGetSize(Landroid/view/View;)V

    :cond_0
    return-void
.end method
