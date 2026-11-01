.class public final synthetic Lbp/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic b:Lbp/q;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp/o;->a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iput-object p2, p0, Lbp/o;->b:Lbp/q;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbp/o;->a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v1, p0, Lbp/o;->b:Lbp/q;

    invoke-static {v0, v1}, Lbp/q;->y(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lbp/q;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
