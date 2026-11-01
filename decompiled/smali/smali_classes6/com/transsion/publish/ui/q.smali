.class public final synthetic Lcom/transsion/publish/ui/q;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/transsion/publish/ui/FilmReviewFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/ui/q;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/publish/ui/q;->b:Lcom/transsion/publish/ui/FilmReviewFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/publish/ui/q;->b:Lcom/transsion/publish/ui/FilmReviewFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/publish/ui/FilmReviewFragment;->g0(Landroid/content/Context;Lcom/transsion/publish/ui/FilmReviewFragment;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
