.class public final synthetic Lcom/transsnet/login/country/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/country/LoginSelectCountryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/country/a;->a:Lcom/transsnet/login/country/LoginSelectCountryActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/country/a;->a:Lcom/transsnet/login/country/LoginSelectCountryActivity;

    invoke-static {v0}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->e0(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V

    return-void
.end method
