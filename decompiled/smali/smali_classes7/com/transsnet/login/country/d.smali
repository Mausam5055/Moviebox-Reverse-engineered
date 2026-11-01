.class public final synthetic Lcom/transsnet/login/country/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/country/LoginSelectCountryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/country/d;->a:Lcom/transsnet/login/country/LoginSelectCountryActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/country/d;->a:Lcom/transsnet/login/country/LoginSelectCountryActivity;

    check-cast p1, Lxy/a;

    invoke-static {v0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->g0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Lxy/a;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
