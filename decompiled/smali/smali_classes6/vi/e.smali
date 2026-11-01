.class public final synthetic Lvi/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvi/e;->a:Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;

    iput-object p2, p0, Lvi/e;->b:Landroid/view/View;

    iput-object p3, p0, Lvi/e;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvi/e;->a:Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;

    iget-object v1, p0, Lvi/e;->b:Landroid/view/View;

    iget-object v2, p0, Lvi/e;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->d(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;Landroid/view/View;Landroid/widget/ImageView;)V

    return-void
.end method
