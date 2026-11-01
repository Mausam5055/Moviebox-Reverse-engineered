.class public final synthetic Lcom/transsion/home/fragment/hashtag/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/hashtag/c;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/home/fragment/hashtag/c;->b:Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/c;->b:Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;->f0(Landroid/view/View;Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;Landroid/view/View;)V

    return-void
.end method
