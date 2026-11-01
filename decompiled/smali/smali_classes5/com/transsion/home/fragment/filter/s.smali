.class public final synthetic Lcom/transsion/home/fragment/filter/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/s;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/filter/s;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/s;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/filter/s;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->B0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
