.class public final synthetic Lsl/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;

.field public final synthetic b:Lcom/transsion/home/view/filter/expand/UGCTabExpandView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;Lcom/transsion/home/view/filter/expand/UGCTabExpandView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsl/f;->a:Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;

    iput-object p2, p0, Lsl/f;->b:Lcom/transsion/home/view/filter/expand/UGCTabExpandView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsl/f;->a:Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;

    iget-object v1, p0, Lsl/f;->b:Lcom/transsion/home/view/filter/expand/UGCTabExpandView;

    check-cast p1, Lcom/transsion/home/bean/ugc/UGCFilterItem;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;->f(Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;Lcom/transsion/home/view/filter/expand/UGCTabExpandView;Lcom/transsion/home/bean/ugc/UGCFilterItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
