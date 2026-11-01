.class public final synthetic Lcom/transsion/subroom/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/activity/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/i;->a:Lcom/transsion/subroom/activity/MainActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/activity/i;->a:Lcom/transsion/subroom/activity/MainActivity;

    check-cast p1, Lcom/transsion/home/bean/AppTab;

    invoke-static {v0, p1}, Lcom/transsion/subroom/activity/MainActivity;->p0(Lcom/transsion/subroom/activity/MainActivity;Lcom/transsion/home/bean/AppTab;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
