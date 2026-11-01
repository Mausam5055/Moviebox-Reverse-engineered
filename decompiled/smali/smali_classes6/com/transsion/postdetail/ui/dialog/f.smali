.class public final synthetic Lcom/transsion/postdetail/ui/dialog/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/dialog/f;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/dialog/f;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/f;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/dialog/f;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/dialog/h;->h(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
