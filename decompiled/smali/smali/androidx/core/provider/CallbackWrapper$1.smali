.class Landroidx/core/provider/CallbackWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/CallbackWrapper;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/provider/CallbackWrapper;

.field final synthetic val$callback:Landroidx/core/provider/k$c;

.field final synthetic val$typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroidx/core/provider/CallbackWrapper;Landroidx/core/provider/k$c;Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/provider/CallbackWrapper$1;->this$0:Landroidx/core/provider/CallbackWrapper;

    iput-object p2, p0, Landroidx/core/provider/CallbackWrapper$1;->val$callback:Landroidx/core/provider/k$c;

    iput-object p3, p0, Landroidx/core/provider/CallbackWrapper$1;->val$typeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/core/provider/CallbackWrapper$1;->val$callback:Landroidx/core/provider/k$c;

    iget-object v1, p0, Landroidx/core/provider/CallbackWrapper$1;->val$typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroidx/core/provider/k$c;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
