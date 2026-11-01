.class public final synthetic Lcom/transsion/ninegridview/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ninegridview/NineGridViewNew;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ninegridview/NineGridViewNew;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/b;->a:Lcom/transsion/ninegridview/NineGridViewNew;

    iput p2, p0, Lcom/transsion/ninegridview/b;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ninegridview/b;->a:Lcom/transsion/ninegridview/NineGridViewNew;

    iget v1, p0, Lcom/transsion/ninegridview/b;->b:I

    invoke-static {v0, v1, p1}, Lcom/transsion/ninegridview/NineGridViewNew;->a(Lcom/transsion/ninegridview/NineGridViewNew;ILandroid/view/View;)V

    return-void
.end method
