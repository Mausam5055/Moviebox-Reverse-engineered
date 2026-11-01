.class public final synthetic Ldl/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ldl/d;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;


# direct methods
.method public synthetic constructor <init>(Ldl/d;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldl/c;->a:Ldl/d;

    iput-object p2, p0, Ldl/c;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ldl/c;->a:Ldl/d;

    iget-object v1, p0, Ldl/c;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    invoke-static {v0, v1, p1}, Ldl/d;->y(Ldl/d;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Landroid/view/View;)V

    return-void
.end method
