.class Lcom/mbridge/msdk/mbnative/controller/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbnative/controller/c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/mbridge/msdk/mbnative/controller/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbnative/controller/c;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/c$c;->b:Lcom/mbridge/msdk/mbnative/controller/c;

    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/c$c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/c$c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/c$c;->b:Lcom/mbridge/msdk/mbnative/controller/c;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/mbridge/msdk/mbnative/controller/c;->a(Lcom/mbridge/msdk/mbnative/controller/c;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/c$c;->b:Lcom/mbridge/msdk/mbnative/controller/c;

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/c;->c(Lcom/mbridge/msdk/mbnative/controller/c;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/c$c;->b:Lcom/mbridge/msdk/mbnative/controller/c;

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/c;->c(Lcom/mbridge/msdk/mbnative/controller/c;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method
