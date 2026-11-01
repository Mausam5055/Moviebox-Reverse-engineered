.class public final synthetic Lcom/transsion/postdetail/ui/adapter/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/adapter/h;

.field public final synthetic b:I

.field public final synthetic c:Lso/x;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/adapter/h;ILso/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/g;->a:Lcom/transsion/postdetail/ui/adapter/h;

    iput p2, p0, Lcom/transsion/postdetail/ui/adapter/g;->b:I

    iput-object p3, p0, Lcom/transsion/postdetail/ui/adapter/g;->c:Lso/x;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/g;->a:Lcom/transsion/postdetail/ui/adapter/h;

    iget v1, p0, Lcom/transsion/postdetail/ui/adapter/g;->b:I

    iget-object v2, p0, Lcom/transsion/postdetail/ui/adapter/g;->c:Lso/x;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/postdetail/ui/adapter/h;->g(Lcom/transsion/postdetail/ui/adapter/h;ILso/x;Landroid/view/View;)V

    return-void
.end method
