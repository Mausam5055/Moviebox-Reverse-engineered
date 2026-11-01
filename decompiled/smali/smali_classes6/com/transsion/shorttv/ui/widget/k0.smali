.class public final synthetic Lcom/transsion/shorttv/ui/widget/k0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic b:Lcom/transsion/shorttv/bean/Subject;

.field public final synthetic c:I

.field public final synthetic d:Ljs/e;

.field public final synthetic e:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjs/e;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/k0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/k0;->b:Lcom/transsion/shorttv/bean/Subject;

    iput p3, p0, Lcom/transsion/shorttv/ui/widget/k0;->c:I

    iput-object p4, p0, Lcom/transsion/shorttv/ui/widget/k0;->d:Ljs/e;

    iput-object p5, p0, Lcom/transsion/shorttv/ui/widget/k0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/k0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/k0;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v2, p0, Lcom/transsion/shorttv/ui/widget/k0;->c:I

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/k0;->d:Ljs/e;

    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/k0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjs/e;Landroidx/appcompat/widget/AppCompatTextView;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
