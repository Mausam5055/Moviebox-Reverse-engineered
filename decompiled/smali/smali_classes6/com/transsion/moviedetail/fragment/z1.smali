.class public final synthetic Lcom/transsion/moviedetail/fragment/z1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/z1;->a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/z1;->a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->s0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;I)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object p1

    return-object p1
.end method
