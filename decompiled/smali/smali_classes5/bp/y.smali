.class public final synthetic Lbp/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lbp/z;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;


# direct methods
.method public synthetic constructor <init>(Lbp/z;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp/y;->a:Lbp/z;

    iput-object p2, p0, Lbp/y;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbp/y;->a:Lbp/z;

    iget-object v1, p0, Lbp/y;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-static {v0, v1}, Lbp/z;->z(Lbp/z;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
