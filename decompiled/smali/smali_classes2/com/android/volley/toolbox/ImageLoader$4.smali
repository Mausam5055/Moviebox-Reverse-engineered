.class Lcom/android/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/h;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/toolbox/h;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/volley/toolbox/h$a;->a(Lcom/android/volley/toolbox/h$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/volley/toolbox/h$b;->a(Lcom/android/volley/toolbox/h$b;)Lcom/android/volley/toolbox/h$c;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    invoke-static {v0}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/toolbox/h;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {v0, v0}, Lcom/android/volley/toolbox/h;->b(Lcom/android/volley/toolbox/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
