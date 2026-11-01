.class public final synthetic Lxq/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;

.field public final synthetic b:Lcom/transsion/search/bean/AccurateSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;Lcom/transsion/search/bean/AccurateSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxq/k;->a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;

    iput-object p2, p0, Lxq/k;->b:Lcom/transsion/search/bean/AccurateSubject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lxq/k;->a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;

    iget-object v1, p0, Lxq/k;->b:Lcom/transsion/search/bean/AccurateSubject;

    invoke-static {v0, v1, p1}, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;->p0(Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;Lcom/transsion/search/bean/AccurateSubject;Landroid/view/View;)V

    return-void
.end method
