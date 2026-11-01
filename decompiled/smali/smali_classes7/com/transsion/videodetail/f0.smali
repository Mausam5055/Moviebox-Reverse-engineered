.class public final synthetic Lcom/transsion/videodetail/f0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/SubjectDetailHeaderFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/SubjectDetailHeaderFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/f0;->a:Lcom/transsion/videodetail/SubjectDetailHeaderFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/f0;->a:Lcom/transsion/videodetail/SubjectDetailHeaderFragment;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/SubjectDetailHeaderFragment;->f0(Lcom/transsion/videodetail/SubjectDetailHeaderFragment;Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
