.class public final synthetic Lcom/transsion/moviedetail/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/d;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/d;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/adapter/ForYouEduAdapter;->B1(Lcom/transsion/moviedetailapi/bean/Subject;Landroid/view/View;)V

    return-void
.end method
