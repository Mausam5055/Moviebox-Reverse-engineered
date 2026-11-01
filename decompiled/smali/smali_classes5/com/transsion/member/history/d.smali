.class public final synthetic Lcom/transsion/member/history/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/member/history/PointsHistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/history/PointsHistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/history/d;->a:Lcom/transsion/member/history/PointsHistoryFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/history/d;->a:Lcom/transsion/member/history/PointsHistoryFragment;

    check-cast p1, Lcom/transsion/member/bean/PointsHistoryData;

    invoke-static {v0, p1}, Lcom/transsion/member/history/PointsHistoryFragment;->O0(Lcom/transsion/member/history/PointsHistoryFragment;Lcom/transsion/member/bean/PointsHistoryData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
