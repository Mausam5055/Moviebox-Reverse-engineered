.class public final synthetic Lcom/transsion/home/fragment/filter/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/filter/FilterFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/filter/FilterFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/m;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/filter/m;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/m;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/filter/m;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/filter/FilterFragment;->s0(Lcom/transsion/home/fragment/filter/FilterFragment;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
