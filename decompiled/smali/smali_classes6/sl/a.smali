.class public final synthetic Lsl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/view/filter/expand/FilterExpandView;

.field public final synthetic b:Lcom/transsion/home/view/filter/expand/TabExpandView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/view/filter/expand/FilterExpandView;Lcom/transsion/home/view/filter/expand/TabExpandView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsl/a;->a:Lcom/transsion/home/view/filter/expand/FilterExpandView;

    iput-object p2, p0, Lsl/a;->b:Lcom/transsion/home/view/filter/expand/TabExpandView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsl/a;->a:Lcom/transsion/home/view/filter/expand/FilterExpandView;

    iget-object v1, p0, Lsl/a;->b:Lcom/transsion/home/view/filter/expand/TabExpandView;

    check-cast p1, Ltl/a;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/view/filter/expand/FilterExpandView;->d(Lcom/transsion/home/view/filter/expand/FilterExpandView;Lcom/transsion/home/view/filter/expand/TabExpandView;Ltl/a;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
