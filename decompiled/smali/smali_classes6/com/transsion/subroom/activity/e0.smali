.class public final synthetic Lcom/transsion/subroom/activity/e0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/activity/SecondFloorHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/e0;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/activity/e0;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    invoke-static {v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->c(Lcom/transsion/subroom/activity/SecondFloorHelper;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
