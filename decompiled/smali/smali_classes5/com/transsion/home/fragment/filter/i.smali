.class public final synthetic Lcom/transsion/home/fragment/filter/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/filter/FilterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/filter/FilterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/i;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/i;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    check-cast p1, Lcom/transsion/home/bean/RefreshBaseDto;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/filter/FilterFragment;->t0(Lcom/transsion/home/fragment/filter/FilterFragment;Lcom/transsion/home/bean/RefreshBaseDto;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
