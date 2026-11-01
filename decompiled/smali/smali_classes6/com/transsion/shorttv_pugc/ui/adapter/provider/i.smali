.class public final synthetic Lcom/transsion/shorttv_pugc/ui/adapter/provider/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/i;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/i;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/i;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/i;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->A(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;)V

    return-void
.end method
