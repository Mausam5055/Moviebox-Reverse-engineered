.class Lcom/bigkoo/pickerview/view/BasePickerView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/BasePickerView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/BasePickerView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lp5/a;

    iget-object v1, v1, Lp5/a;->A:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->b(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->d(Lcom/bigkoo/pickerview/view/BasePickerView;Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->c(Lcom/bigkoo/pickerview/view/BasePickerView;Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->a(Lcom/bigkoo/pickerview/view/BasePickerView;)Lq5/b;

    return-void
.end method
