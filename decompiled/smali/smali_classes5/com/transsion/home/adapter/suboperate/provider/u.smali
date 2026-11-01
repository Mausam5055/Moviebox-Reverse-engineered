.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/u;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;

.field public final synthetic c:Lcom/transsion/home/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/u;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/u;->b:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/u;->c:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/u;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/u;->b:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/u;->c:Lcom/transsion/home/bean/OperateItem;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->a(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Lcom/transsion/home/bean/OperateItem;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
