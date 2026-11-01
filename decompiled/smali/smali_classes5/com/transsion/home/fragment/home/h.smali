.class public final synthetic Lcom/transsion/home/fragment/home/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Landroid/widget/HorizontalScrollView;

.field public final synthetic b:Lcom/transsion/home/fragment/home/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/HorizontalScrollView;Lcom/transsion/home/fragment/home/HomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/h;->a:Landroid/widget/HorizontalScrollView;

    iput-object p2, p0, Lcom/transsion/home/fragment/home/h;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/home/h;->a:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/transsion/home/fragment/home/h;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/home/HomeFragment;->d0(Landroid/widget/HorizontalScrollView;Lcom/transsion/home/fragment/home/HomeFragment;)V

    return-void
.end method
