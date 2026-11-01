.class public final synthetic Lcom/transsion/postdetail/ui/fragment/b5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/b5;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/b5;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;->C0(Lcom/transsion/postdetail/ui/fragment/RoomPostNewestFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
