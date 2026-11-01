.class public final synthetic Lcom/transsion/moviedetail/fragment/u0;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/b;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/adapter/p;

.field public final synthetic b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/adapter/p;Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/u0;->a:Lcom/transsion/moviedetail/adapter/p;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/u0;->b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    iput-object p3, p0, Lcom/transsion/moviedetail/fragment/u0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/u0;->a:Lcom/transsion/moviedetail/adapter/p;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/u0;->b:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/u0;->c:Ljava/util/List;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->k0(Lcom/transsion/moviedetail/adapter/p;Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
