.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/q;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/adapter/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->b:Lcom/transsion/home/adapter/suboperate/adapter/q;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/p;->b:Lcom/transsion/home/adapter/suboperate/adapter/q;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/suboperate/adapter/q;->C1(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/adapter/q;Landroid/view/View;)V

    return-void
.end method
