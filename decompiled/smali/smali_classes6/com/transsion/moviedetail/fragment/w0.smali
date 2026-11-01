.class public final synthetic Lcom/transsion/moviedetail/fragment/w0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

.field public final synthetic b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/w0;->a:Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/w0;->b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    iput-object p3, p0, Lcom/transsion/moviedetail/fragment/w0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/w0;->a:Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/w0;->b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/w0;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->B0(Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
