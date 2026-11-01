.class public Lcom/hisavana/mediation/ad/ViewBinder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    }
.end annotation


# instance fields
.field public final actionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public actionView:Landroid/view/View;

.field public final adBadgeView:I

.field public final adChoicesView:I

.field public final adCloseView:I

.field public final adDisclaimerView:I

.field public final adStoreMarkView:I

.field public final callToActionId:I

.field public final descriptionId:I

.field public final domainId:I

.field public final downloadsId:I

.field public final feedbackId:I

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field public final iconId:I

.field public layout:Landroid/view/View;

.field public final layoutId:I

.field public final likesId:I

.field public final mediaId:I

.field public final mode:I

.field public final priceId:I

.field public final ratingId:I

.field public final sourceSizeId:I

.field public final sponsoredId:I

.field public final titleId:I


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)V
    .locals 1
    .param p1    # Lcom/hisavana/mediation/ad/ViewBinder$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->a(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->layoutId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->b(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->layout:Landroid/view/View;

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->m(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->titleId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->p(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->callToActionId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->q(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->iconId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->r(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->mediaId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->s(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->descriptionId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->t(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->sponsoredId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->u(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->ratingId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->v(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->likesId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->c(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->priceId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->d(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->downloadsId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->e(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->actionIds:Ljava/util/List;

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->f(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->mode:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->g(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->adDisclaimerView:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->h(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->adBadgeView:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->i(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->adChoicesView:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->j(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->adCloseView:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->k(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->adStoreMarkView:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->l(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->domainId:I

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->n(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->feedbackId:I

    iget-object v0, p1, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->actionView:Landroid/view/View;

    iput-object v0, p0, Lcom/hisavana/mediation/ad/ViewBinder;->actionView:Landroid/view/View;

    invoke-static {p1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->o(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I

    move-result p1

    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder;->sourceSizeId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hisavana/mediation/ad/ViewBinder$Builder;Lcom/hisavana/mediation/ad/ViewBinder$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hisavana/mediation/ad/ViewBinder;-><init>(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)V

    return-void
.end method
