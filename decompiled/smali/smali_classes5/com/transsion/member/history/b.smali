.class public final synthetic Lcom/transsion/member/history/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/member/history/PointsHistoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/history/PointsHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/history/b;->a:Lcom/transsion/member/history/PointsHistoryActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/history/b;->a:Lcom/transsion/member/history/PointsHistoryActivity;

    check-cast p1, Lcom/transsion/member/bean/PointsHistoryData;

    invoke-static {v0, p1}, Lcom/transsion/member/history/PointsHistoryActivity;->F0(Lcom/transsion/member/history/PointsHistoryActivity;Lcom/transsion/member/bean/PointsHistoryData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
