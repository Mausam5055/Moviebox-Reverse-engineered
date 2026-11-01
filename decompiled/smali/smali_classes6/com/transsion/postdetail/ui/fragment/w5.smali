.class public final synthetic Lcom/transsion/postdetail/ui/fragment/w5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

.field public final synthetic b:Lcom/tn/lib/view/DefaultView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lcom/tn/lib/view/DefaultView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/w5;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/w5;->b:Lcom/tn/lib/view/DefaultView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/w5;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/w5;->b:Lcom/tn/lib/view/DefaultView;

    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->f0(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V

    return-void
.end method
