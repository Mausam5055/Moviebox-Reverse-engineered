.class public final synthetic Lcom/transsion/moviedetail/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/view/HeaderExtensionFragment;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/Staff;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/view/HeaderExtensionFragment;Lcom/transsion/moviedetailapi/bean/Staff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/view/c;->a:Lcom/transsion/moviedetail/view/HeaderExtensionFragment;

    iput-object p2, p0, Lcom/transsion/moviedetail/view/c;->b:Lcom/transsion/moviedetailapi/bean/Staff;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetail/view/c;->a:Lcom/transsion/moviedetail/view/HeaderExtensionFragment;

    iget-object v1, p0, Lcom/transsion/moviedetail/view/c;->b:Lcom/transsion/moviedetailapi/bean/Staff;

    invoke-static {v0, v1, p1}, Lcom/transsion/moviedetail/view/HeaderExtensionFragment;->p0(Lcom/transsion/moviedetail/view/HeaderExtensionFragment;Lcom/transsion/moviedetailapi/bean/Staff;Landroid/view/View;)V

    return-void
.end method
