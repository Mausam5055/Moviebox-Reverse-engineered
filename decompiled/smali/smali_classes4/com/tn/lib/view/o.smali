.class public final synthetic Lcom/tn/lib/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/MemberGuideBannerView;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/MemberGuideBannerView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/view/o;->a:Lcom/tn/lib/view/MemberGuideBannerView;

    iput p2, p0, Lcom/tn/lib/view/o;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/o;->a:Lcom/tn/lib/view/MemberGuideBannerView;

    iget v1, p0, Lcom/tn/lib/view/o;->b:F

    invoke-static {v0, v1}, Lcom/tn/lib/view/MemberGuideBannerView;->c(Lcom/tn/lib/view/MemberGuideBannerView;F)V

    return-void
.end method
