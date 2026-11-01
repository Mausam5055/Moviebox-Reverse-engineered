.class public final synthetic Lcom/transsion/fission/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/bean/HomePopupEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/bean/HomePopupEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/fission/n;->a:Lcom/transsion/bean/HomePopupEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/fission/n;->a:Lcom/transsion/bean/HomePopupEntity;

    invoke-static {v0}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->d(Lcom/transsion/bean/HomePopupEntity;)V

    return-void
.end method
