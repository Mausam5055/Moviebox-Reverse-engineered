.class public final synthetic Lan/h;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/moviedetail/activity/MoviePosterActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/moviedetail/activity/MoviePosterActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lan/h;->a:Ljava/util/List;

    iput-object p2, p0, Lan/h;->b:Lcom/transsion/moviedetail/activity/MoviePosterActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lan/h;->a:Ljava/util/List;

    iget-object v1, p0, Lan/h;->b:Lcom/transsion/moviedetail/activity/MoviePosterActivity;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/moviedetail/activity/MoviePosterActivity;->k0(Ljava/util/List;Lcom/transsion/moviedetail/activity/MoviePosterActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
