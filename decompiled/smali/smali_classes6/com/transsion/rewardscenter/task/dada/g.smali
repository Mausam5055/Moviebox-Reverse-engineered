.class public final synthetic Lcom/transsion/rewardscenter/task/dada/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/dada/g;->a:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/dada/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/dada/g;->a:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/g;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView;->o(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Ljava/lang/String;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
