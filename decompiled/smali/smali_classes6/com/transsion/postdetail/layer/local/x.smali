.class public final synthetic Lcom/transsion/postdetail/layer/local/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/layer/local/a0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/x;->a:Lcom/transsion/postdetail/layer/local/a0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/x;->a:Lcom/transsion/postdetail/layer/local/a0;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/layer/local/a0;->k0(Lcom/transsion/postdetail/layer/local/a0;Lcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
