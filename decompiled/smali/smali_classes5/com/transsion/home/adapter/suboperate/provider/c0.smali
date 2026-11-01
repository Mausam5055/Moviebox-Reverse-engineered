.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/c0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/b0$b;

.field public final synthetic c:Lcom/transsion/home/adapter/suboperate/provider/b0$a;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/b0$b;Lcom/transsion/home/adapter/suboperate/provider/b0$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/c0;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/c0;->b:Lcom/transsion/home/adapter/suboperate/provider/b0$b;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/c0;->c:Lcom/transsion/home/adapter/suboperate/provider/b0$a;

    iput p4, p0, Lcom/transsion/home/adapter/suboperate/provider/c0;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/c0;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/c0;->b:Lcom/transsion/home/adapter/suboperate/provider/b0$b;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/c0;->c:Lcom/transsion/home/adapter/suboperate/provider/b0$a;

    iget v3, p0, Lcom/transsion/home/adapter/suboperate/provider/c0;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/suboperate/provider/b0$b;->B1(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/b0$b;Lcom/transsion/home/adapter/suboperate/provider/b0$a;ILandroid/view/View;)V

    return-void
.end method
