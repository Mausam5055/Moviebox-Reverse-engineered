.class public final synthetic Lcom/transsion/home/adapter/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/b;->a:Lcom/transsion/home/adapter/c;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/b;->a:Lcom/transsion/home/adapter/c;

    invoke-static {v0}, Lcom/transsion/home/adapter/c;->g(Lcom/transsion/home/adapter/c;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
