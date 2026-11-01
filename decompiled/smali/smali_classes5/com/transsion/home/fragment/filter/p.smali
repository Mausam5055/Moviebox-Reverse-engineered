.class public final synthetic Lcom/transsion/home/fragment/filter/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/NoNetworkBigView;

.field public final synthetic b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/NoNetworkBigView;Lcom/transsion/home/fragment/filter/UGCFilterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/p;->a:Lcom/tn/lib/view/NoNetworkBigView;

    iput-object p2, p0, Lcom/transsion/home/fragment/filter/p;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/p;->a:Lcom/tn/lib/view/NoNetworkBigView;

    iget-object v1, p0, Lcom/transsion/home/fragment/filter/p;->b:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->r0(Lcom/tn/lib/view/NoNetworkBigView;Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
