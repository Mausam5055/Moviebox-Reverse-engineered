.class public final synthetic Lxq/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/values/SearchValuesFragment;

.field public final synthetic b:Lcom/transsion/baseui/widget/ResourcesRequestView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/values/SearchValuesFragment;Lcom/transsion/baseui/widget/ResourcesRequestView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxq/a;->a:Lcom/transsion/search/fragment/values/SearchValuesFragment;

    iput-object p2, p0, Lxq/a;->b:Lcom/transsion/baseui/widget/ResourcesRequestView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lxq/a;->a:Lcom/transsion/search/fragment/values/SearchValuesFragment;

    iget-object v1, p0, Lxq/a;->b:Lcom/transsion/baseui/widget/ResourcesRequestView;

    invoke-static {v0, v1, p1}, Lcom/transsion/search/fragment/values/SearchValuesFragment;->j0(Lcom/transsion/search/fragment/values/SearchValuesFragment;Lcom/transsion/baseui/widget/ResourcesRequestView;Landroid/view/View;)V

    return-void
.end method
