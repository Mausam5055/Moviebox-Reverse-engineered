.class public final synthetic Lcom/transsion/subtitle/fragment/a;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/fragment/AudioSelectListFragment;

.field public final synthetic b:Lcom/transsion/subtitle/adapter/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/a;->a:Lcom/transsion/subtitle/fragment/AudioSelectListFragment;

    iput-object p2, p0, Lcom/transsion/subtitle/fragment/a;->b:Lcom/transsion/subtitle/adapter/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/a;->a:Lcom/transsion/subtitle/fragment/AudioSelectListFragment;

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/a;->b:Lcom/transsion/subtitle/adapter/a;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->f0(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
