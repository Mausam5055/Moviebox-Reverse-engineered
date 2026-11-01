.class Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$a;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$a;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-virtual {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->dismiss()V

    return-void
.end method
