.class public final synthetic Lqn/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ninegridview/video/NineGridVideoView;

.field public final synthetic b:Lcom/transsion/ninegridview/video/NineGridItemView;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ninegridview/video/NineGridVideoView;Lcom/transsion/ninegridview/video/NineGridItemView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqn/c;->a:Lcom/transsion/ninegridview/video/NineGridVideoView;

    iput-object p2, p0, Lqn/c;->b:Lcom/transsion/ninegridview/video/NineGridItemView;

    iput p3, p0, Lqn/c;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lqn/c;->a:Lcom/transsion/ninegridview/video/NineGridVideoView;

    iget-object v1, p0, Lqn/c;->b:Lcom/transsion/ninegridview/video/NineGridItemView;

    iget v2, p0, Lqn/c;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/ninegridview/video/NineGridVideoView;->a(Lcom/transsion/ninegridview/video/NineGridVideoView;Lcom/transsion/ninegridview/video/NineGridItemView;ILandroid/view/View;)V

    return-void
.end method
