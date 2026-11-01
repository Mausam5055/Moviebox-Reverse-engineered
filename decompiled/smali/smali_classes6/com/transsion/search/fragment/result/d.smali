.class public final synthetic Lcom/transsion/search/fragment/result/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/result/SearchResultFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/baseui/widget/ResourcesRequestView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/result/SearchResultFragment;Ljava/lang/String;Lcom/transsion/baseui/widget/ResourcesRequestView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/result/d;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

    iput-object p2, p0, Lcom/transsion/search/fragment/result/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/search/fragment/result/d;->c:Lcom/transsion/baseui/widget/ResourcesRequestView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/search/fragment/result/d;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

    iget-object v1, p0, Lcom/transsion/search/fragment/result/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/search/fragment/result/d;->c:Lcom/transsion/baseui/widget/ResourcesRequestView;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/search/fragment/result/SearchResultFragment;->e0(Lcom/transsion/search/fragment/result/SearchResultFragment;Ljava/lang/String;Lcom/transsion/baseui/widget/ResourcesRequestView;Landroid/view/View;)V

    return-void
.end method
