.class public final synthetic Lcom/transsion/moviedetail/fragment/s1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/PostSubjectBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/s1;->a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/s1;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/s1;->a:Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/s1;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    invoke-static {v0, v1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->C0(Lcom/transsion/moviedetail/fragment/SubjectListFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    return-void
.end method
