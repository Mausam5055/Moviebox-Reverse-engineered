.class public Lcom/transsion/al/ka/AccountService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/al/ka/AccountService$a;
    }
.end annotation


# instance fields
.field mAccountAuthenticator:Lcom/transsion/al/ka/AccountService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/transsion/al/ka/AccountService;->mAccountAuthenticator:Lcom/transsion/al/ka/AccountService$a;

    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/transsion/al/ka/AccountService$a;

    invoke-direct {v0, p0, p0}, Lcom/transsion/al/ka/AccountService$a;-><init>(Lcom/transsion/al/ka/AccountService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/al/ka/AccountService;->mAccountAuthenticator:Lcom/transsion/al/ka/AccountService$a;

    return-void
.end method
