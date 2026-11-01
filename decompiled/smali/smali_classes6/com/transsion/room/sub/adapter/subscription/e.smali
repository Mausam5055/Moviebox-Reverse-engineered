.class public final synthetic Lcom/transsion/room/sub/adapter/subscription/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/room/sub/adapter/subscription/c$b;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/e;->a:Lcom/transsion/room/sub/adapter/subscription/c$b;

    iput-object p2, p0, Lcom/transsion/room/sub/adapter/subscription/e;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/sub/adapter/subscription/e;->a:Lcom/transsion/room/sub/adapter/subscription/c$b;

    iget-object v1, p0, Lcom/transsion/room/sub/adapter/subscription/e;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-static {v0, v1, p1}, Lcom/transsion/room/sub/adapter/subscription/c$b;->y(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/View;)V

    return-void
.end method
