.class public final synthetic Lmi/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lmi/f;

.field public final synthetic b:Lcom/transsion/ad/db/pslink/AppInstalledBean;


# direct methods
.method public synthetic constructor <init>(Lmi/f;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi/b;->a:Lmi/f;

    iput-object p2, p0, Lmi/b;->b:Lcom/transsion/ad/db/pslink/AppInstalledBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmi/b;->a:Lmi/f;

    iget-object v1, p0, Lmi/b;->b:Lcom/transsion/ad/db/pslink/AppInstalledBean;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lmi/f;->f(Lmi/f;Lcom/transsion/ad/db/pslink/AppInstalledBean;Lz3/b;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
