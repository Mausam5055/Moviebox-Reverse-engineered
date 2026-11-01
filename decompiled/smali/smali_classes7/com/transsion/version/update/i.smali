.class public final synthetic Lcom/transsion/version/update/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/version/update/RemoteVersionInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/version/update/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/version/update/i;->b:Lcom/transsion/version/update/RemoteVersionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/version/update/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/version/update/i;->b:Lcom/transsion/version/update/RemoteVersionInfo;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/version/update/UpdateVersionRequest;->b(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
