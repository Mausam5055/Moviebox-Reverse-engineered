.class public final synthetic Lcom/transsion/shorttv/ui/widget/u0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/transsion/shorttv/bean/Subject;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/appcompat/widget/AppCompatTextView;

.field public final synthetic f:Ljs/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Ljs/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/u0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/u0;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/u0;->c:Lcom/transsion/shorttv/bean/Subject;

    iput p4, p0, Lcom/transsion/shorttv/ui/widget/u0;->d:I

    iput-object p5, p0, Lcom/transsion/shorttv/ui/widget/u0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p6, p0, Lcom/transsion/shorttv/ui/widget/u0;->f:Ljs/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/u0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/u0;->b:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/u0;->c:Lcom/transsion/shorttv/bean/Subject;

    iget v3, p0, Lcom/transsion/shorttv/ui/widget/u0;->d:I

    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/u0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, p0, Lcom/transsion/shorttv/ui/widget/u0;->f:Ljs/e;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    move-object v8, p3

    check-cast v8, Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->v(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Ljs/e;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
