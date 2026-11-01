.class public final synthetic Lfl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/category/fragment/CategoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/category/fragment/CategoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfl/a;->a:Lcom/transsion/home/category/fragment/CategoryFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfl/a;->a:Lcom/transsion/home/category/fragment/CategoryFragment;

    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v0, p1}, Lcom/transsion/home/category/fragment/CategoryFragment;->o0(Lcom/transsion/home/category/fragment/CategoryFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
