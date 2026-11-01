.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/t;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/adapter/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/s;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/s;->b:Lcom/transsion/home/adapter/suboperate/adapter/t;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/s;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/s;->b:Lcom/transsion/home/adapter/suboperate/adapter/t;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/suboperate/adapter/t;->B1(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/adapter/t;Landroid/view/View;)V

    return-void
.end method
