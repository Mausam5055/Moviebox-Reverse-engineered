.class public final synthetic Lcom/transsion/shorttv/ui/adapter/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/adapter/d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/adapter/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/c;->a:Lcom/transsion/shorttv/ui/adapter/d;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/c;->a:Lcom/transsion/shorttv/ui/adapter/d;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/adapter/d;->Q1(Lcom/transsion/shorttv/ui/adapter/d;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
