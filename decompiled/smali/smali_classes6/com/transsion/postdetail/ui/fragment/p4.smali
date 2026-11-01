.class public final synthetic Lcom/transsion/postdetail/ui/fragment/p4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

.field public final synthetic d:Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/p4;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/p4;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/postdetail/ui/fragment/p4;->c:Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    iput-object p4, p0, Lcom/transsion/postdetail/ui/fragment/p4;->d:Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    iput-wide p5, p0, Lcom/transsion/postdetail/ui/fragment/p4;->e:J

    iput-object p7, p0, Lcom/transsion/postdetail/ui/fragment/p4;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/p4;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/p4;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/p4;->c:Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/p4;->d:Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    iget-wide v4, p0, Lcom/transsion/postdetail/ui/fragment/p4;->e:J

    iget-object v6, p0, Lcom/transsion/postdetail/ui/fragment/p4;->f:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;->E0(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;JLjava/lang/String;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
