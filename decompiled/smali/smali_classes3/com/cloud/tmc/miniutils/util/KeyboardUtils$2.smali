.class Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$decorViewInvisibleHeightPre:[I

.field final synthetic val$listener:Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;[ILcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$window:Landroid/view/Window;

    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$decorViewInvisibleHeightPre:[I

    iput-object p3, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$listener:Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$window:Landroid/view/Window;

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/KeyboardUtils;->b(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$decorViewInvisibleHeightPre:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$listener:Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$OnSoftInputChangedListener;->onSoftInputChanged(I)V

    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/KeyboardUtils$2;->val$decorViewInvisibleHeightPre:[I

    aput v0, v1, v2

    :cond_0
    return-void
.end method
