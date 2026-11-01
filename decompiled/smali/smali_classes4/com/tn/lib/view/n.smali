.class public final synthetic Lcom/tn/lib/view/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/MemberGuideBannerView;

.field public final synthetic b:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/MemberGuideBannerView;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/view/n;->a:Lcom/tn/lib/view/MemberGuideBannerView;

    iput-object p2, p0, Lcom/tn/lib/view/n;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/n;->a:Lcom/tn/lib/view/MemberGuideBannerView;

    iget-object v1, p0, Lcom/tn/lib/view/n;->b:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Lcom/tn/lib/view/MemberGuideBannerView;->b(Lcom/tn/lib/view/MemberGuideBannerView;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
