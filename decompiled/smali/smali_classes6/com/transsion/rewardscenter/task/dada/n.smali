.class public final synthetic Lcom/transsion/rewardscenter/task/dada/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/dada/n;->a:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/dada/n;->a:Lcom/transsion/rewardscenter/task/dada/DadaActivateView;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/transsion/rewardscenter/task/dada/DadaActivateView$handleActionClick$2;->a(Lcom/transsion/rewardscenter/task/dada/DadaActivateView;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
