.class public final synthetic Lcom/transsion/shorttv/ui/fragment/download/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

.field public final synthetic b:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final synthetic c:Lcom/transsion/shorttv/bean/Subject;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/shorttv/bean/Subject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/p;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/p;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/fragment/download/p;->c:Lcom/transsion/shorttv/bean/Subject;

    iput p4, p0, Lcom/transsion/shorttv/ui/fragment/download/p;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/p;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/download/p;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/fragment/download/p;->c:Lcom/transsion/shorttv/bean/Subject;

    iget v3, p0, Lcom/transsion/shorttv/ui/fragment/download/p;->d:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->i0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/shorttv/bean/Subject;IZ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
