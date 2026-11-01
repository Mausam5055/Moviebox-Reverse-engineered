.class Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/widget/dialog/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/widget/dialog/b;

.field final synthetic b:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;Lcom/mbridge/msdk/widget/dialog/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$a;->b:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    iput-object p2, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$a;->a:Lcom/mbridge/msdk/widget/dialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$a;->a:Lcom/mbridge/msdk/widget/dialog/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mbridge/msdk/widget/dialog/b;->b()V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$a;->b:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog$a;->b:Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;

    invoke-virtual {p1}, Lcom/mbridge/msdk/widget/dialog/MBAlertDialog;->clear()V

    return-void
.end method
