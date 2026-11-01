.class public final synthetic Lcom/transsion/subroom/activity/f0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/activity/SecondFloorHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/f0;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/subroom/activity/f0;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    invoke-static {v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->e(Lcom/transsion/subroom/activity/SecondFloorHelper;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
