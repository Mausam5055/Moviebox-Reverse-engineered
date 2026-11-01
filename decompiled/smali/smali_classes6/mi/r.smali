.class public final synthetic Lmi/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lmi/t;

.field public final synthetic b:Lcom/transsion/ad/db/pslink/PsLinkAdPlan;


# direct methods
.method public synthetic constructor <init>(Lmi/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi/r;->a:Lmi/t;

    iput-object p2, p0, Lmi/r;->b:Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmi/r;->a:Lmi/t;

    iget-object v1, p0, Lmi/r;->b:Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lmi/t;->k(Lmi/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
