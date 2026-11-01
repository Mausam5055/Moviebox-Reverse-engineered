.class public final synthetic Lcom/tn/lib/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/AdvStateView;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/AdvStateView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/view/e;->a:Lcom/tn/lib/view/AdvStateView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/e;->a:Lcom/tn/lib/view/AdvStateView;

    invoke-static {v0, p1}, Lcom/tn/lib/view/AdvStateView;->b(Lcom/tn/lib/view/AdvStateView;Landroid/view/View;)V

    return-void
.end method
