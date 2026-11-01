.class public final synthetic Lcom/tn/lib/view/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/MemberGuideBannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/MemberGuideBannerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/view/m;->a:Lcom/tn/lib/view/MemberGuideBannerView;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/m;->a:Lcom/tn/lib/view/MemberGuideBannerView;

    invoke-static {v0}, Lcom/tn/lib/view/MemberGuideBannerView;->a(Lcom/tn/lib/view/MemberGuideBannerView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
