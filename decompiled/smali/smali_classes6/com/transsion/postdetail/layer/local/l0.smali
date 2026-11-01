.class public final synthetic Lcom/transsion/postdetail/layer/local/l0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/layer/local/u0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/l0;->a:Lcom/transsion/postdetail/layer/local/u0;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/l0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/postdetail/layer/local/l0;->c:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/l0;->a:Lcom/transsion/postdetail/layer/local/u0;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/l0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/l0;->c:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/postdetail/layer/local/u0;->u3(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Landroid/view/View;)V

    return-void
.end method
