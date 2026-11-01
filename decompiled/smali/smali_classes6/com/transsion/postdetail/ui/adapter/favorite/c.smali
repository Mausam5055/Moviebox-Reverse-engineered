.class public final synthetic Lcom/transsion/postdetail/ui/adapter/favorite/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/adapter/favorite/b$b;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/adapter/favorite/b$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->a:Lcom/transsion/postdetail/ui/adapter/favorite/b$b;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iput-object p3, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->a:Lcom/transsion/postdetail/ui/adapter/favorite/b$b;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/postdetail/ui/adapter/favorite/b$b;->y(Lcom/transsion/postdetail/ui/adapter/favorite/b$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    return-void
.end method
