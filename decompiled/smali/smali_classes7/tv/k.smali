.class public final synthetic Ltv/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ltv/n;


# direct methods
.method public synthetic constructor <init>(Ltv/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/k;->a:Ltv/n;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltv/k;->a:Ltv/n;

    check-cast p1, Leu/a;

    invoke-static {v0, p1}, Ltv/n;->a(Ltv/n;Leu/a;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
