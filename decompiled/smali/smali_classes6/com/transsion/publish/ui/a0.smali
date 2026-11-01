.class public final synthetic Lcom/transsion/publish/ui/a0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/ui/FilmReviewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/ui/a0;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/ui/a0;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/publish/ui/FilmReviewFragment;->o0(Lcom/transsion/publish/ui/FilmReviewFragment;Landroid/widget/RatingBar;FZ)V

    return-void
.end method
