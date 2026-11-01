.class public final synthetic Lcom/transsion/shorttv/ui/fragment/download/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/transsion/shorttv/bean/Subject;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/appcompat/widget/LinearLayoutCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/LinearLayoutCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->c:Lcom/transsion/shorttv/bean/Subject;

    iput p4, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->d:I

    iput-object p5, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->b:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->c:Lcom/transsion/shorttv/bean/Subject;

    iget v3, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->d:I

    iget-object v4, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    move-object v7, p3

    check-cast v7, Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->q0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/LinearLayoutCompat;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
