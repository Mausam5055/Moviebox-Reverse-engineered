.class public final synthetic Lmi/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmi/c;->a:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, p1}, Lmi/f;->h(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/pslink/AppInstalledBean;

    move-result-object p1

    return-object p1
.end method
