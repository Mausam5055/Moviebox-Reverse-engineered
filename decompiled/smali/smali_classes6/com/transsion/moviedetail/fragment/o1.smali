.class public final synthetic Lcom/transsion/moviedetail/fragment/o1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Cover;

.field public final synthetic b:Lcom/transsion/moviedetail/fragment/StillsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/o1;->a:Lcom/transsion/moviedetailapi/bean/Cover;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/o1;->b:Lcom/transsion/moviedetail/fragment/StillsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/o1;->a:Lcom/transsion/moviedetailapi/bean/Cover;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/o1;->b:Lcom/transsion/moviedetail/fragment/StillsFragment;

    invoke-static {v0, v1, p1}, Lcom/transsion/moviedetail/fragment/StillsFragment;->b0(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;Landroid/view/View;)V

    return-void
.end method
