.class public final synthetic Lcom/transsion/home/adapter/suboperate/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/suboperate/SubTabAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/suboperate/SubTabAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/a;->a:Lcom/transsion/home/adapter/suboperate/SubTabAdapter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/a;->a:Lcom/transsion/home/adapter/suboperate/SubTabAdapter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    invoke-static {v0, p1, p2}, Lcom/transsion/home/adapter/suboperate/SubTabAdapter;->Q1(Lcom/transsion/home/adapter/suboperate/SubTabAdapter;Ljava/lang/String;Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
