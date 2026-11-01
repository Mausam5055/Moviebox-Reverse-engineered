.class public final synthetic Lcom/transsion/postdetail/ui/view/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/n;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/n;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/n;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->o(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
