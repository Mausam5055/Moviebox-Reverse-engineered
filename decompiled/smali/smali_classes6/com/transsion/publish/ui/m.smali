.class public final synthetic Lcom/transsion/publish/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/ui/FilmReviewFragment;

.field public final synthetic b:Lcom/transsion/publish/ui/FilmReviewFragment$d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/publish/ui/FilmReviewFragment$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/ui/m;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    iput-object p2, p0, Lcom/transsion/publish/ui/m;->b:Lcom/transsion/publish/ui/FilmReviewFragment$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/m;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    iget-object v1, p0, Lcom/transsion/publish/ui/m;->b:Lcom/transsion/publish/ui/FilmReviewFragment$d;

    invoke-static {v0, v1}, Lcom/transsion/publish/ui/FilmReviewFragment;->c0(Lcom/transsion/publish/ui/FilmReviewFragment;Lcom/transsion/publish/ui/FilmReviewFragment$d;)V

    return-void
.end method
