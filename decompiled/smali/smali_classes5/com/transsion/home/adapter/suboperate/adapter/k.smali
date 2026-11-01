.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/FilterItem;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/FilterItem;Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/k;->a:Lcom/transsion/home/bean/FilterItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/k;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/k;->a:Lcom/transsion/home/bean/FilterItem;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/k;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;->B1(Lcom/transsion/home/bean/FilterItem;Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;Landroid/view/View;)V

    return-void
.end method
