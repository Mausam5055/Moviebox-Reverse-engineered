.class public final synthetic Lcom/transsion/shorttv_pugc/ui/widget/y;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/p;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->a:Lcom/transsion/shorttv_pugc/ui/adapter/p;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->c:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->a:Lcom/transsion/shorttv_pugc/ui/adapter/p;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/y;->c:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->p(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
