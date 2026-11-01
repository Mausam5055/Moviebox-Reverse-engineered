.class public final synthetic Lsl/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/view/filter/expand/UGCTabExpandView;

.field public final synthetic b:Lcom/transsion/home/bean/ugc/UGCFilterItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/view/filter/expand/UGCTabExpandView;Lcom/transsion/home/bean/ugc/UGCFilterItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsl/j;->a:Lcom/transsion/home/view/filter/expand/UGCTabExpandView;

    iput-object p2, p0, Lsl/j;->b:Lcom/transsion/home/bean/ugc/UGCFilterItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lsl/j;->a:Lcom/transsion/home/view/filter/expand/UGCTabExpandView;

    iget-object v1, p0, Lsl/j;->b:Lcom/transsion/home/bean/ugc/UGCFilterItem;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/view/filter/expand/UGCTabExpandView;->a(Lcom/transsion/home/view/filter/expand/UGCTabExpandView;Lcom/transsion/home/bean/ugc/UGCFilterItem;Landroid/view/View;)V

    return-void
.end method
