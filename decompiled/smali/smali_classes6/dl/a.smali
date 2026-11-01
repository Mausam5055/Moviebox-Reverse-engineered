.class public final synthetic Ldl/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ldl/b;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Ldl/b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldl/a;->a:Ldl/b;

    iput-object p2, p0, Ldl/a;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iput-object p3, p0, Ldl/a;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ldl/a;->a:Ldl/b;

    iget-object v1, p0, Ldl/a;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iget-object v2, p0, Ldl/a;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, v2, p1}, Ldl/b;->y(Ldl/b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
