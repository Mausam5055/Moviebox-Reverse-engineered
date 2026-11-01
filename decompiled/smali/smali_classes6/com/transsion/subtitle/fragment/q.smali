.class public final synthetic Lcom/transsion/subtitle/fragment/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/DefaultView;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/DefaultView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/q;->a:Lcom/tn/lib/view/DefaultView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/q;->a:Lcom/tn/lib/view/DefaultView;

    invoke-static {v0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->q0(Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V

    return-void
.end method
