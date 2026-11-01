.class public final synthetic Lcom/transsion/postdetail/ui/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/activity/d;->a:Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/activity/d;->a:Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->F0(Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
