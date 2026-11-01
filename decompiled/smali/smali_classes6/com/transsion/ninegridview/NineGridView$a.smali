.class Lcom/transsion/ninegridview/NineGridView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/NineGridView;->b(I)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/transsion/ninegridview/NineGridView;


# direct methods
.method constructor <init>(Lcom/transsion/ninegridview/NineGridView;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridView$a;->b:Lcom/transsion/ninegridview/NineGridView;

    iput p2, p0, Lcom/transsion/ninegridview/NineGridView$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridView$a;->b:Lcom/transsion/ninegridview/NineGridView;

    invoke-static {p1}, Lcom/transsion/ninegridview/NineGridView;->a(Lcom/transsion/ninegridview/NineGridView;)Lcom/transsion/ninegridview/NineGridViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridView$a;->b:Lcom/transsion/ninegridview/NineGridView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ninegridview/NineGridView$a;->b:Lcom/transsion/ninegridview/NineGridView;

    iget v2, p0, Lcom/transsion/ninegridview/NineGridView$a;->a:I

    invoke-static {v1}, Lcom/transsion/ninegridview/NineGridView;->a(Lcom/transsion/ninegridview/NineGridView;)Lcom/transsion/ninegridview/NineGridViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/ninegridview/NineGridViewAdapter;->getImageInfo()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/ninegridview/NineGridViewAdapter;->onImageItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/NineGridView;ILjava/util/List;)V

    return-void
.end method
